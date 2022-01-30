package co.yedam.univ.stu.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class StudentVO {
	private String stuId;
	private String stuPw;
	private String stuName;
	private Date stuBirth;
	private String stuTel;
	private String stuEmail;
	private String stuZipcode;
	private String stuAddr;
	private String stuAddrTwo;
	private String stuPic;
	private String stuPpic;
	private Date stuJoin;
	private String stuState;
	private String major;
	private String stuRec;
	private String stuChg;
	private String author;
}
