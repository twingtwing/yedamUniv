package co.yedam.univ.qna.service;

import java.util.List;

public interface qnaFilesService {
	List<qnaFilesVO> selectListFile();
	List<qnaFilesVO> selectFile(qnaFilesVO vo);
	int insertqFile(qnaFilesVO vo);
	int updateqFile(qnaFilesVO vo);
	int deleteqFile(qnaFilesVO vo);
}
