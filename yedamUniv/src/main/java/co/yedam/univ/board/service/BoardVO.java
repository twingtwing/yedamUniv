package co.yedam.univ.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

//학사,장학사 공지사항
@Setter
@Getter
public class BoardVO {
	private int boardNo;
	private String empId;
	private Date boardDate;
	private String boardTitle;
	private String boardContents;
	private String boardKind;
	private int boardHits;
}
