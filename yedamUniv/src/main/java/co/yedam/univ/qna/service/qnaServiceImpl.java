package co.yedam.univ.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("qnaDao")
public class qnaServiceImpl implements qnaService {
	@Autowired
	qnaMapper qnaMapper;

	@Override
	public List<qnaVO> qnaSelectList() {
		return qnaMapper.qnaSelectList();
	}

	@Override
	public qnaVO qnaSelect(qnaVO vo) {
		return qnaMapper.qnaSelect(vo);
	}

	@Override
	public int qnaInsert(qnaVO vo) {
		return qnaMapper.qnaInsert(vo);
	}

	@Override
	public int qnaUpdate(qnaVO vo) {
		return qnaMapper.qnaUpdate(vo);
	}

	@Override
	public int qnaDelete(int q_no) {
		return qnaMapper.qnaDelete(q_no);
	}


	@Override
	public List<qnaVO> hSelectList() {
		return qnaMapper.hSelectList();
	}

	@Override
	public List<qnaVO> jSelectList() {
		return qnaMapper.jSelectList();
	}

	@Override
	public int qnaAnswer(qnaVO vo) {
		return qnaMapper.qnaAnswer(vo);
	}

}
