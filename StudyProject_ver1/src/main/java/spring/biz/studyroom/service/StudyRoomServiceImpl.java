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
	public int getStudyNo() {
		return dao.getStudyNo();
	}
	
	@Override
	public StudyRoomVO getStudyRoom(int studyno, long locationcode, int subjectcode) {
		return dao.getStudyRoom(studyno, locationcode, subjectcode);
	}
	
	@Override
	public List<StudyRoomVO> getSubcategoryList(int subjectcode) {
		return dao.getSubcategoryList(subjectcode);
	}

	@Override
	public List<StudyRoomVO> getCategoryList(int categorycode) {
		return dao.getCategoryList(categorycode);
	}
	
	@Override
	public int updateRoom(StudyRoomVO studyroom) {
		return dao.updateRoom(studyroom);
	}

	@Override
	public int removeRoom(String studyno) {
		return dao.removeRoom(studyno);
	}
	
	@Override
	public List<StudyRoomVO> searchLocGetStudyRoom(long locCode) {
		return dao.searchLocGetStudyRoom(locCode);
	}

	@Override
	public List<StudyRoomVO> searchSubjectLocGetStudyRoom(int subjectCode, long locCode) {
		return dao.searchSubjectLocGetStudyRoom(subjectCode, locCode);
	}

	@Override
	public List<StudyRoomVO> viewApplicationList(String userid) {
		return dao.viewApplicationList(userid);
	}

	@Override
	public List<StudyRoomVO> viewApplicationList(String userid, int studyno,int attend) {
		// TODO Auto-generated method stub
		return dao.viewApplicationList(userid,studyno,attend);
	}

}
