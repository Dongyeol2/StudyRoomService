package spring;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import spring.biz.location.service.LocationService;
import spring.biz.studymember.service.StudyMemberService;
import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.user.service.UserService;
import spring.biz.user.vo.UserVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Test05_UserService {
	
	@Autowired
	UserService service;
	
	@Autowired
	SubCategoryService scService;
	
	@Autowired
	LocationService locationService;
	@Autowired
	StudyRoomService studyRoomService;
	@Autowired
	StudyMemberService studyMemberService;
	
	@Test
	public void accept() {
		System.out.println(studyMemberService.acceptMember("user02", 1,45));
	}
	
	//@Test
	public void viewApplicationList() {
		List<StudyRoomVO> studyLists = studyRoomService.viewApplicationList("user02",19,0);
		
		for (StudyRoomVO srv : studyLists) {
			System.out.println(srv.toString());
		}
	}
	
	
	//@Test
	public void searchLocGetStudyRoom() {
		List<StudyRoomVO> studyLists = studyRoomService.searchLocGetStudyRoom(1168064000);
		
		for (StudyRoomVO srv : studyLists) {
			System.out.println(srv.toString());
		}
	}
	
	
	//@Test
	public void searchLocSubject() {
		List<StudyRoomVO> studyLists = studyRoomService.searchSubjectLocGetStudyRoom(11, 1100000000);
		
		for (StudyRoomVO srv : studyLists) {
			System.out.println(srv.toString());
		}
		
		
	}
	
	
	//@Test
	public void getLocation() {
		System.out.println(locationService.getLocation(1168064000).getLoc1());
		System.out.println(locationService.getLocation(1168064000).getLoc2());
	}
	
	
	//@Test
	public void getsubcategoryNameFromsubjectCode() {
		System.out.println(scService.getSubCategory(1).getSubjectname());
	}
	//@Test
	public void getMyStudyList() {
		System.out.println(service.getMystudyList("user02"));
	}
	
	//@Test
	public void login() {
		System.out.println(service.login("admin", "a1234"));
	}
	
	//@Test
	public void list() {
		for(UserVO vo : service.getUserList()) {
        	System.out.println(vo);
        }
	}
	
	//@Test
	public void add() {
		UserVO user  = new UserVO();
		user.setUserid("admin");
		user.setUsername("홍길동");
		user.setUserpw("a1234");
		user.setPhone("010-2222-1234");
		user.setEmail("hong@naver.com");
		user.setAddress("멜티캠퍼스");
		int row = service.addUser(user);
		System.out.println("insert => "+row);
	}
	//@Test
	public void update() {
		UserVO user = service.getUser("admin");
		user.setUserpw("9999");
		user.setPhone("010-2234-0909");
		int row = service.updateUser(user);
		System.out.println("update   "+row);
	}
	//@Test
	public void getUser() {
	    System.out.println(service.getUser("admin"));
	}
	//@Test
	public void searchUser() {
		for(UserVO vo : service.searchUser("username", "홍")) {
        	System.out.println(vo);
        }
	}
	//@Test
	public void removeUser() {
	  int row = service.removeUser("java09");
	  System.out.println("removeUser   "+row);
	}
}


