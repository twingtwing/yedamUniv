package co.yedam.univ.stu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.stu.service.StuMapper;
import co.yedam.univ.stu.service.StuService;
import co.yedam.univ.stu.service.StuVO;

@Repository("stuDAO")
public class StuServiceImpl implements StuService{
	@Autowired private StuMapper map;

	@Override
	public StuVO stuSelect(StuVO vo) {
		return map.stuSelect(vo);
	}

	@Override
	public StuVO stuMajor(StuVO vo) {
		return map.stuMajor(vo);
	}

	@Override
	public List<StuVO> stuReg(StuVO vo) {
		return map.stuReg(vo);
	}

}
