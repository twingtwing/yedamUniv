package co.yedam.univ.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.board.service.BoardMapper;
import co.yedam.univ.board.service.BoardService;
import co.yedam.univ.board.service.BoardVO;

@Repository("boardDao")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper map;
	
	@Override
	public List<BoardVO> boardList(BoardVO vo) {
		return map.boardList(vo);
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		return map.boardInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		return map.boardUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		return map.boardDelete(vo);
	}

}
