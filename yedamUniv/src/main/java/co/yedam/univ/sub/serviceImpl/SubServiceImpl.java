package co.yedam.univ.sub.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.sub.service.SubMapper;
import co.yedam.univ.sub.service.SubService;
import co.yedam.univ.sub.service.SubVO;

@Repository("subDao")
public class SubServiceImpl implements SubService {
	@Autowired 
	SubMapper map;

	@Override
	public List<SubVO> subjectList(String id) {
		return map.subjectList(id);
	}

	@Override
	public List<SubVO> subjectSelectList(SubVO vo) {
		return map.subjectSelectList(vo);
	}

	@Override
	public List<SubVO> enrolmentMajorList(SubVO vo) {
		return map.enrolmentMajorList(vo);
	}

	@Override
	public List<SubVO> enrolmentSubNameList(SubVO vo) {
		return map.enrolmentSubNameList(vo);
	}

}
