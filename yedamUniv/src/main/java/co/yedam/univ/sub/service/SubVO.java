package co.yedam.univ.sub.service;

import lombok.Data;


@Data
public class SubVO {
	//subject
	private int subjectNo; //과목순번
	private int subjectNum; //과목코드
	private String proId;
	private String proName;
	private String subjectName;
	private String subjectDetail; //이수구분(교양,전공)
	private String subjectMajor; //전공
	private String subjectScore; //학점
	private String subjectRoom; //강의실
	private String subjectDay; //요일
	private String subjectTime; //교시
	private String subjectSemester; //학기
	private int subjectTotal; //정원
	private int subjectCnt; //현원
	private String subjectSum; //수업개요
	private String subjectGoal; //수업목표
	private String subjectData; //수업자료
	private String subjectContents; //수업내용
	private String subjectStatus; //승인상태
	private String subjectDate; //신청날짜
	private String subjectPermit; //승인날짜
	
	private int registerNum; //강의평가 총점
	private int subjectCount; //수강 총 갯수
	
	
	//과목 공지사항
	private int bsNo;
	private String bsDate;
	private String bsTitle;
	private String bsContents;
	private int boardHits;
	
	
	//과목 공지사항 첨부파일
	private int bsfileNo;
	private String bsfile;
	private String pBsfile;
	
	public String getpBsfile() {
		return pBsfile;
	}
	public void setpBsfile(String pBsfile) {
		this.pBsfile = pBsfile;
	}
	//과목 QnA
	private int sqNo;
	private String stuId;
	private String sqTitle;
	private String sqContents;
	private String sqDate;
	private String sqState;
	private String saContents;
	private String saDate;
	private String stuName;
	private String major;
}
