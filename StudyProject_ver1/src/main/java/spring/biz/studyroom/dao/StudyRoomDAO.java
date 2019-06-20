package spring.biz.studyroom.dao;

import spring.biz.studyroom.vo.StudyRoomVO;

public interface StudyRoomDAO {
	   int addStudyRoom(StudyRoomVO studyroom);
	   
	   StudyRoomVO getStudyRoom(String studyno);
	   
}
