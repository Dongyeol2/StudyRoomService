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
	public StudyRoomVO getStudyRoom(int studyno) {
		return sqlSession.selectOne("studyroom.getstudyroom",studyno);
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

}
