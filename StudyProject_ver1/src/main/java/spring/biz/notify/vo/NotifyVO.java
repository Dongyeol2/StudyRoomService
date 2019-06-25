package spring.biz.notify.vo;

import java.sql.Date;

public class NotifyVO {
	public int seq;
	public String userid;
	public String target_userid;
	public String notifytype;
	public int studyno;
	public Date notifydate;
	public String notifycheck;
	public String status;
	
	public NotifyVO() {
		super();
	}
	
	public NotifyVO(int seq, String userid, String target_userid, String notifytype, int studyno, Date notifydate,
			String notifycheck, String status) {
		super();
		this.seq = seq;
		this.userid = userid;
		this.target_userid = target_userid;
		this.notifytype = notifytype;
		this.studyno = studyno;
		this.notifydate = notifydate;
		this.notifycheck = notifycheck;
		this.status = status;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getTarget_userid() {
		return target_userid;
	}

	public void setTarget_userid(String target_userid) {
		this.target_userid = target_userid;
	}

	public String getNotifytype() {
		return notifytype;
	}

	public void setNotifytype(String notifytype) {
		this.notifytype = notifytype;
	}

	public int getStudyno() {
		return studyno;
	}

	public void setStudyno(int studyno) {
		this.studyno = studyno;
	}

	public Date getNotifydate() {
		return notifydate;
	}

	public void setNotifydate(Date notifydate) {
		this.notifydate = notifydate;
	}

	public String getNotifycheck() {
		return notifycheck;
	}

	public void setNotifycheck(String notifycheck) {
		this.notifycheck = notifycheck;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
