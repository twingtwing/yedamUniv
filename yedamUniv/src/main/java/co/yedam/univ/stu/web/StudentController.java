package co.yedam.univ.stu.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
  //학적정보 조회
  @RequestMapping("stu/studentHome.do")
    public String studentHome() {
	  return "stu/myInfo/studentHome";
  }
  
  //학적정보수정
  @RequestMapping("stu/modifyStudent.do")
  public String modifyStudent() {
	  return "stu/myInfo/modifyStudent";
  }
  
  //휴학자퇴 신청
  @RequestMapping("stu/breakSchoolApp.do")
  public String breakSchoolApp() {
	  return "stu/myInfo/breakSchoolApp";
  }
  
  //복학 신청
  @RequestMapping("stu/returnSchoolApp.do")
  public String returnSchoolApp() {
	  return "stu/myInfo/returnSchoolApp";
  }
  
  //졸업 시물레이션
  @RequestMapping("stu/canIgraduate.do")
  public String canIgraduate() {
	  return "stu/myInfo/canIgraduate";
  }
  
  //수강신청
  @RequestMapping("stu/enrolment.do")
  public String enrolment() {
	  return "stu/class/enrolment";
  }
  
  //수강목록
  @RequestMapping("stu/classList.do")
  public String classList() {
	  return "stu/class/classList";
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
  
  
  //성적이의신청
  @RequestMapping("stu/helpMyGrade.do")
  public String helpMyGrade() {
	  return "stu/grade/helpMyGrade";
  }
  
  //성적이의답변
  @RequestMapping("stu/canIhelpYourGrade.do")
  public String canIhelpYourGrade() {
	  return "stu/grade/canIhelpYourGrade";
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