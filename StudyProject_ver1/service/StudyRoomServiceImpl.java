package spring.biz.studyroom.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.dao.StudyRoomDAO;
import spring.biz.studyroom.vo.StudyRoomVO;

@Service("studyroomservice")
public class StudyRoomServiceImpl implements StudyRoomService{

	@Resource(name = "studyroommybatis")
	StudyRoomDAO dao;
	
	@Autowired
	ApplicationContext context;
	
	public StudyRoomServiceImpl() {	}

	public StudyRoomServiceImpl(StudyRoomDAO dao, ApplicationContext context) {
		super();
		this.dao = dao;
		this.context = context;
	}
	
	public StudyRoomDAO getDao() {
		return dao;
	}

	public void setDao(StudyRoomDAO dao) {
		this.dao = dao;
	}

	public ApplicationContext getContext() {
		return context;
	}

	public void setContext(ApplicationContext context) {
		this.context = context;
	}

	@Override
	public int addStudyRoom(StudyRoomVO studyroom) {
		return dao.addStudyRoom(studyroom);
	}

	@Override
	public StudyRoomVO getStudyRoom(String studyno) {
		return dao.getStudyRoom(studyno);
	}
	
	@Override
	public List<StudyRoomVO> getSubcategoryList(int subjectcode) {
		return dao.getSubcategoryList(subjectcode);
	}

	@Override
	public List<StudyRoomVO> getCategoryList(int categorycode) {
		return dao.getCategoryList(categorycode);
	}

}
