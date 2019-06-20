package spring.biz.studyroom.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.studyroom.vo.StudyRoomVO;

@Repository("studyroommybatis")
public class StudyRoomDAO_MyBatis implements StudyRoomDAO{

	@Inject
	SqlSession sqlSession=null;
	

	@Override
	public int addStudyRoom(StudyRoomVO studyroom) {
		return sqlSession.insert("studyroom.in",studyroom);
	}

	@Override
	public StudyRoomVO getStudyRoom(String studyno) {
		return sqlSession.selectOne("studyroom.getstudyroom",studyno);
	}

}
