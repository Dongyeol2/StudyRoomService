package spring.biz.studyroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.vo.StudyRoomVO;

@Repository("studyroommybatis")
public class StudyRoomDAO_MyBatis implements StudyRoomDAO{

	@Inject
	SqlSession sqlSession=null;
	

	@Override
	public int addStudyRoom(StudyRoomVO studyroom) {
		return sqlSession.insert("studyroom.addstudyroom",studyroom);
	}

	@Override
	public int getStudyNo() {
		return sqlSession.selectOne("studyroom.getstudyno");
	}
	
	@Override
	public StudyRoomVO getStudyRoom(int studyno, long locationcode, int subjectcode) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("studyno", Integer.toString(studyno));
		map.put("locationcode", Long.toString(locationcode));
		map.put("subjectcode", Integer.toString(subjectcode));
		
		System.out.println(map.get("subjectcode"));
		System.out.println(map.get("locationcode"));
		
		return sqlSession.selectOne("studyroom.getstudyroom",map);
	}
	
	@Override
	public List<StudyRoomVO> getSubcategoryList(int subjectcode) {
		return sqlSession.selectList("studyroom.subjectlist", subjectcode);
	}

	@Override
	public List<StudyRoomVO> getCategoryList(int categorycode) {
		return sqlSession.selectList("studyroom.categorylist", categorycode);
	}
	
	@Override
	public int updateRoom(StudyRoomVO studyroom) {
		return sqlSession.update("studyroom.studyroomupdate", studyroom);
	}

	@Override
	public int removeRoom(String studyno) {
		return sqlSession.delete("studyroom.studyroomdelete", studyno);
	}
	@Override
	public List<StudyRoomVO> searchLocGetStudyRoom(long locationcode) {
		// TODO Auto-generated method stub
		String locationcodeStr = Long.toString(locationcode);
		String d = locationcodeStr.substring(9);
		if(d.equals("1")) { // loc1 + loc2
			locationcodeStr = locationcodeStr.substring(0, 4);
		} else {
			locationcodeStr = locationcodeStr.substring(0, 2);
		}
		
		return sqlSession.selectList("studyroom.searchLocGetStudyRoom", locationcodeStr);
	}

	@Override
	public List<StudyRoomVO> searchSubjectLocGetStudyRoom(int subjectcode, long locationcode) {
		// TODO Auto-generated method stub
		System.out.println(subjectcode);
		System.out.println(locationcode);
		
		Map<String, String> map = new HashMap<String, String>();
		String loc = Long.toString(locationcode);
		String d = loc.substring(9);
		if(d.equals("1")) { // loc1 + loc2
			loc = loc.substring(0, 4);
		} else {
			loc = loc.substring(0, 2);
		}
		String sub = Integer.toString(subjectcode);
		
		
		
		map.put("subjectcode", sub);
		map.put("locationcode", loc);
		
		System.out.println(map.get("subjectcode"));
		System.out.println(map.get("locationcode"));
		return sqlSession.selectList("studyroom.searchSubjectLocGetStudyRoom", map);
	}

	@Override
	public List<StudyRoomVO> viewApplicationList(String userid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("studyroom.viewApplicationList", userid);
	}
	@Override
	public List<StudyRoomVO> viewApplicationList(String userid, int studyno,int attend) {
		Map<String, String> map = new HashMap<String, String>();
		String strStudyno = Integer.toString(studyno);
		String strAttend = Integer.toString(attend);
		map.put("userid", userid);
		map.put("studyno", strStudyno);
		map.put("attend", strAttend);
		return sqlSession.selectList("studyroom.viewApplicationList2", map);
	}

	@Override
	public StudyRoomVO getStudyRoom(int studyno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("studyroom.getstudyroom1",studyno);
	}

}
