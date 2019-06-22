package changeCodeToName;

import org.springframework.beans.factory.annotation.Autowired;

import spring.biz.admin.service.AdminService;
import spring.biz.location.service.LocationService;
import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.subcategory.vo.SubCategoryVO;
import spring.biz.user.service.UserService;

public class ChangeCodeToName {

	@Autowired
	UserService userService;
	@Autowired
	StudyRoomService studyRoomService; 
	@Autowired
	SubCategoryService subCategoryService;
	@Autowired
	LocationService locationService;
	
	public void changeLocationCodeToName(StudyRoomVO srv) {
		String loc1 = locationService.getLocation(srv.getLocationcode()).getLoc1();
		String loc2 = locationService.getLocation(srv.getLocationcode()).getLoc2();
		String loc = loc1 +" "+ loc2;
		srv.setLocationcode2(loc);
	}
	
	public void changeSubjectCodeToName(StudyRoomVO srv) {
		SubCategoryVO scv = subCategoryService.getSubCategory2(srv.getSubjectcode());
		srv.setSubjectcode2(scv.getSubjectname());
	}
	
	public void changeStateCodeToName(StudyRoomVO srv) {
		if(srv.getState() == "0") {
			
			srv.setStateName("모집중");
		} else if (srv.getState() == "1") {
			srv.setStateName("모집완료");
		} else {
			srv.setStateName("상태이상함");
			System.out.println(srv.getState());
			System.out.println(srv.getStateName());
		}
	}
	
}
