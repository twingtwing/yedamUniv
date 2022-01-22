package co.yedam.univ.sub.service;

import java.util.List;

public interface SubMapper {
	List<SubVO> subjectList(String id);
	List<SubVO> subjectSelectList(SubVO vo);
}
