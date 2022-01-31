package co.yedam.univ.stu.service;

import java.util.List;

import co.yedam.univ.sub.service.SubVO;

public interface StuMapper {
	StuVO stuSelect(StuVO vo);
	StuVO stuMajor(StuVO vo);
	List<StuVO> stuReg(StuVO vo);
	
	//학생- 묻고답하기
	int stuQnaUpdate(SubVO vo); //업데이트
	int stuQnaInsert(SubVO vo); //등록
	int stuQnaDelete(SubVO vo); //삭제
	
	//선생님 아이디
    SubVO selectProId(SubVO vo);
}
