package co.yedam.univ.board.service;

public interface BoardFilesService {
	BoardFilesVO boardFileSelect(BoardFilesVO vo);
	int boardFileExist(BoardFilesVO vo);
	int boardFileInsert(BoardFilesVO vo);
	int boardFileDelete(BoardFilesVO vo);
}
