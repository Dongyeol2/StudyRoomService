package spring.biz.studyroom.dao;

import java.util.List;

import spring.biz.studyroom.vo.StudyRoomVO;

public interface StudyRoomDAO {
	   int addStudyRoom(StudyRoomVO studyroom);
	   StudyRoomVO getStudyRoom(int studyno, long locationcode, int subjectcode); 
	   int getStudyNo();
	   List<StudyRoomVO> getSubcategoryList(int subjectcode);
	   List<StudyRoomVO> getCategoryList(int categorycode);
	   int updateRoom(StudyRoomVO studyroom);
	   int removeRoom(String studyno);
	   List<StudyRoomVO> searchLocGetStudyRoom(long locCode); 
	   List<StudyRoomVO> searchSubjectLocGetStudyRoom(int subjectCode , long locCode);
	   List<StudyRoomVO> viewApplicationList(String userid);
	   List<StudyRoomVO> viewApplicationList(String userid, int studyno,int attend);
}
