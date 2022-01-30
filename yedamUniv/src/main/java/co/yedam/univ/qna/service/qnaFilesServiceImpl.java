package co.yedam.univ.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("qnaFilesDao")
public class qnaFilesServiceImpl implements qnaFilesService {

	@Autowired
	private qnaFilesMapper qnaFilesMapper;
	
	@Override
	public List<qnaFilesVO> selectListFile() {
		return qnaFilesMapper.selectListFile();
	}

	@Override
	public List<qnaFilesVO> selectFile(qnaFilesVO vo) {
		return qnaFilesMapper.selectFile(vo);
	}

	@Override
	public int insertqFile(qnaFilesVO vo) {
		return qnaFilesMapper.insertqFile(vo);
	}

	@Override
	public int updateqFile(qnaFilesVO vo) {
		return qnaFilesMapper.updateqFile(vo);
	}

	@Override
	public int deleteqFile(qnaFilesVO vo) {
		return qnaFilesMapper.deleteqFile(vo);
	}

}
