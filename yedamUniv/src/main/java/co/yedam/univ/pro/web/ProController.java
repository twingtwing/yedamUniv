package co.yedam.univ.pro.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import co.yedam.univ.pro.service.ProService;
import co.yedam.univ.pro.service.ProfessorVO;

@Controller
public class ProController {
	@Autowired private ProService proDAO;
	
	@GetMapping("/pro/proInfo.do")
	public String proInfo(HttpSession session,Model model,ProfessorVO vo) {
		vo.setProId((String)session.getAttribute("id"));
		model.addAttribute("pro",proDAO.proSelect(vo));
		return "pro/myInfo/proInfo";
	}
	
	@GetMapping("/pro/proInfoUpdate.do")
	public String proInfoUpdate(HttpSession session,Model model,ProfessorVO vo) {
		vo.setProId((String)session.getAttribute("id"));
		model.addAttribute("pro",proDAO.proSelect(vo));
		return "pro/myInfo/proInfoUpdate";
	}
}
