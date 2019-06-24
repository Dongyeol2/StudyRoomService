package spring.biz.studymember.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.studymember.vo.StudyMemberVO;

@Repository("studymembermybatis")
public class StudyMemberDAO_MyBatis implements StudyMemberDAO{

	@Inject
	SqlSession sqlSession=null;
	

	@Override
	public int addStudyMember(StudyMemberVO studymember) {
		return sqlSession.insert("studymember.addstudymember",studymember);
	}
}
