package co.yedam.univ.qna.service;

import java.sql.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

public class qnaVO {
	private int qNo;
	private String qKind;
	private String stuId;
	private String qCategory;
	private String qTitle;
	private String qContents;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date qDate;
	private String qState;
	private String empId;
	private String aContents;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date aDate;
	
	private List<qnaFilesVO> qnaFileList;

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

	public String getStuId() {
		return stuId;
	}

	public void setStuId(String stuId) {
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

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
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

	public List<qnaFilesVO> getQnaFileList() {
		return qnaFileList;
	}

	public void setQnaFileList(List<qnaFilesVO> qnaFileList) {
		this.qnaFileList = qnaFileList;
	}

	@Override
	public String toString() {
		return "qnaVO [qNo=" + qNo + ", qKind=" + qKind + ", stuId=" + stuId + ", qCategory=" + qCategory + ", qTitle="
				+ qTitle + ", qContents=" + qContents + ", qDate=" + qDate + ", qState=" + qState + ", empId=" + empId
				+ ", aContents=" + aContents + ", aDate=" + aDate + ", qnaFileList=" + qnaFileList + "]";
	}

	
}
