package co.yedam.univ.sub.service;

import lombok.Data;

@Data
public class SubVO {
	private int subjectNo; //과목순번
	private int subjectNum; //과목코드
	private String proId;
	private String proName;
	private String subjectName;
	private String subjectDetail; //이수구분
	private String subjectMajor; //전공
	private String subjectScore; //학점
	private String subjectRoom; //강의실
	private String subjectDay; //요일
	private String subjectTime; //교시
	private String subjectSemester; //학기
	private int subjectTotal; //정원
	private String subjectSum; //수업개요
	private String subjectGoal; //수업목표
	private String subjectData; //수업자료
	private String subjectContents; //수업내용
	private String subjectStatus; //승인상태
}
