package spring.biz.studymember.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.studymember.dao.StudyMemberDAO;
import spring.biz.studymember.vo.StudyMemberVO;

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

}
