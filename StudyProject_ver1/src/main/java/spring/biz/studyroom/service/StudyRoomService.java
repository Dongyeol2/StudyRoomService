package spring.biz.studyroom.service;

import java.util.List;

import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.vo.StudyRoomVO;

public interface StudyRoomService {
	   int addStudyRoom(StudyRoomVO studyroom);
	   int getStudyNo();
	   StudyRoomVO getStudyRoom(int studyno, long locationcode, int subjectcode);
	   List<StudyRoomVO> getSubcategoryList(int subjectcode);
	   List<StudyRoomVO> getCategoryList(int categorycode);
	   int updateRoom(StudyRoomVO studyroom);
	   int removeRoom(String studyno);
	   List<StudyRoomVO> searchLocGetStudyRoom(long locCode); 
	   List<StudyRoomVO> searchSubjectLocGetStudyRoom(int subjectCode , long locCode);
	   List<StudyRoomVO> viewApplicationList(String userid);
	   List<StudyRoomVO> viewApplicationList(String userid, int studyno,int attend);
}
