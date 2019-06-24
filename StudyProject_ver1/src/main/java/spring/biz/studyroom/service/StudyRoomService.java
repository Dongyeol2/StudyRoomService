package spring.biz.studyroom.service;

import java.util.List;

import spring.biz.studyroom.vo.StudyRoomVO;

public interface StudyRoomService {
	   int addStudyRoom(StudyRoomVO studyroom);
	   StudyRoomVO getStudyRoom(String studyno);
	   List<StudyRoomVO> getSubcategoryList(int subjectcode);
	   List<StudyRoomVO> getCategoryList(int categorycode);
	   
}
