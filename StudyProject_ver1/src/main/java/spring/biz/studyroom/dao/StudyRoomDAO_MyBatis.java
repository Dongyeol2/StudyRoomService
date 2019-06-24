package spring.biz.studyroom.dao;

import java.util.List;

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
}
