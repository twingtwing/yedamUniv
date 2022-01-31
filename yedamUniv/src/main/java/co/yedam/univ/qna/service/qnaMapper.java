package co.yedam.univ.qna.service;

import java.util.List;

public interface qnaMapper {
	
	List<qnaVO> qnaSelectList();
	List<qnaVO> hSelectList();
	List<qnaVO> jSelectList();
	qnaVO qnaSelect(qnaVO vo);
	int qnaInsert(qnaVO vo);
	int qnaUpdate(qnaVO vo);
	int qnaDelete(int q_no);
	int qnaAnswer(qnaVO vo); // 답변달기


}
