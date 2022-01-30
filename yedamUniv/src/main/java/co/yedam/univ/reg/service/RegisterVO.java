package co.yedam.univ.reg.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterVO {
	private int registerNo;
	private int subjectNo;
	private String stuId;
	private int registerYear;
	private int registerTerm;
	private String registerSemester;
	private int midExam;
	private int FinalExam;
	private int grade;
	private int registerNum;
	
	private String proName;
	private String subjectDetail;
	private int subjectNum;
	private String subjectName;
	private String subjectScore;
	private String subjectMajor;
	private String subjectDay;
	private String subjectTime;
	private String subjectRoom;
	
	private int year;
	private int term;
	
	private int avg;
	private String proId;
	
	private int result;
}
