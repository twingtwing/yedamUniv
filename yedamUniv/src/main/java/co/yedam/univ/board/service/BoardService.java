package co.yedam.univ.board.service;

import java.util.List;

public interface BoardService {
	List<BoardVO> boardList(BoardVO vo); //목록뿌리기
	   int boardLastNum();	// board_files insert할때 board테이블 게시글번호 알아오기위해
	   BoardVO boardSelect(BoardVO vo);	//상세조회
	   int boardInsert(BoardVO vo); //등록
	   int boardUpdate(BoardVO vo); //수정
	   int boardHitsUP(BoardVO vo); //조회수 업
	   int boardDelete(BoardVO vo); //삭제
	   
	   List<BoardVO> searchBoardNo(BoardVO vo); //목록에서 검색조건-게시글번호
	   List<BoardVO> searchBoardTitle(BoardVO vo); //목록에서 검색조건-제목
}
