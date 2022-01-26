package co.yedam.univ.board.service;

public interface BoardFilesMapper {
	BoardFilesVO boardFileSelect(BoardFilesVO vo);
	int boardFileExist(BoardFilesVO vo);
	int boardFileInsert(BoardFilesVO vo);
	int boardFileDelete(BoardFilesVO vo);
}
