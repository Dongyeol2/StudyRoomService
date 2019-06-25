package spring.biz.studymember.dao;

import java.util.HashMap;
import java.util.Map;

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


	@Override
	public int acceptMember(String userid , int check) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		return sqlSession.update("studymember.acceptMember", userid);
	}
}
