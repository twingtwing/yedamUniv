package co.yedam.univ.reg.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.reg.service.RegisterMapper;
import co.yedam.univ.reg.service.RegisterService;
import co.yedam.univ.reg.service.RegisterVO;

@Repository("registerDao")
public class RegisterServiceImpl implements RegisterService {
	@Autowired
	private RegisterMapper map;
	@Autowired RegisterService registerDao;
	
	@Override
	public List<RegisterVO> registerList(RegisterVO vo) {
		return map.registerList(vo);
	}

	@Override
	public int countRegister(RegisterVO vo) {
		return map.countRegister(vo);
	}

	@Override
	public List<RegisterVO> classHistoryList(RegisterVO vo) {
		return map.classHistoryList(vo);
	}

	@Override
	public int alreadyRegister(RegisterVO vo) {
		return map.alreadyRegister(vo);
	}

	@Override
	public int exceedRegister(RegisterVO vo) {
		return map.exceedRegister(vo);
	}

	@Override
	public int sameRegister(RegisterVO vo) {
		return map.sameRegister(vo);
	}

	@Override
	public int subjectTotal(RegisterVO vo) {
		return map.subjectTotal(vo);
	}

	@Override
	public int listenStudentSum(RegisterVO vo) {
		return map.listenStudentSum(vo);
	}

	@Override
	public int insertRegister(RegisterVO vo) {
		return map.insertRegister(vo);
	}

}
