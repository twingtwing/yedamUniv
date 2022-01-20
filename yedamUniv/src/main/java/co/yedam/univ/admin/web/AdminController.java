package co.yedam.univ.admin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	//공지사항메뉴-학사 등록
	@RequestMapping("/admin/addHaksa.do")
	public String addHaksa() {
		return "admin/Notice/addHaksa";
	}
	
	//공지사항메뉴-장학사 목록
	@RequestMapping("/admin/listJangHaksa.do")
	public String listJangHaksa() {
		return "admin/Notice/listJangHaksa";
	}
	
	//공지사항메뉴-장학사 등록
	@RequestMapping("/admin/addJangHaksa.do")
	public String addJangHaksa() {
		return "admin/Notice/addJangHaksa";
	}
	
	//공지사항메뉴-QnA 목록
	@RequestMapping("/admin/listQnA.do")
	public String listQnA() {
		return "admin/Notice/listQnA";
	}
	
	//공지사항메뉴-FAQ 목록
	@RequestMapping("/admin/listFAQ.do")
	public String listFAQ() {
		return "admin/Notice/listFAQ";
	}
	
	//공지사항메뉴-FAQ 등록
	@RequestMapping("/admin/addFAQ.do")
	public String addFAQ() {
		return "admin/Notice/addFAQ";
	}
	
	//멤버관리메뉴-교직원 목록
	@RequestMapping("/admin/listEmp.do")
	public String listEmp() {
		return "admin/Users/listEmp";
	}
	
	//멤버관리메뉴-교수 목록
	@RequestMapping("/admin/listProf.do")
	public String listProf() {
		return "admin/Users/listProf";
	}
	
	//멤버관리메뉴-학생 목록
	@RequestMapping("/admin/listStu.do")
	public String listStu() {
		return "admin/Users/listStu";
	}
	
	//멤버관리메뉴-휴·복학/자퇴 신청 관리
	@RequestMapping("/admin/listPapers.do")
	public String listPapers() {
		return "admin/Users/listPapers";
	}
	
	//자유게시판메뉴-자유게시판 관리
	@RequestMapping("/admin/listBoard.do")
	public String listBoard() {
		return "admin/FreeBoard/listBoard";
	}
	
	//자유게시판메뉴-자유게시판 등록
	@RequestMapping("/admin/addBoard.do")
	public String addBoard() {
		return "admin/FreeBoard/addBoard";
	}
	
	//자유게시판메뉴-신고게시글 관리
	@RequestMapping("/admin/listIllegal.do")
	public String listIllegal() {
		return "admin/FreeBoard/listIllegal";
	}
	
	//강의등록메뉴-강의등록처리
	@RequestMapping("/admin/listAddClass.do")
	public String listAddClass() {
		return "admin/AddClass/listAddClass";
	}
}
