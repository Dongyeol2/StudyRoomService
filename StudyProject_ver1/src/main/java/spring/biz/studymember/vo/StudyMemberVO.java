package spring.biz.studymember.vo;

public class StudyMemberVO {
	public int studyno;
	public String userid;
	public String status;
	
	public StudyMemberVO() {
		super();
	}

	public StudyMemberVO(int studyno, String userid, String status) {
		super();
		this.studyno = studyno;
		this.userid = userid;
		this.status = status;
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

	@Override
	public String toString() {
		return "StudyMemberVO [studyno=" + studyno + ", userid=" + userid + ", status=" + status + "]";
	}
	
	
}
