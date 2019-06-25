package spring.biz.studymember.service;

import spring.biz.studymember.vo.StudyMemberVO;

public interface StudyMemberService {
	   int addStudyMember(StudyMemberVO studymember);
	   int acceptMember(String userid,int check, int studyno);
	   
}
