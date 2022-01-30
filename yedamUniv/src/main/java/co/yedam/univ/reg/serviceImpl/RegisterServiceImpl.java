package co.yedam.univ.reg.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public void procedureSpareSeat(Map<String, Object> map) {
		// TODO Auto-generated method stub
	}
	
	public Map<String, Object> procedureInputData(int subjectNo, int year, int term, String stuId, int day, int time){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("subjectNo", subjectNo);
		map.put("year", year);
		map.put("term", term);
		map.put("stuId", stuId);
		map.put("day", day);
		map.put("time", time);
		registerDao.procedureSpareSeat(map);
		
		return map;
	}

	@Override
	public List<RegisterVO> classHistoryList(RegisterVO vo) {
		return map.classHistoryList(vo);
	}

}
