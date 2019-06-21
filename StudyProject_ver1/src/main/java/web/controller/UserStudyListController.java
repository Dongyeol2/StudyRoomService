package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.user.service.UserService;

@Controller
public class UserStudyListController {
	@Autowired
	UserService userService;
	
	@Autowired
	StudyRoomService studyRoomService;
	
	
	
	
}
