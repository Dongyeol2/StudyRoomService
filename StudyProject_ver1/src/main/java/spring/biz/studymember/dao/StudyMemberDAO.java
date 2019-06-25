package spring.biz.studymember.dao;

import spring.biz.studymember.vo.StudyMemberVO;

public interface StudyMemberDAO {
	   int addStudyMember(StudyMemberVO studymember);
	   int acceptMember(String userid,int check, int studyno);
}
