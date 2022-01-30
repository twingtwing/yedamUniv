package co.yedam.univ.leaveDrop.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LeaveDropVO {

	private String stuId; 
	private String stuName;
	private String major;
	private String grade;
	private String stuTel;
	private String stuEmail;
	private String stuBirth;
	private String author;
	
	//휴학
	private int leaveNo; //휴학순번
	private String leaveDetail; //휴학말머리
	private String leaveReason; //휴학사유
	private String leaveDate; //신청일자
	private String leaveProcess; //승인절차
	private String backSchedule; //복학예정일자
	private String backDate; //복학신청일자
	private String backStete; //복학상태

	//자퇴
	private String dropDetail; //자퇴말머리
	private String dropReason; //자퇴사유
	private String dropDate; //자퇴신청일자
	private String dropProcess; //지퇴승인절차
	
	//통일
	private String num;
	private String category;//휴학인지 자퇴인지
	private String detail;
	private String reason; 
	private String date; 
	private String process; 
	
	
	//페이지네이션
	private int rn;
	
	private int pageNum;
	private int amount;
	
	public LeaveDropVO() {
		this(1,10);
	}
	
	public LeaveDropVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
