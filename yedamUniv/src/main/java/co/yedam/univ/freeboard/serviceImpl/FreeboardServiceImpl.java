package co.yedam.univ.freeboard.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.freeboard.service.FreeboardMapper;
import co.yedam.univ.freeboard.service.FreeboardService;
import co.yedam.univ.freeboard.service.FreeboardVO;

@Repository("freeboardDao")
public class FreeboardServiceImpl implements FreeboardService {
	
	@Autowired
	private FreeboardMapper map;
	
	@Override
	public List<FreeboardVO> freeBoardList() {
		return map.freeBoardList();
	}

	@Override
	public FreeboardVO freeBoardSelect(FreeboardVO vo) {
		return map.freeBoardSelect(vo);
	}

	@Override
	public int freeBoardInsert(FreeboardVO vo) {
		return map.freeBoardInsert(vo);
	}

	@Override
	public int freeBoardUpdate(FreeboardVO vo) {
		return map.freeBoardUpdate(vo);
	}

	@Override
	public int freeBoardDelete(FreeboardVO vo) {
		return map.freeBoardDelete(vo);
	}

	@Override
	public List<FreeboardVO> cmtList(FreeboardVO vo) {
		return map.cmtList(vo);
	}

	@Override
	public FreeboardVO cmtSelect(FreeboardVO vo) {
		return map.cmtSelect(vo);
	}

	@Override
	public int cmtInsert(FreeboardVO vo) {
		return map.cmtInsert(vo);
	}

	@Override
	public int cmtUpdate(FreeboardVO vo) {
		return map.cmtUpdate(vo);
	}

	@Override
	public int cmtDelete(FreeboardVO vo) {
		return map.cmtDelete(vo);
	}	

}
