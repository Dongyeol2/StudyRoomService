package web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import changeCodeToName.ChangeCodeToName;
import spring.biz.location.service.LocationService;
import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.subcategory.vo.SubCategoryVO;
import spring.biz.user.service.UserService;

@Controller
public class SearchController {

	@Autowired
	UserService service;
	
	@Autowired
	StudyRoomService studyRoomService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	LocationService locationService;
	
	@RequestMapping("/search.do")
	public ModelAndView search(String subcategory,String location1,String location2) {
		System.out.println("search~~~~method");
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("search");
		System.out.println(subcategory+" , " + location1+" , " + location2);
		
		
		
		int subcategorycode;// = Integer.parseInt(subcategory);
		//System.out.println(subcategorycode);
		long locationcode;// = Long.parseLong(location2);
		//System.out.println(locationcode);
		
		
		System.out.println("---------------------------------");
		List<StudyRoomVO> studyrooms;
		if(location2 == null || location2.equals("default")) { 
			System.out.println("only subject");
			subcategorycode = Integer.parseInt(subcategory);
			studyrooms = studyRoomService.getSubcategoryList(subcategorycode);
			
		} else if(location2 != null &&  subcategory == null || subcategory.equals("default")) {
			String distinguish = location2.substring(3, 4);
			//System.out.println(distinguish);
			if(distinguish.equals("0")) { //only loc1
				
			} else { // loc1 and loc2
				location2 = location2.substring(0, 9) + "1";
			}
			locationcode= Long.parseLong(location2);
			studyrooms = studyRoomService.searchLocGetStudyRoom(locationcode);
			
		} else {
			String distinguish = location2.substring(3, 4);
			//System.out.println(distinguish);
			if(distinguish.equals("0")) { //only loc1
				
			} else { // loc1 and loc2
				location2 = location2.substring(0, 9) + "1";
			}
			subcategorycode = Integer.parseInt(subcategory);
			locationcode= Long.parseLong(location2);
			studyrooms = studyRoomService.searchSubjectLocGetStudyRoom(subcategorycode, locationcode);
		}
		
		
		for(StudyRoomVO srv :studyrooms) {
			ChangeCodeToName cctn = new ChangeCodeToName();
			 SubCategoryVO scv = subCategoryService.getSubCategory2(srv.getSubjectcode());
			 srv.setSubjectcode2(scv.getSubjectname());
			 //cctn.changeLocationCodeToName(srv);
			 String loc1 = locationService.getLocation(srv.getLocationcode()).getLoc1();
			 String loc2 = locationService.getLocation(srv.getLocationcode()).getLoc2();
			 String loc = loc1 +" "+ loc2;
			 srv.setLocationcode2(loc);
			 
			 cctn.changeStateCodeToName(srv);
		}
		mav.addObject("studyrooms",studyrooms);
		//mav.addObject("studyrooms",studyRoomService.searchSubjectLocGetStudyRoom(subcategorycode, locationcode));
		//mav.setViewName("${pageContext.request.contextPath}/search");
		mav.setViewName("search");
	
		
		return mav;
	}
	
}
