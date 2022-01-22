package co.yedam.univ.board.service;

import lombok.Getter;
import lombok.Setter;

//학사, 장학사 공지사항 첨부파일
@Setter
@Getter
public class BoardFilesVO {
	private int bfileNo;
	private int boardNo;
	private String bFile;
	private String pbFile;
}
