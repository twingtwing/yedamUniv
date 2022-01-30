package co.yedam.univ.sub.service;

import java.util.List;

public interface SubMapper {
	
	List<SubVO> enrolmentMajorList(SubVO vo); //수강신청-학과조회
	List<SubVO> enrolmentSubNameList(SubVO vo); //수강신청-과목명조회

	List<SubVO> subjectList(String id);//강의목록 학기
	List<SubVO> subjectSelectList(SubVO vo);//해당 학기 강의목록
	List<SubVO> subjectPostList(SubVO vo); //공지사항목록
	List<SubVO> subjectQnAList(SubVO vo); //QnA목록
	SubVO subjectBoardSelect(SubVO vo); //공지사항 게시글
	int updateBoardHit(SubVO vo); // 조회수
	
	int insertBoard(SubVO vo); //공지사항 등록
	int updateBoard(SubVO vo); //공지사항 업데이트
	int deleteBoard(SubVO vo); //공지사항 삭제
	
	//묻고답하기
    SubVO subjectQnaSelect(SubVO vo);
    int qnaAnswerUpdate(SubVO vo); //답변 업뎃
    int qnaAnswerInsert(SubVO vo); //답변 등록
    int qnaAnswerDelete(SubVO vo); //답변 삭제

	int subjectNum(SubVO vo);//강의평가 점수(이번학기)
	int subjectCount(SubVO vo);//총 강의신청 갯수(이번학기)
	List<CriteriaSub> subjectPagenation(CriteriaSub cri);
	SubVO subjectSelect(SubVO vo);
	List<Integer> subjectDay(SubVO vo);//시간대 검색
	int subjectInsert(SubVO vo);//강의등록
	int subjectUpdate(SubVO vo);//강의수정
	int subjectDelete(SubVO vo);//강의삭제

}
