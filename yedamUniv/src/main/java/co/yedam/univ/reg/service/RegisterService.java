package co.yedam.univ.reg.service;

import java.util.List;
import java.util.Map;

public interface RegisterService {
	List<RegisterVO> registerList(RegisterVO vo); //해당년도,해당학기에 내가 수강한 과목
	int countRegister(RegisterVO vo); //해당년도,해당학기에 내가 수강한 과목 수
	List<RegisterVO> classHistoryList(RegisterVO vo); //수강목록조회
	void procedureSpareSeat(Map<String, Object> map);
}
