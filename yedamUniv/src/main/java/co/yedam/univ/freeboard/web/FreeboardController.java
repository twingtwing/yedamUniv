package co.yedam.univ.freeboard.web;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.univ.freeboard.service.FreeboardService;
import co.yedam.univ.freeboard.service.FreeboardVO;

@Controller
public class FreeboardController {

	@Autowired
	FreeboardService freeboardDao;

	// 자유게시판 리스트
	@RequestMapping("/freeboard/freeBoardList.do")
	public String freeBoardList(Model model, FreeboardVO vo) {
		model.addAttribute("freeboards", freeboardDao.freeBoardList());
		return "freeboard/freeBoardList";
	}

	// 자유게시판 글쓰기 폼
	@RequestMapping("/freeboard/freeBoardInsert.do")
	public String freeBoardInsert() {
		return "freeboard/freeBoardInsert";
	}

	// 자유게시판 글 등록
	@RequestMapping("/freeboard/freeBoardResister.do")
	public String freeBoardResister(FreeboardVO vo) {
		freeboardDao.freeBoardInsert(vo);
		System.out.println("=====================");
		System.out.println(vo.getcTitle());
		System.out.println(vo.getcWriter());
		return "redirect:freeBoardList.do";
	}

	// 자유게시판 글 읽기
	@RequestMapping("/freeboard/freeBoardRead.do")
	public String freeBoardRead(FreeboardVO vo, @Param("cNo") int cNo, Model model, HttpSession session) {
		session.setAttribute("cNo", cNo);
		vo.setcNo(cNo);
		vo = freeboardDao.freeBoardSelect(vo);
		model.addAttribute("Read", vo);
		model.addAttribute("cmts", freeboardDao.cmtList(vo));
		return "freeboard/freeBoardRead";
	}


	// 자유게시판 댓글 등록
	@RequestMapping("/freeboard/cmtResister.do")
	public String cmtResister(FreeboardVO vo) {
		freeboardDao.cmtInsert(vo);
		return "redirect:freeBoardRead.do";
	}

}
