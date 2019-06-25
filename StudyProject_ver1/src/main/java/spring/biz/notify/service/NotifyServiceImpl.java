package spring.biz.notify.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.notify.dao.NotifyDAO;
import spring.biz.notify.vo.NotifyVO;
import spring.biz.studymember.vo.StudyMemberVO;

@Service("notifyservice")
public class NotifyServiceImpl implements NotifyService{

	@Resource(name = "notifymybatis")
	NotifyDAO dao;
	
	@Autowired
	ApplicationContext context;

	public NotifyServiceImpl() {
		super();
	}

	public NotifyServiceImpl(NotifyDAO dao, ApplicationContext context) {
		super();
		this.dao = dao;
		this.context = context;
	}


	public NotifyDAO getDao() {
		return dao;
	}

	public void setDao(NotifyDAO dao) {
		this.dao = dao;
	}

	public ApplicationContext getContext() {
		return context;
	}

	public void setContext(ApplicationContext context) {
		this.context = context;
	}

	@Override
	public int sendNotify(NotifyVO notify) {
		return dao.sendNotify(notify);
	}

	@Override
	public String getManagerId(int studyno) {
		return dao.getManagerId(studyno);
	}

	@Override
	public int setAttend(StudyMemberVO member) {
		return dao.setAttend(member);
	}

}
