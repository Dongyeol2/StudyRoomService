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
import spring.biz.user.vo.UserVO;

@Controller
public class StudyController {
	

	@Autowired
	StudyRoomService service;
	
	@RequestMapping(value = "/write.do",method = RequestMethod.GET)
	public String addStudyRoom() {
		return "studyroom/studyroom_write";
	}
	
	@RequestMapping(value = "/write.do",method = RequestMethod.POST)
	public String addStudyRoomProc(HttpServletRequest request) {
		
		StudyRoomVO studyroom = new StudyRoomVO();
		UserVO user = (UserVO) (request.getSession().getAttribute("User"));
		studyroom.setManagerid(user.getUserid());
		studyroom.setStudytitle(request.getParameter("studytitle"));
		studyroom.setSubjectcode(Integer.parseInt(request.getParameter("subcategory")));
		studyroom.setLocationcode(Long.parseLong(request.getParameter("location2")));
		studyroom.setMembercnt(Integer.parseInt(request.getParameter("membercnt")));
		studyroom.setContent(request.getParameter("content"));
		System.out.println(studyroom);
		
		int roomrow = 0;
		int memberrow = 0;
		roomrow = service.addStudyRoom(studyroom);
		//int studyno = service.getStudyNo(studyroom);
		//memberrow = service.addStudyMember(studyroom);
		System.out.println(roomrow);
		System.out.println(memberrow);
		
		return "redirect:/mypage/mypage_studylist.do";
		
	}
	
	@RequestMapping("/subjectlist.do")
	public ModelAndView subjectcatory(@RequestParam("subjectcode") int subjectcode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("rooms", service.getSubcategoryList(subjectcode));
		mav.setViewName("studyroom/studyroom_subject");
		return mav;
	}
	
	@RequestMapping("/categorylist.do")
	public ModelAndView catory(@RequestParam("categorycode") int categorycode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("rooms", service.getCategoryList(categorycode));
		mav.setViewName("studyroom/studyroom_category");
		return mav;
	}

}
