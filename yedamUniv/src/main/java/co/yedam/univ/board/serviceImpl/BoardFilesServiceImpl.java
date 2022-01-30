package co.yedam.univ.board.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.board.service.BoardFilesMapper;
import co.yedam.univ.board.service.BoardFilesService;
import co.yedam.univ.board.service.BoardFilesVO;

@Repository("boardFileDao")
public class BoardFilesServiceImpl implements BoardFilesService {
	@Autowired
	public BoardFilesMapper map;
	
	@Override
	public BoardFilesVO boardFileSelect(BoardFilesVO vo) {
		return map.boardFileSelect(vo);
	}
	
	@Override
	public int boardFileExist(BoardFilesVO vo) {
		return map.boardFileExist(vo);
	}
	
	@Override
	public int boardFileInsert(BoardFilesVO vo) {
		return map.boardFileInsert(vo);
	}

	@Override
	public int boardFileDelete(BoardFilesVO vo) {
		return map.boardFileDelete(vo);
	}

	
	
}
