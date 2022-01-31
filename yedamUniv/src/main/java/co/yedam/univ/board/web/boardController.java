package co.yedam.univ.board.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.yedam.univ.board.service.BoardService;
import co.yedam.univ.board.service.BoardVO;

@Controller
public class boardController {
	
	@Autowired
	public BoardService boardDao;
	
	
	// 학사 공지사항 리스트
	@RequestMapping("board/haksaBoardList.do")
	public String haksaBoardList(Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardKind("Haksa");
		List<BoardVO> HaksaList = boardDao.boardList(vo);
		model.addAttribute("Haksa",HaksaList);
		
		return "board/haksaBoardList";
	}
	
	// 학사 공지사항 상세보기
	@GetMapping("board/haksaBoardRead.do")
	public String haksaBoardRead(@RequestParam("boardNo") int boardNo,
								 Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardNo(boardNo);
		vo.setBoardKind("Haksa");
		int n = boardDao.boardHitsUP(vo);
		if(n > 0) {
			model.addAttribute("Haksa",boardDao.boardSelect(vo));			
		}
		
		return "board/haksaBoardRead";
	}
	
	// 장학 공지사항 리스트
	@RequestMapping("board/scholarshipBoardList.do")
	public String scholarshipBoardList(Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardKind("JangHaksa");
		List<BoardVO> JangHaksaList = boardDao.boardList(vo);
		model.addAttribute("JangHaksa",JangHaksaList);
		
		return "board/scholarshipBoardList";
	}
	
	// 장학 공지사항 상세보기
	@RequestMapping("board/scholarshipBoardRead.do")
	public String scholarshipBoardRead(@RequestParam("boardNo") int boardNo,
									   Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardNo(boardNo);
		vo.setBoardKind("JangHaksa");
		int n = boardDao.boardHitsUP(vo);
		if(n > 0) {
			model.addAttribute("JangHaksa",boardDao.boardSelect(vo));			
		}
		
		return "board/scholarshipBoardRead";
	}

	// 자유게시판 리스트
	@RequestMapping("board/freeBoardList.do")
	public String freeBoardList() {
		return "board/freeBoardList";
	}

	
}
