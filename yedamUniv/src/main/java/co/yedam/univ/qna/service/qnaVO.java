package co.yedam.univ.qna.service;

import java.sql.Date;

public class qnaVO {
	private int qNo;
	private String qKind;
	private String stuId;
	private String qCategory;
	private String qTitle;
	private String qContents;
	private Date qDate;
	private String qState;
	private String empId;
	private String aContents;
	private Date aDate;
	
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getqKind() {
		return qKind;
	}
	public void setqKind(String qKind) {
		this.qKind = qKind;
	}
	public String getstuId() {
		return stuId;
	}
	public void setstuId(String stuId) {
		this.stuId = stuId;
	}
	public String getqCategory() {
		return qCategory;
	}
	public void setqCategory(String qCategory) {
		this.qCategory = qCategory;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContents() {
		return qContents;
	}
	public void setqContents(String qContents) {
		this.qContents = qContents;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public String getqState() {
		return qState;
	}
	public void setqState(String qState) {
		this.qState = qState;
	}
	public String getempId() {
		return empId;
	}
	public void setempId(String empId) {
		this.empId = empId;
	}
	public String getaContents() {
		return aContents;
	}
	public void setaContents(String aContents) {
		this.aContents = aContents;
	}
	public Date getaDate() {
		return aDate;
	}
	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}
	@Override
	public String toString() {
		return "qnaVO [qNo=" + qNo + ", qKind=" + qKind + ", stuId=" + stuId + ", qCategory=" + qCategory
				+ ", qTitle=" + qTitle + ", qContents=" + qContents + ", qDate=" + qDate + ", qState=" + qState
				+ ", empId=" + empId + ", aContents=" + aContents + ", aDate=" + aDate + "]";
	}
	
	

}
