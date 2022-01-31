package co.yedam.univ.stu.service;

import java.util.List;

public interface StuService {
	StuVO stuSelect(StuVO vo);	
	StuVO stuMajor(StuVO vo);
	List<StuVO> stuReg(StuVO vo);
}
