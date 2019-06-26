package web.controller;

import java.util.ArrayList;
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
import spring.biz.studymember.service.StudyMemberService;
import spring.biz.studymember.vo.StudyMemberVO;
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
	@Autowired
	StudyMemberService studyMemberService;
	
	
	@RequestMapping("/mypage/accept.do")
	public ModelAndView accept(HttpServletRequest request , HttpSession session
			,@RequestParam("studyno")int studyno,@RequestParam("userid")String userid) {
		
		ModelAndView mav= new ModelAndView();
		System.out.println("accept");
		
		studyMemberService.acceptMember(userid, 1, studyno);
		
		
		
		
		return mav;
	}

	
	@RequestMapping("/mypage/applicationListBystudyno.do")
	public ModelAndView viewApplicationListBystudyno(HttpServletRequest request , HttpSession session
			,@RequestParam("studyno")int studyno) {
		System.out.println("viewApplicationListBystudyno");
		ModelAndView mav= new ModelAndView();
		UserVO vo = (UserVO)request.getSession().getAttribute("User");
		
		List<StudyMemberVO> studyMemberVOList = studyMemberService.getUserList(studyno);
		
		
		List<StudyRoomVO> applyStudyList = studyRoomService.viewApplicationList(vo.getUserid(),studyno,0);
		List<StudyRoomVO> studyMemberList = studyRoomService.viewApplicationList(vo.getUserid(),studyno,1);
		List<UserVO> applyMeberList = new ArrayList<UserVO>();
		List<UserVO> memberList = new ArrayList<UserVO>();
		UserVO user;
		for(StudyMemberVO smv : studyMemberVOList) {
			if(smv.getAttend().equals("0")) {
				user = userService.getUser(smv.getUserid());
				System.out.println("applyMeberList");
				System.out.println(user.toString());
				applyMeberList.add(user);
			}else {
				user = userService.getUser(smv.getUserid());
				System.out.println("memberList");
				System.out.println(user.toString());
				memberList.add(user);
			}
			
		}
		
		
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
		if(studyRoomService.getStudyRoom(studyno).getManagerid().equals(vo.getUserid())) {
			mav.addObject("applyMeberList",applyMeberList);
		}
		mav.addObject("studyno",studyno);
		mav.addObject("memberList",memberList);
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
