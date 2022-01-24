package co.yedam.univ.sub.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.sub.service.CriteriaSub;
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
	public List<Integer> subjectDay(SubVO vo) {
		return map.subjectDay(vo);
	}
	
	@Override
	public int subjectInsert(SubVO vo) {
		return map.subjectInsert(vo);
	}

	@Override
	public SubVO subjectSelect(SubVO vo) {
		return map.subjectSelect(vo);
	}

	@Override
	public int subjectUpdate(SubVO vo) {
		return map.subjectUpdate(vo);
	}

	@Override
	public int subjectDelete(SubVO vo) {
		return map.subjectDelete(vo);
	}

	@Override
	public List<CriteriaSub> subjectPagenation(CriteriaSub cri) {
		return map.subjectPagenation(cri);
	}

	@Override
	public int subjectNum(SubVO vo) {
		return map.subjectNum(vo);
	}

	@Override
	public int subjectCount(SubVO vo) {
		return map.subjectCount(vo);
	}


}
