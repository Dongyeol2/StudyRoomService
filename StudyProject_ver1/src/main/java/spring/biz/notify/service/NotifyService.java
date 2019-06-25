package spring.biz.notify.service;

import spring.biz.notify.vo.NotifyVO;
import spring.biz.studymember.vo.StudyMemberVO;

public interface NotifyService {
	String getManagerId(int studyno);
	int sendNotify(NotifyVO notify);
	int setAttend(StudyMemberVO member);
	   
}
