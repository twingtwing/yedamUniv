package co.yedam.univ.user.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {
	private String id;
	private String pw;
	private String name;
	private String tel;
	private String email;
	private int zipcode;
	private String addr;
	private String addr2;
	private String major;
	private String author;
	private String rec;
	private String chg;
	private String birthdate;
	private String hiredate;
	private int grade;
	
	private int pageNum;
	private int amount;
	
	public UserVO() {
		this(1,10);
	}
	
	public UserVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
