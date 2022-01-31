package co.yedam.univ.stu.web;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.major.service.MajorService;
import co.yedam.univ.reg.service.RegisterService;
import co.yedam.univ.reg.service.RegisterVO;
import co.yedam.univ.stu.service.StudentService;
import co.yedam.univ.stu.service.StudentVO;
import co.yedam.univ.sub.service.SubService;
import co.yedam.univ.sub.service.SubVO;

import co.yedam.univ.stu.service.StuService;
import co.yedam.univ.stu.service.StuVO;

@Controller
public class StudentController {

	@Autowired StuService stuDAO;
	@Autowired SubService subDao;
	@Autowired StudentService stuDao;
	@Autowired RegisterService registerDao;
	@Autowired MajorService majorDao;
	
  //학적정보 조회
  @RequestMapping("stu/studentHome.do")
    public String studentHome(StuVO vo, Model model, HttpSession session) {
	  vo.setStuId((String)session.getAttribute("id"));
	  model.addAttribute("stu",stuDAO.stuSelect(vo));
	  return "stu/myInfo/studentHome";
  }
  
  //졸업 시물레이션
  @RequestMapping("stu/canIgraduate.do")
  public String canIgraduate(StuVO vo, Model model,HttpSession session) {
	  vo.setStuId((String)session.getAttribute("id"));
	  model.addAttribute("stu",stuDAO.stuMajor(vo));
	  model.addAttribute("reg",stuDAO.stuReg(vo));
	  return "stu/myInfo/canIgraduate";
  }
  
  //수강신청페이지
  @RequestMapping("stu/enrolment.do")
  public String enrolment(Model model, HttpSession session) {
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  int term = Integer.parseInt(timeStamp.substring(5,7));
	  
	  StudentVO vo = new StudentVO();
	  RegisterVO regVo = new RegisterVO();
	  vo.setStuId((String)session.getAttribute("id"));
	  model.addAttribute("student",stuDao.selectStudent(vo));
	  regVo.setStuId((String)session.getAttribute("id"));
	  regVo.setRegisterYear(year); //현재년도담기
	  regVo.setRegisterTerm(term); //현재학기담기
	  model.addAttribute("register",registerDao.registerList(regVo));
	  model.addAttribute("countReg",registerDao.countRegister(regVo));
	  model.addAttribute("majorList",majorDao.majorList());
	  
	  return "stu/class/enrolment";
  }
  
  //수강신청페이지-개설강좌조회
  @ResponseBody
  @RequestMapping("stu/AjaxSearchClass.do")
  public List<SubVO> AjaxSearchClass(@RequestParam("jogeon") String jogeon,
		  					  @RequestParam("searchVal") String searchVal){
	  System.out.println(jogeon);
	  System.out.println(searchVal);
	  SubVO vo = new SubVO();
	  List<SubVO> subList = new ArrayList<SubVO>();
	  if(jogeon.equals("학과")) {
		  vo.setSubjectMajor(searchVal);
		  subList = subDao.enrolmentMajorList(vo);
		  
	  }else if(jogeon.equals("과목명")) {
		  vo.setSubjectName(searchVal);
		  subList = subDao.enrolmentSubNameList(vo);
	  }
	  
	  return subList;
  }
  
  //수강신청버튼 클릭시
  @ResponseBody
  @RequestMapping(value="stu/AjaxRegisterClass.do",
		   		  produces = "application/text; charset=utf8")
  public String AjaxRegisterClass(@RequestParam("subNo") int subNo,
		  					   	  @RequestParam("day") String day,
		  					   	  @RequestParam("time") String time,
		  					   	  HttpSession session) {
	  System.out.println(subNo);
	  System.out.println(day);
	  System.out.println(time);
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int registerYear = Integer.parseInt(timeStamp.substring(0,4));
	  int term = Integer.parseInt(timeStamp.substring(5,7));
	  int registerTerm = 1;
	  if(term > 8) {
		  registerTerm = 2;
	  }
	  RegisterVO vo = new RegisterVO();
	  vo.setSubjectNo(subNo);
	  vo.setStuId((String)session.getAttribute("id"));
	  vo.setSubjectDay(day);
	  vo.setSubjectTime(time);
	  vo.setRegisterYear(registerYear);
	  vo.setRegisterTerm(registerTerm);
	  
	  String resultVal = "";
	  //1. 이미 담아 둔 강의인지
	  int already = registerDao.alreadyRegister(vo);
	  if(already > 0) {
		  resultVal = "이미담아둠";
	  }else {
		  //2. 수강학점 초과했는지
		  int exceed = registerDao.exceedRegister(vo);
		  if( exceed >= 21 ) {
			  resultVal = "수강학점초과";
		  }else {
			  //3. 시간표 안겹치는지
			  int same = registerDao.sameRegister(vo);
			  if(same > 0) {
				  resultVal = "시간표겹침";
			  }else {
				  //4.여석 있는지
				  int total = registerDao.subjectTotal(vo);
				  int stuSum = registerDao.listenStudentSum(vo);
				  int n = total - stuSum;
				  if(n <= 0) {
					  resultVal = "여석없음";
				  }else {
					  resultVal = "수강신청가능";
				  }
			  }
		  }
	  }
	  
	  return resultVal;
  }
  
  //수강신청-register테이블에 insert
  @ResponseBody
  @RequestMapping("stu/insertRegister.do")
  public String insertRegister(@RequestParam("subNo") int subNo,
		  					   HttpSession session) {
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int registerYear = Integer.parseInt(timeStamp.substring(0,4));
	  int term = Integer.parseInt(timeStamp.substring(5,7));
	  int registerTerm = 1;
	  if(term > 8) {
		  registerTerm = 2;
	  }
	  
	  RegisterVO vo = new RegisterVO();
	  vo.setSubjectNo(subNo);
	  vo.setStuId((String)session.getAttribute("id"));
	  vo.setRegisterSemester(registerYear+"-0"+registerTerm);
	  vo.setRegisterYear(registerYear);
	  vo.setRegisterTerm(registerTerm);
	  int n = registerDao.insertRegister(vo);
	  
	  return n > 0 ? "YES" : "NO";
  }
  
  //수강목록
  @RequestMapping("stu/classList.do")
  public String classList(Model model, HttpSession session) {
	  // 수강목록 조회 검색시, 학생이 학교다닌 년도부터 현재 년도까지 option태그로 만들어 주기
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  model.addAttribute("currentYear",year);
	  StudentVO vo = new StudentVO();
	  vo.setStuId((String)session.getAttribute("id"));
	  model.addAttribute("stuJoinYear",stuDao.selectStudentJoinDate(vo));
	  
	  return "stu/class/classList";
  }
  
  //수강목록 - 링크땜에 두개있어 넹~~><
  @RequestMapping("stu/stu.do")
  public String stu(Model model, HttpSession session) {
	  // 수강목록 조회 검색시, 학생이 학교다닌 년도부터 현재 년도까지 option태그로 만들어 주기
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  model.addAttribute("currentYear",year);
	  StudentVO vo = new StudentVO();
	  vo.setStuId((String)session.getAttribute("id"));
	  model.addAttribute("stuJoinYear",stuDao.selectStudentJoinDate(vo));
	  
	  return "stu/class/classList";
  }
  
  //수강목록 - 선택한 년도,학기에 수강한 강의리스트 보내줌
  @ResponseBody
  @RequestMapping("stu/AjaxClassListSearch.do")
  public List<RegisterVO> AjaxClassListSearch(@RequestParam("year") int year,
		  										 @RequestParam("term") String term,
		  										 HttpSession session){
	  int semester = Integer.parseInt(term.substring(0,1)); 
	  RegisterVO vo = new RegisterVO();
	  vo.setStuId((String)session.getAttribute("id"));
	  vo.setRegisterYear(year);
	  vo.setRegisterTerm(semester);
	  List<RegisterVO> list = new ArrayList<RegisterVO>();
	  list = registerDao.classHistoryList(vo);
	  System.out.println(year);
	  System.out.println(semester);
	  return list;

  }
  
  //강의실(공지사항, QnA)
  @RequestMapping("stu/classHome.do")
  public String classHome() {
	 return "stu/class/classHome";
	}
  //강의실 - 공지사항 상세페이지
  @RequestMapping("stu/classNotice.do")
  public String classNotice() {
	 return "stu/class/classNotice";
  }
  //강의실 - 묻고답하기 상세페이지
  @RequestMapping("stu/classQna.do")
  public String classQna() {
	  return "stu/class/classQna";
  }
  //강의평가목록
  @RequestMapping("stu/rateClassList.do")
  public String rateClassList() {
	  return "stu/class/rateClassList";
  }
  
  //강의평가
  @RequestMapping("stu/rateClass.do")
  public String rateClass() {
	  return "stu/class/rateClass";
  }
  
  
  //올해성적
  @RequestMapping("stu/lookThisGrade.do")
  public String lookThisGrade() {
	  return "stu/grade/lookThisGrade";
  }
  
  //올해성적
  @RequestMapping("stu/lookAllGrades.do")
  public String lookAllGrades() {
	  return "stu/grade/lookAllGrades";
  }
  
  //내가 쓴 글
  @RequestMapping("stu/myPost.do")
  public String myPost() {
	  return "stu/myPost/myPost";
  }
  //내가 쓴 댓글
  @RequestMapping("stu/myComment.do")
  public String myComment() {
	  return "stu/myPost/myComment";
  }
  //Qna
  @RequestMapping("stu/myQna.do")
  public String myQna() {
	  return "stu/myPost/myQna";
  }
  
  
  
  
}
