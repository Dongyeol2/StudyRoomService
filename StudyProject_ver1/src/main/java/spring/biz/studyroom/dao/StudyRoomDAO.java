package spring.biz.studyroom.dao;

import java.util.List;

import spring.biz.studyroom.vo.StudyRoomVO;

public interface StudyRoomDAO {
	   int addStudyRoom(StudyRoomVO studyroom);
	   StudyRoomVO getStudyRoom(String studyno);
	   List<StudyRoomVO> getSubcategoryList(int subjectcode);
}
