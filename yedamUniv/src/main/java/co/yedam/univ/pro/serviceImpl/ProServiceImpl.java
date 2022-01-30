package co.yedam.univ.pro.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.pro.service.ProMapper;
import co.yedam.univ.pro.service.ProService;
import co.yedam.univ.pro.service.ProfessorVO;

@Repository("proDAO")
public class ProServiceImpl implements ProService {
	@Autowired private ProMapper map;

	@Override
	public ProfessorVO proSelect(ProfessorVO vo) {
		return map.proSelect(vo);
	}

}
