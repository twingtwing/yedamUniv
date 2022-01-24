package co.yedam.univ.sub.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CriteriaSub {
	private int rn;
	private int subjectNo;
	private String proId;
	private String subjectName;
	private String subjectDate;
	private String subjectPermit;
	private String subjectStatus;
	
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
