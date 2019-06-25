package spring.biz.notify.dao;

import spring.biz.notify.vo.NotifyVO;
import spring.biz.studymember.vo.StudyMemberVO;

public interface NotifyDAO {
	   String getManagerId(int studyno);
	   int sendNotify(NotifyVO notify);
	   int setAttend(StudyMemberVO member);
}
