package co.yedam.univ.qna.service;

public class qnaFilesVO {
	
	private int ffileNo;
	private int qNo;
	private String qfile;
	private String aQfile;
	
	public int getFfileNo() {
		return ffileNo;
	}
	public void setFfileNo(int ffileNo) {
		this.ffileNo = ffileNo;
	}
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getQfile() {
		return qfile;
	}
	public void setQfile(String qfile) {
		this.qfile = qfile;
	}
	public String getaQfile() {
		return aQfile;
	}
	public void setaQfile(String aQfile) {
		this.aQfile = aQfile;
	}
	@Override
	public String toString() {
		return "qnaFilesVO [ffileNo=" + ffileNo + ", qNo=" + qNo + ", qfile=" + qfile + ", aQfile=" + aQfile + "]";
	}
	
	
	
}
