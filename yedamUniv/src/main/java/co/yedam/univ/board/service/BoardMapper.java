package co.yedam.univ.board.service;

import java.util.List;

public interface BoardMapper {
	List<BoardVO> boardList(BoardVO vo);
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
}
