package co.yedam.univ.pro.service;

import lombok.Data;

@Data
public class ProfessorVO {
	private String proId;
	private String proPw;
	private String proName;
	private String proBirth;
	private String proTel;
	private String proEmail;
	private String proZipcode;
	private String proAddr;
	private String proAddr2; //상세주소
	private String proPic; //사진원본
	private String proPpic;  //사진물리
	private String proHire;
	private String proState; //안식년
	private String major;
	private String proRec;
	private String proAuthor; 
	private String proTop; //교수총장
	
}
