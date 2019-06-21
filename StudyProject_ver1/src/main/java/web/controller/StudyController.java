package web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;

@Controller
public class StudyController {
	

	@Autowired
	StudyRoomService service;
	
	@RequestMapping(value = "/write.do",method = RequestMethod.GET)
	public String addStudyRoom() {
		return "studyroom/studyroom_write";
	}
	
	@RequestMapping(value = "/write.do",method = RequestMethod.POST)
	public String addStudyRoomProc(@ModelAttribute("studyroom") StudyRoomVO studyroom , 
			                  HttpServletRequest request,
			                  BindingResult errors) {
		
		System.out.println(studyroom);  
		
		int row = 0 ;
		row = service.addStudyRoom(studyroom);
		return "studyroom/studyroom_write";
		
	}
	
	@RequestMapping("/subjectlist.do")
	public ModelAndView subjectcatory(@RequestParam("subjectcode") int subjectcode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("rooms", service.getSubcategoryList(subjectcode));
		mav.setViewName("studyroom/studyroom_subject");
		return mav;
	}

}
