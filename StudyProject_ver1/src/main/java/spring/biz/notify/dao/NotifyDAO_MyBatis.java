package spring.biz.notify.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.notify.vo.NotifyVO;
import spring.biz.studymember.vo.StudyMemberVO;

@Repository("notifymybatis")
public class NotifyDAO_MyBatis implements NotifyDAO{

	@Inject
	SqlSession sqlSession=null;
	

	@Override
	public int sendNotify(NotifyVO notify) {
		return sqlSession.insert("notify.sendnotify",notify);
	}


	@Override
	public String getManagerId(int studyno) {
		return sqlSession.selectOne("notify.getmanagerid",studyno);
	}


	@Override
	public int setAttend(StudyMemberVO member) {
		return sqlSession.insert("notify.setattend",member);
	}
}
