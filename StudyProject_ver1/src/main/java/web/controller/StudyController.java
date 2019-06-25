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

import spring.biz.category.service.CategoryService;
import spring.biz.studymember.service.StudyMemberService;
import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.user.vo.UserVO;

@Controller
public class StudyController {
	

	@Autowired
	StudyRoomService service;
	
	@Autowired
	StudyMemberService mservice;
	
	@Autowired
	CategoryService cervice;
	
	@Autowired
	SubCategoryService scservice;
	

	@RequestMapping(value = "/write.do",method = RequestMethod.GET)
	public String addStudyRoom() throws Exception{
		return "studyroom/studyroom_write";
	}
	
	@RequestMapping(value = "/write.do",method = RequestMethod.POST)
	public String addStudyRoomProc(HttpServletRequest request) throws Exception{
		
		//studyroomvo
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
		roomrow = service.addStudyRoom(studyroom);
		
		//studymembervo
		int studyno = service.getStudyNo();
		StudyMemberVO studymember = new StudyMemberVO();
		studymember.setStudyno(studyno);
		studymember.setUserid(user.getUserid());
		studymember.setStatus("0");
		
		System.out.println(studymember);
		
		int memberrow = 0;
		memberrow = mservice.addStudyMember(studymember);
		
		//System.out.println(roomrow);
		//System.out.println(memberrow);
		
		return "redirect:/mypage/mypage_studylist.do";
		
	}
	
	@RequestMapping("/subjectlist.do")
	public ModelAndView subjectcatory(@RequestParam("subjectcode") int subjectcode) throws Exception{
		ModelAndView mav = new ModelAndView();

		System.out.println("들어왔슈");
		mav.addObject("rooms", service.getSubcategoryList(subjectcode));
		
		mav.setViewName("studyroom/studyroom_subject");
		return mav;
	}
	
	@RequestMapping("/categorylist.do")
	public ModelAndView catory(@RequestParam("categorycode") int categorycode) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("rooms", service.getCategoryList(categorycode));
		mav.setViewName("studyroom/studyroom_category");
		return mav;
	}
	
	@RequestMapping("/studyroom/view.do")
	public ModelAndView roomView(@RequestParam("studyno") int studyno, @RequestParam("locationcode") long locationcode, @RequestParam("subjectcode") int subjectcode) {
		ModelAndView mav = new ModelAndView();
		
		StudyRoomVO r = new StudyRoomVO(); 
		r.setStudyno(studyno);
		
		StudyRoomVO sr = service.getStudyRoom(studyno, locationcode, subjectcode); 
		sr.setViewcnt(sr.getViewcnt()+1);
		
		service.updateRoom(sr);
		
		mav.addObject("room", service.getStudyRoom(studyno, locationcode, subjectcode));
		mav.setViewName("studyroom/studyroom_view");
		return mav;
	}
	
	@RequestMapping("/studyroom/remove.do")
	public String remove(String studyno) {
		service.removeRoom(studyno);
		return "redirect:/subjectlist.do";
	}
	
	@RequestMapping("/studyroom/modify.do")
	public ModelAndView modify(@RequestParam("studyno") int studyno) {
		ModelAndView mav = new ModelAndView();
        //mav.addObject("rooms", service.getStudyRoom(studyno));
		mav.setViewName("studyroom/studyroom_modify");
		return mav;
	}
	
	@RequestMapping("/studyroom/update.do")
	//public ModelAndView update(@ModelAttribute("user") UserVO vo) {
	public ModelAndView update(StudyRoomVO studyroom) {
		System.out.println(studyroom);
		ModelAndView mav = new ModelAndView();
		service.updateRoom(studyroom);
		
		//mav.addObject("rooms",service.getStudyRoom(studyroom.getStudyno()));
		mav.setViewName("studyroom/studyroom_view");
		return mav;
	}

}
