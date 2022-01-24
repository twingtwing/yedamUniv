package co.yedam.univ.sub.service;

import java.util.List;

public interface SubMapper {
	List<SubVO> subjectList(String id);
	List<SubVO> subjectSelectList(SubVO vo);

	int subjectNum(SubVO vo);//강의평가 점수(이번학기)
	int subjectCount(SubVO vo);//총 강의신청 갯수(이번학기)
	List<CriteriaSub> subjectPagenation(CriteriaSub cri);
	SubVO subjectSelect(SubVO vo);
	List<Integer> subjectDay(SubVO vo);//시간대 검색
	int subjectInsert(SubVO vo);//강의등록
	int subjectUpdate(SubVO vo);//강의수정
	int subjectDelete(SubVO vo);//강의삭제
}
