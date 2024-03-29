package web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import changeCodeToName.ChangeCodeToName;
import spring.biz.admin.service.AdminService;
import spring.biz.location.service.LocationService;
import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.subcategory.vo.SubCategoryVO;
import spring.biz.user.dao.UserDAO;
import spring.biz.user.service.UserService;
import spring.biz.user.vo.UserVO;
import web.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	UserService service;
	@Autowired
	AdminService adminService;
	@Autowired
	StudyRoomService studyRoomService; 
	@Autowired
	SubCategoryService subCategoryService;
	@Autowired
	LocationService locationService;
	
	
	@RequestMapping("/mypage/mypage_myinfo.do")
	// public ModelAndView update(@ModelAttribute("user") UserVO vo) {
	public ModelAndView mypageInfo(HttpServletRequest request , HttpSession session) {
		
		//UserVO vo = (UserVO) session.getAttribute("login");
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		UserVO dbVo = service.getUser(vo.getUserid());
		
		ModelAndView mav= new ModelAndView();
		if(dbVo.getUserid().equals("admin")) {
			mav.addObject("users", adminService.getUserList());
			mav.addObject("rooms", adminService.getStudyRoomList());
			mav.setViewName("admin/admin_main");
		}else {
			System.out.println("mypage로 이동");
			mav.addObject("user",dbVo);
			mav.setViewName("mypage/mypage_myinfo");	
		}
		return mav;
	}
	
	
	@RequestMapping("/mypage/update.do")
	// public ModelAndView update(@ModelAttribute("user") UserVO vo) {
	public ModelAndView mypageUpdate(UserVO vo) {
		System.out.println("mypageUpdate");
		System.out.println(vo);
		ModelAndView mav = new ModelAndView();
		service.updateUser(vo);
		System.out.println(vo);
		mav.addObject("user", service.getUser(vo.getUserid()));
		mav.setViewName("mypage/mypage_myinfo");
		return mav;
	}
	
	
	@RequestMapping(value = "/mypage/mypage_studylist.do",method = RequestMethod.GET)
	public ModelAndView myStudyList(HttpServletRequest request , HttpSession session) {
		ModelAndView mav= new ModelAndView();
		UserVO vo = (UserVO) session.getAttribute("login");
		List<StudyRoomVO> studyList = service.getMystudyList(vo.getUserid());
		
		 for(StudyRoomVO srv : studyList) {
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
			 if (srv.getManagerid().equals(vo.getUserid())) {
				srv.setIsManager("방장");
			}
		 }
		 
		
		
		mav.addObject("studyLists",studyList);
		mav.setViewName("mypage/mypage_studylist");
		
		return mav;
	}
	
	@RequestMapping(value = "/mypage/mypage.do",method = RequestMethod.GET)
	public ModelAndView mypage(HttpServletRequest request , HttpSession session) {
		
		//UserVO vo = (UserVO) session.getAttribute("login");
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		ModelAndView mav= new ModelAndView();
		if(vo.getUserid().equals("admin")) {
			mav.addObject("users", adminService.getUserList());
			mav.addObject("rooms", adminService.getStudyRoomList());
			mav.setViewName("admin/admin_main");
		}else {
			System.out.println("mypage로 이동");
			mav.addObject("user",vo);
			mav.setViewName("mypage/mypage");	
		}
		return mav;
	}

	@RequestMapping(value = "/mypage/mypage_modify.do",method = RequestMethod.POST)
	public ModelAndView mypageModify(HttpServletRequest request , HttpSession session) {
		System.out.println("mypageModify Method");
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		ModelAndView mav= new ModelAndView();
		if(vo.getUserid().equals("admin")) {
			mav.addObject("users", adminService.getUserList());
			mav.addObject("rooms", adminService.getStudyRoomList());
			mav.setViewName("admin/admin_main");
		}else {
			System.out.println("mypage_modify로 이동");
			mav.addObject("user",vo);
			mav.setViewName("mypage/mypage_modify");	
		}
		return mav;
	}

	@RequestMapping(value = "/mypage/mystudy.do",method = RequestMethod.GET)
	public ModelAndView mypageMyStudy(HttpServletRequest request , HttpSession session) {
		
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		ModelAndView mav= new ModelAndView();
		if(vo.getUserid().equals("admin")) {
			mav.addObject("users", adminService.getUserList());
			mav.addObject("rooms", adminService.getStudyRoomList());
			mav.setViewName("admin/admin_main");
		}else {
			System.out.println("mypage_studylist로 이동");
			mav.addObject("user",vo);
			mav.setViewName("mypage/mypage_studylist");	
		}
		return mav;
	}

	
	@RequestMapping("/user/list.do")
	public ModelAndView getUserList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("users", service.getUserList());
		mav.setViewName("user/user_list");
		return mav;
	}

	@RequestMapping(value = "/user/add.do", method = RequestMethod.GET)
	public String addUser() {
		return "user/user_write";
	}

	@RequestMapping(value = "/user/add.do", method = RequestMethod.POST)
	public String addUserProc(@ModelAttribute("user") UserVO vo, 
								HttpServletRequest request, 
								BindingResult errors) {
		ModelAndView mav = new ModelAndView();

		System.out.println("sssssssss");
		new UserValidator().validate(vo, errors);
		if (errors.hasErrors()) {
			System.out.println("111");
			return "user/user_write";
		}
		int row = 0;
		row = service.addUser(vo);
		System.out.println(row);
		return "redirect:/index.jsp";

	}

	@RequestMapping("/user/view.do")
	public ModelAndView getView(@RequestParam("userid") String id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", service.getUser(id));
		mav.setViewName("user/user_view");
		return mav;
	}

	@RequestMapping("/user/remove.do")
	public String remove(String userid) {
		service.removeUser(userid);
		return "redirect:/user/list.do";
	}

	@RequestMapping("modify.do")
	public ModelAndView modify(HttpServletRequest request , HttpSession session) {
		System.out.println("modify.do");
		UserVO vo = (UserVO) session.getAttribute("login");
		ModelAndView mav= new ModelAndView();
		mav.addObject("user",vo);
		mav.setViewName("user/user_modify");
		return mav;
	}

	@RequestMapping("/user/update.do")
	// public ModelAndView update(@ModelAttribute("user") UserVO vo) {
	public ModelAndView update(UserVO vo) {
		System.out.println(vo);
		ModelAndView mav = new ModelAndView();
		service.updateUser(vo);

		mav.addObject("user", service.getUser(vo.getUserid()));
		mav.setViewName("user/user_view");
		return mav;
	}

	@RequestMapping("/user/search.do")
	public ModelAndView search(String searchCondition, String searchKeyword) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("users", service.searchUser(searchCondition, searchKeyword));
		mav.setViewName("user/user_list");
		return mav;
	}

	// 회원 확인
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int postIdCheck(HttpServletRequest req) {
		//logger.info("post idCheck");
		String userid = req.getParameter("userid");
		UserVO idCheck = service.idCheck(userid);
		int result = 0;
		if (idCheck != null) {
			result = 1;
		}
		return result;
	}

	@ExceptionHandler(Exception.class)
	public String Ex(Exception exception, Model model) {
		model.addAttribute("exception", exception);
		return "error";
	}
}
