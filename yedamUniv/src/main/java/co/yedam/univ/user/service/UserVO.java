package co.yedam.univ.user.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {
	private String id;
	private String pw;
	private String name;
	private String major;
	private String author;
	private int grade;
}
