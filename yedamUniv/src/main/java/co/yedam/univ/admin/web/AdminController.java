package co.yedam.univ.admin.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.yedam.univ.board.service.BoardService;
import co.yedam.univ.board.service.BoardVO;
import co.yedam.univ.qna.service.qnaVO;

@Controller
public class AdminController {
	
	@Autowired
	public BoardService boardDao;
	
	
	//공지사항메뉴-학사 등록
	@RequestMapping("/admin/addHaksa.do")
	public String addHaksa() {
		return "admin/Notice/addHaksa";
	}
	
	//공지사항메뉴-장학사 등록
		@RequestMapping("/admin/addJangHaksa.do")
		public String addJangHaksa() {
			return "admin/Notice/addJangHaksa";
		}
	
	//공지사항메뉴-학사&장학사 조회 | 학사&장학사 수정페이지로 이동
	@RequestMapping("/admin/selectBoard.do")
	public String selectBoard(@RequestParam("boardno") int boardno,
							  @RequestParam("boardKind") String boardKind,
							  @RequestParam("doing") String doing,
							  Model model) {
		BoardVO vo = new BoardVO();
		String returnPage = "";
		vo.setBoardNo(boardno);
		vo.setBoardKind(boardKind);
		model.addAttribute("selectBoard",boardDao.boardSelect(vo));			
		
		if(doing.equals("select")) {
			if(vo.getBoardKind().equals("Haksa")) {
				returnPage = "admin/Notice/selectHaksa";
			}else if(vo.getBoardKind().equals("JangHaksa")) {
				returnPage = "admin/Notice/selectJangHaksa";
			}
		}else if(doing.equals("update")) {
			if(vo.getBoardKind().equals("Haksa")) {
				returnPage = "admin/Notice/modiHaksa";
			}else if(vo.getBoardKind().equals("JangHaksa")) {
				returnPage = "admin/Notice/modiJangHaksa";
			}
		}
		return returnPage;
	}
	
	//공지사항메뉴-학사&장학사 수정
	@RequestMapping("/admin/updateBoard.do")
	public String updateBoard(@RequestParam("no") int no,
							@RequestParam("title") String title,
							@RequestParam("contents") String contents,
							@RequestParam("kind") String kind,
							Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardNo(no);
		vo.setBoardTitle(title);
		vo.setBoardContents(contents);
		int n = boardDao.boardUpdate(vo);
		
		String returnPage = "";
		if(n > 0) {
			vo.setBoardNo(no);
			if(kind.equals("Haksa")) {
				vo.setBoardKind("Haksa");
				model.addAttribute("selectBoard",boardDao.boardSelect(vo));
				returnPage = "admin/Notice/selectHaksa";
				
			}else if(kind.equals("JangHaksa")) {
				vo.setBoardKind("JangHaksa");
				model.addAttribute("selectBoard",boardDao.boardSelect(vo));
				returnPage = "admin/Notice/selectJangHaksa";
			}
		}
		return returnPage;
	}
	
	//공지사항메뉴-학사&장학사 삭제
	@RequestMapping("/admin/deleteBoard.do")
	public String ajaxDeleteBoard(@RequestParam("boardNo") int boardNo,
								  @RequestParam("boardKind") String boardKind,
								  Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardNo(boardNo);
		int n = boardDao.boardDelete(vo);
		
		String returnPage = "";
		if(n > 0) {
			if(boardKind.equals("Haksa")) {
				vo.setBoardKind("Haksa");
				List<BoardVO> list = boardDao.boardList(vo);
				model.addAttribute("Haksa",list);
				returnPage = "admin/home/adminMain";
				
			}else if(boardKind.equals("JangHaksa")) {
				vo.setBoardKind("JangHaksa");
				List<BoardVO> list = boardDao.boardList(vo);
				model.addAttribute("JangHaksa",list);
				returnPage = "admin/Notice/listJangHaksa";
			}
		}
		return returnPage; 
	}
	
	//공지사항메뉴-장학사 목록
	@RequestMapping("/admin/listJangHaksa.do")
	public String listJangHaksa() {
		return "admin/Notice/listJangHaksa";
	}
	
	//공지사항메뉴-QnA 목록
//	@RequestMapping("/admin/listQnA.do")
//	public String listQnA() {
//		
//		return "admin/Notice/listQnA";
//	}
	
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
