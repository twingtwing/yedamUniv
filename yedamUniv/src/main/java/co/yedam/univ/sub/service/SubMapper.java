package co.yedam.univ.sub.service;

import java.util.List;

public interface SubMapper {
	List<SubVO> subjectList(String id);
	List<SubVO> subjectSelectList(SubVO vo);
	
	List<SubVO> enrolmentMajorList(SubVO vo); //수강신청-학과조회
	List<SubVO> enrolmentSubNameList(SubVO vo); //수강신청-과목명조회
}
