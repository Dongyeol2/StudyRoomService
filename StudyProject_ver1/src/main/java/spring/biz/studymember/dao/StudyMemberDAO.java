package spring.biz.studymember.dao;

import java.util.List;

import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.user.vo.UserVO;

public interface StudyMemberDAO {
	   int addStudyMember(StudyMemberVO studymember);
	   int acceptMember(String userid,int check, int studyno);
	   List<StudyMemberVO> getUserList(int studyno);
	   List<StudyRoomVO> getUserListAppliedManagerId(String managerid,int attendCode);
	   List<StudyMemberVO> getUserListAppliedManagerId2(String managerid,int attendCode);
}
