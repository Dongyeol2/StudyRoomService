package spring.biz.studyroom.vo;

import java.sql.Date;

public class StudyRoomVO {
	@Override
	public String toString() {
		return "StudyRoomVO [studyno=" + studyno + ", studytitle=" + studytitle + ", subjectcode=" + subjectcode
				+ ", membercnt=" + membercnt + ", locationcode=" + locationcode + ", managerid=" + managerid
				+ ", regdate=" + regdate + ", state=" + state + ", content=" + content + ", viewcnt=" + viewcnt + "]";
	}

	public int studyno;
	public String studytitle;
	public int subjectcode;
	public int membercnt;
	public long locationcode;
	public String managerid;
	public Date regdate;
	public String state;
	public String content;
	public int viewcnt;
	public String subjectcode2;
	public String locationcode2;
	public String stateName;
	
	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getSubjectcode2() {
		return subjectcode2;
	}

	public void setSubjectcode2(String subjectcode2) {
		this.subjectcode2 = subjectcode2;
	}

	public String getLocationcode2() {
		return locationcode2;
	}

	public void setLocationcode2(String locationcode2) {
		this.locationcode2 = locationcode2;
	}

	public StudyRoomVO() {
		super();
	}

	public StudyRoomVO(int studyno, String studytitle, int subjectcode, int membercnt, long locationcode,
			String managerid, Date regdate, String state, String content, int viewcnt) {
		super();
		this.studyno = studyno;
		this.studytitle = studytitle;
		this.subjectcode = subjectcode;
		this.membercnt = membercnt;
		this.locationcode = locationcode;
		this.managerid = managerid;
		this.regdate = regdate;
		this.state = state;
		this.content = content;
		this.viewcnt = viewcnt;
	}

	public int getStudyno() {
		return studyno;
	}

	public void setStudyno(int studyno) {
		this.studyno = studyno;
	}

	public String getStudytitle() {
		return studytitle;
	}

	public void setStudytitle(String studytitle) {
		this.studytitle = studytitle;
	}

	public int getSubjectcode() {
		return subjectcode;
	}

	public void setSubjectcode(int subjectcode) {
		this.subjectcode = subjectcode;
	}

	public int getMembercnt() {
		return membercnt;
	}

	public void setMembercnt(int membercnt) {
		this.membercnt = membercnt;
	}

	public long getLocationcode() {
		return locationcode;
	}

	public void setLocationcode(long locationcode) {
		this.locationcode = locationcode;
	}

	public String getManagerid() {
		return managerid;
	}

	public void setManagerid(String managerid) {
		this.managerid = managerid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	
	
	

}
