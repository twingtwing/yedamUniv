package co.yedam.univ;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.univ.board.service.BoardService;
import co.yedam.univ.board.service.BoardVO;

@Controller
public class HomeController {
	@Autowired
	public BoardService boardDao;
	
	@RequestMapping("/all/home.do")
	public String home() {
		return "home/main";
	}

	@GetMapping("/admin/admin.do")
	public String admin(Model model) {
		BoardVO vo = new BoardVO();
		vo.setBoardKind("Haksa");
		List<BoardVO> HaksaList = boardDao.boardList(vo);
		model.addAttribute("Haksa",HaksaList);
		return "admin/home/adminMain";
	}
}
