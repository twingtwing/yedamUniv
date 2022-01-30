package co.yedam.univ.sub.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CriteriaSub {
	private int rn;
	private int subjectNo;
	private String proId;
	private String proName;
	private String subjectName;
	private String subjectDate;
	private String subjectPermit;
	private String subjectStatus;
	private String subjectScore;
	private String subjectDetail;
	
	private int pageNum;
	private int amount;
	
	public CriteriaSub() {
		this(1,10);
	}
	
	public CriteriaSub(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
