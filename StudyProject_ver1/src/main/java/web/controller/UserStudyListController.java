package web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import changeCodeToName.ChangeCodeToName;
import spring.biz.location.service.LocationService;
import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.subcategory.vo.SubCategoryVO;
import spring.biz.user.service.UserService;
import spring.biz.user.vo.UserVO;

@Controller
public class UserStudyListController {
	@Autowired
	UserService userService;
	
	@Autowired
	StudyRoomService studyRoomService;
	
	@Autowired
	SubCategoryService subCategoryService;
	@Autowired
	LocationService locationService;
	
	
	@RequestMapping("/mypage/applicationListBystudyno.do")
	public ModelAndView viewApplicationListBystudyno(HttpServletRequest request , HttpSession session
			,@RequestParam("studyno")int studyno) {
		System.out.println("viewApplicationListBystudyno");
		ModelAndView mav= new ModelAndView();
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		
		List<StudyRoomVO> applyStudyList = studyRoomService.viewApplicationList(vo.getUserid(),studyno,0);
		List<StudyRoomVO> studyMemberList = studyRoomService.viewApplicationList(vo.getUserid(),studyno,1);
		for(StudyRoomVO srv : applyStudyList) {
			 //srv.setSubjectcode2(subCategoryService.getSubCategory(srv.getSubjectcode()).
			 //getSubjectname());
				 ChangeCodeToName cctn = new ChangeCodeToName();
				 SubCategoryVO scv = subCategoryService.getSubCategory2(srv.getSubjectcode());
				 srv.setSubjectcode2(scv.getSubjectname());
				 //cctn.changeLocationCodeToName(srv);
				 String loc1 = locationService.getLocation(srv.getLocationcode()).getLoc1();
				 String loc2 = locationService.getLocation(srv.getLocationcode()).getLoc2();
				 String loc = loc1 +" "+ loc2;
				 srv.setLocationcode2(loc);
				 
				 cctn.changeStateCodeToName(srv);
				 //System.out.println(srv.toString());//
				}
		 for(StudyRoomVO srv : studyMemberList) {
			 //srv.setSubjectcode2(subCategoryService.getSubCategory(srv.getSubjectcode()).
			 //getSubjectname());
				 ChangeCodeToName cctn = new ChangeCodeToName();
				 SubCategoryVO scv = subCategoryService.getSubCategory2(srv.getSubjectcode());
				 srv.setSubjectcode2(scv.getSubjectname());
				 //cctn.changeLocationCodeToName(srv);
				 String loc1 = locationService.getLocation(srv.getLocationcode()).getLoc1();
				 String loc2 = locationService.getLocation(srv.getLocationcode()).getLoc2();
				 String loc = loc1 +" "+ loc2;
				 srv.setLocationcode2(loc);
				 
				 cctn.changeStateCodeToName(srv);
				 //System.out.println(srv.toString());//
				}
		
		mav.addObject("studyMemberList",studyMemberList);
		mav.addObject("applyStudyList",applyStudyList);
		mav.setViewName("mypage/mypage_appliedlist");
		return mav;
	}
	
	
	
	@RequestMapping("/mypage/applicationList.do")
	public ModelAndView viewApplicationList(HttpServletRequest request , HttpSession session) {
		System.out.println("viewApplicationList");
		ModelAndView mav= new ModelAndView();
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		
		List<StudyRoomVO> applyStudyList = studyRoomService.viewApplicationList(vo.getUserid());
		
		for(StudyRoomVO srv : applyStudyList) {
			 //srv.setSubjectcode2(subCategoryService.getSubCategory(srv.getSubjectcode()).
			 //getSubjectname());
				 ChangeCodeToName cctn = new ChangeCodeToName();
				 SubCategoryVO scv = subCategoryService.getSubCategory2(srv.getSubjectcode());
				 srv.setSubjectcode2(scv.getSubjectname());
				 //cctn.changeLocationCodeToName(srv);
				 String loc1 = locationService.getLocation(srv.getLocationcode()).getLoc1();
				 String loc2 = locationService.getLocation(srv.getLocationcode()).getLoc2();
				 String loc = loc1 +" "+ loc2;
				 srv.setLocationcode2(loc);
				 
				 cctn.changeStateCodeToName(srv);
				 //System.out.println(srv.toString());//
				}
		
		
		
		mav.addObject("applyStudyList",applyStudyList);
		mav.setViewName("mypage/mypage_appliedlist");
		return mav;
	}
	
	
}
