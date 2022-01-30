package co.yedam.univ.reg.service;

import java.util.List;

public interface RegisterService {
	List<RegisterVO> registerList(RegisterVO vo); //해당년도,해당학기에 내가 수강한 과목
	int countRegister(RegisterVO vo); //해당년도,해당학기에 내가 수강한 과목 수
	List<RegisterVO> classHistoryList(RegisterVO vo); //수강목록조회
	
	//수강신청
	int alreadyRegister(RegisterVO vo); //이미 담아둔 강의인지 => 이미 담아뒀으면 1, 아니면 0
	int exceedRegister(RegisterVO vo); //수강학점 초과안했는지 => 한학기 21학점 들을 수 있다고 치고 21이상이면 수강불가
	int sameRegister(RegisterVO vo); //시간표안겹치는지 => 겹치면 1, 안겹치면 0
	int subjectTotal(RegisterVO vo); //선택한 과목의 수강가능인원
	int listenStudentSum(RegisterVO vo); //선택한 과목을 수강하는 학생 수 
	int insertRegister(RegisterVO vo); // 수강신청하기 - insert
}
