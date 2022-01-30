package co.yedam.univ.stu.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StuVO {
	
	 private String stuId;                                   
	 private String stuPw;                                   
	 private String stuName;                                 
	 private String stuBirth;                                 
	 private String stuTel;                                  
	 private String stuEmail;                                 
	 private int stuZipcode;                              
	 private String stuAddr;                                  
	 private String stuAddr2;                                                                    
	 private String stuJoin;                                       
	 private String stuState;                                      
	 private String major;                                     
	 private int grade;                                      
	 private String stuRec;                                 
	 private String stuChg;                            
	 private String author;
	 
	 private String graduateNum;//졸업학점
	 private String liberalNum; //교양이수학점
	 private String majorNum; //전공이수학점
	 
	 private String subjectDetail;
	 private String score;
	
}
