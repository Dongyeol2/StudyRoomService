package spring.biz.studymember.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.user.vo.UserVO;

@Repository("studymembermybatis")
public class StudyMemberDAO_MyBatis implements StudyMemberDAO{

	@Inject
	SqlSession sqlSession=null;
	

	@Override
	public int addStudyMember(StudyMemberVO studymember) {
		return sqlSession.insert("studymember.addstudymember",studymember);
	}


	@Override
	public int acceptMember(String userid , int check , int studyno) {
		// TODO Auto-generated method stub
		System.out.println("acceptMember : ");
		
		Map<String, String> map = new HashMap<String, String>();
		String strCheck = Integer.toString(check);
		String strStudyno = Integer.toString(studyno);
		map.put("userid", userid);
		map.put("check", strCheck);
		map.put("studyno", strStudyno);
		
		
		return sqlSession.update("studymember.acceptMember",map);
	}


	@Override
	public List<StudyMemberVO> getUserList(int studyno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("studymember.getUserList", studyno);
	}


	@Override
	public List<StudyRoomVO> getUserListAppliedManagerId(String managerid,int attendcode) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		String strAttendCode = Integer.toString(attendcode);
		map.put("managerid", managerid);
		map.put("attendcode", strAttendCode);
		return sqlSession.selectList("studymember.getUserListAppliedManagerId", map);
	}


	@Override
	public List<StudyMemberVO> getUserListAppliedManagerId2(String managerid, int attendcode) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		String strAttendCode = Integer.toString(attendcode);
		map.put("managerid", managerid);
		map.put("attendcode", strAttendCode);
		return sqlSession.selectList("studymember.getUserListAppliedManagerId2", map);
	
	}


	
}
