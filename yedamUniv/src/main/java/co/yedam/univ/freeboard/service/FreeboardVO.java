package co.yedam.univ.freeboard.service;

import java.sql.Date;

public class FreeboardVO {
	private int cNo;
	private String cWriter;
	private String cTitle;
	private String cContents;
	private int cHits;
	private Date cDate;
	private String cStatus;
	private String cReason;
	private String cNotice;
	private int cmtNo;
	private String cmtWriter;
	private String cmtContents;
	private Date cmtDate;
	
	
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getcWriter() {
		return cWriter;
	}
	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}
	public String getcTitle() {
		return cTitle;
	}
	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}
	public String getcContents() {
		return cContents;
	}
	public void setcContents(String cContents) {
		this.cContents = cContents;
	}
	public int getcHits() {
		return cHits;
	}
	public void setcHits(int cHits) {
		this.cHits = cHits;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	public String getcStatus() {
		return cStatus;
	}
	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}
	public String getcReason() {
		return cReason;
	}
	public void setcReason(String cReason) {
		this.cReason = cReason;
	}
	public String getcNotice() {
		return cNotice;
	}
	public void setcNotice(String cNotice) {
		this.cNotice = cNotice;
	}
	public int getCmtNo() {
		return cmtNo;
	}
	public void setCmtNo(int cmtNo) {
		this.cmtNo = cmtNo;
	}
	public String getCmtWriter() {
		return cmtWriter;
	}
	public void setCmtWriter(String cmtWriter) {
		this.cmtWriter = cmtWriter;
	}
	public String getCmtContents() {
		return cmtContents;
	}
	public void setCmtContents(String cmtContents) {
		this.cmtContents = cmtContents;
	}
	public Date getCmtDate() {
		return cmtDate;
	}
	public void setCmtDate(Date cmtDate) {
		this.cmtDate = cmtDate;
	}

}
