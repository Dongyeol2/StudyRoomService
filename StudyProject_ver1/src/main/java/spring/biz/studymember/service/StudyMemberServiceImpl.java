package spring.biz.studymember.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.studymember.dao.StudyMemberDAO;
import spring.biz.studymember.vo.StudyMemberVO;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.user.vo.UserVO;

@Service("studymemberservice")
public class StudyMemberServiceImpl implements StudyMemberService{

	@Resource(name = "studymembermybatis")
	StudyMemberDAO dao;
	
	@Autowired
	ApplicationContext context;

	public StudyMemberServiceImpl() {
		super();
	}

	public StudyMemberServiceImpl(StudyMemberDAO dao, ApplicationContext context) {
		super();
		this.dao = dao;
		this.context = context;
	}


	public StudyMemberDAO getDao() {
		return dao;
	}

	public void setDao(StudyMemberDAO dao) {
		this.dao = dao;
	}

	public ApplicationContext getContext() {
		return context;
	}

	public void setContext(ApplicationContext context) {
		this.context = context;
	}

	@Override
	public int addStudyMember(StudyMemberVO studymember) {
		return dao.addStudyMember(studymember);
	}

	@Override
	public int acceptMember(String userid,int check, int studyno) {
		// TODO Auto-generated method stub
		return dao.acceptMember(userid,check,studyno);
	}

	@Override
	public List<StudyMemberVO> getUserList(int studyno) {
		// TODO Auto-generated method stub
		return dao.getUserList(studyno);
	}

	@Override
	public List<StudyRoomVO> getUserListAppliedManagerId(String managerid,int attendCode) {
		// TODO Auto-generated method stub
		return dao.getUserListAppliedManagerId(managerid, attendCode);
	}

	@Override
	public List<StudyMemberVO> getUserListAppliedManagerId2(String managerid, int attendCode) {
		// TODO Auto-generated method stub
		return dao.getUserListAppliedManagerId2(managerid, attendCode);
	}

	

}
