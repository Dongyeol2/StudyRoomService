package spring.biz.studymember.vo;

public class StudyMemberVO {
	public int studyno;
	public String userid;
	public String status;
	public String attend;
	
	public StudyMemberVO() {
		super();
	}

	public StudyMemberVO(int studyno, String userid, String status, String attend) {
		super();
		this.studyno = studyno;
		this.userid = userid;
		this.status = status;
		this.attend = attend;
	}

	public int getStudyno() {
		return studyno;
	}

	public void setStudyno(int studyno) {
		this.studyno = studyno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

	public String getAttend() {
		return attend;
	}

	public void setAttend(String attend) {
		this.attend = attend;
	}

	@Override
	public String toString() {
		return "StudyMemberVO [studyno=" + studyno + ", userid=" + userid + ", status=" + status + ", attend=" + attend + "]";
	}
	
	
}
