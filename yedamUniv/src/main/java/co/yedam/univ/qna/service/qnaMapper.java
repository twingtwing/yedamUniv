package co.yedam.univ.qna.service;

import java.util.List;

public interface qnaMapper {
	
	List<qnaVO> qnaSelectList();
	qnaVO qnaSelect(qnaVO vo);
	int qnaInsert(qnaVO vo);
	int qnaUpdate(qnaVO vo);
	int qnaDelete(int q_no);

}
