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

import co.yedam.univ.reg.service.RegisterService;
import co.yedam.univ.reg.service.RegisterVO;
import co.yedam.univ.reg.serviceImpl.RegisterServiceImpl;
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
	@Autowired RegisterServiceImpl regImplDao;
	
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
  public String enrolment(Model model) {
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  int term = Integer.parseInt(timeStamp.substring(5,7));
	  
	  StudentVO vo = new StudentVO();
	  RegisterVO regVo = new RegisterVO();
	  
	  vo.setStuId("stu1"); // 로그인완성되면 세션에 있는 값 담아주기
	  model.addAttribute("student",stuDao.selectStudent(vo));
	  regVo.setStuId("stu1"); // 로그인 완성되면 세션이 있는 값 담아주기
	  regVo.setRegisterYear(year); //현재년도담기
	  regVo.setRegisterTerm(term); //현재학기담기
	  model.addAttribute("register",registerDao.registerList(regVo));
	  model.addAttribute("countReg",registerDao.countRegister(regVo));
	  return "stu/class/enrolment";
  }
  
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

  @ResponseBody
  @RequestMapping("stu/AjaxRegisterClass.do")
  public String AjaxRegisterClass(@RequestParam("subNo") int subNo,
		  					   	  	  @RequestParam("day") int day,
		  					   	  	  @RequestParam("time") int time) {
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  int term = Integer.parseInt(timeStamp.substring(5,7));
	  int semester = 0;
	  if(term > 8) {
		  semester = 2;
	  }else if(term <= 8) {
		  semester = 1;
	  }
	  String stuId = "stu1";
	  
	  registerDao.procedureSpareSeat(regImplDao.procedureInputData(subNo, year, semester, stuId, day, time));
	  
	  return "";
	  
  }
  
  //수강목록
  @RequestMapping("stu/classList.do")
  public String classList(Model model) {
	  // 수강목록 조회 검색시, 학생이 학교다닌 년도부터 현재 년도까지 option태그로 만들어 주기
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  model.addAttribute("currentYear",year);
	  StudentVO vo = new StudentVO();
	  vo.setStuId("stu1"); //나중에 세션값담기
	  model.addAttribute("stuJoinYear",stuDao.selectStudentJoinDate(vo));
	  
	  return "stu/class/classList";
  }
  
  //수강목록 - 링크땜에 두개있어
  @RequestMapping("stu/stu.do")
  public String stu(Model model) {
	  // 수강목록 조회 검색시, 학생이 학교다닌 년도부터 현재 년도까지 option태그로 만들어 주기
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  String timeStamp = sdf.format(new Date());
	  int year = Integer.parseInt(timeStamp.substring(0,4));
	  model.addAttribute("currentYear",year);
	  StudentVO vo = new StudentVO();
	  vo.setStuId("stu1"); //나중에 세션값담기
	  model.addAttribute("stuJoinYear",stuDao.selectStudentJoinDate(vo));
	  
	  return "stu/class/classList";
  }
  
  @ResponseBody
  @RequestMapping("stu/AjaxClassListSearch.do")
  public List<RegisterVO> AjaxClassListSearch(@RequestParam("year") int year,
		  										 @RequestParam("term") String term){
	  int semester = Integer.parseInt(term.substring(0,1)); 
	  RegisterVO vo = new RegisterVO();
	  vo.setStuId("stu1");
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
