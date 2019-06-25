package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.user.service.UserService;

@Controller
public class UserStudyListController {
	@Autowired
	UserService userService;
	
	@Autowired
	StudyRoomService studyRoomService;
	
	@RequestMapping("/mypage/applicationList.do")
	public void viewApplicationList() {
		
	}
	
	
}
