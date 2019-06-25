package spring.biz.studymember.dao;

import java.util.List;

import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.user.vo.UserVO;

public interface StudyMemberDAO {
	   int addStudyMember(StudyMemberVO studymember);
	   int acceptMember(String userid,int check, int studyno);
	   List<StudyMemberVO> getUserList(int studyno);
}
