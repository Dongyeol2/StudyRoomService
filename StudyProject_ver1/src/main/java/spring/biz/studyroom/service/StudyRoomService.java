package spring.biz.studyroom.service;

import spring.biz.studyroom.vo.StudyRoomVO;

public interface StudyRoomService {
	   int addStudyRoom(StudyRoomVO studyroom);
	   
	   StudyRoomVO getStudyRoom(String studyno);
	   

}
