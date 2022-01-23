package co.yedam.univ.sub.web;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.sub.service.SubService;
import co.yedam.univ.sub.service.SubVO;

@Controller
public class SubController {
	@Autowired 
	SubService subDao;
	
	//임의 교수 로그인 session
	//강의목록
	@GetMapping("pro/mySub.do")
	public String mySub(HttpSession session,SubVO vo, Model model) {
		session.setAttribute("proId", "pro1");
		session.setAttribute("proName", "강동원");
		vo.setProId((String)session.getAttribute("proId"));
		model.addAttribute("subList", subDao.subjectList(vo.getProId()));
		return "pro/sub/mySub";
	}
	//강의목록
	@ResponseBody
	@GetMapping("pro/mySubListAjax.do")
	public Model mySubList(HttpSession session, @Param("semester") String subjectSemester,SubVO vo,Model model) {
		
		
		vo.setProId((String)session.getAttribute("proId"));
		vo.setSubjectSemester(subjectSemester);
		
		
		return model.addAttribute("subjectList", subDao.subjectSelectList(vo));
	}
	
	//강의목록 상세
	@GetMapping("pro/mySubDetail.do")
	public String mySubDetail(@Param("subNo") String id) {
		return "pro/sub/mySubDetail";
	}
	
	//강의 부분상세
	@GetMapping("pro/subPlan.do")
	public String subPlan(@Param("subNo") String id) {
		return "pro/sub/subPlan";
	}
	
	//강의부분 수정
	@GetMapping("pro/subPlanUp.do")
	public String subPlanUp(@Param("subNo") String id) {
		return "pro/sub/subPlanUp";
	}
	
	//강의 입력 리스트
	@GetMapping("pro/subApplyList.do")
	public String subApplyList() {
		return "pro/sub/subApplyList";
	}
	
	//강의 입력 상세
	@GetMapping("pro/subApplySelect.do")
	public String subApplySelect(@Param("subNo") String id) {
		return "pro/sub/subApplySelect";
	}
	
	//강의 등록
	@GetMapping("pro/subInsert.do")
	public String subInsert() {
		return "pro/sub/subInsert";
	}
	
	@PostMapping("pro/subInsertForm.do")
	public String subInsertForm() {
		
		return "";
	}
	
	//강의수정
	@GetMapping("pro/subUpdate.do")
	public String subUpdate(@Param("subNo") String id) {
		return "pro/sub/subUpdate";
	}

}
