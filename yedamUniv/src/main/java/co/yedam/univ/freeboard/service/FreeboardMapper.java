package co.yedam.univ.freeboard.service;

import java.util.List;

public interface FreeboardMapper {
	List<FreeboardVO> freeBoardList();
	FreeboardVO freeBoardSelect(FreeboardVO vo);
	int freeBoardInsert(FreeboardVO vo);
	int freeBoardUpdate(FreeboardVO vo);
	int freeBoardDelete(FreeboardVO vo);
	List<FreeboardVO> cmtList(FreeboardVO vo);
	FreeboardVO cmtSelect(FreeboardVO vo);
	int cmtInsert(FreeboardVO vo);
	int cmtUpdate(FreeboardVO vo);
	int cmtDelete(FreeboardVO vo);
	
	

}
