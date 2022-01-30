package co.yedam.univ.sub.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.comm.PageVO;
import co.yedam.univ.sub.service.CriteriaSub;
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
		
		vo.setProId((String)session.getAttribute("id"));
		model.addAttribute("subList", subDao.subjectList(vo.getProId()));
		return "pro/sub/mySub";
	}
	//강의목록
	
	@ResponseBody
	@RequestMapping("/pro/mySubListAjax.do")
	public List<SubVO> mySubList(HttpSession session, @RequestParam("semester") String subjectSemester,SubVO vo,Model model) {
		System.out.println(subjectSemester);
		vo.setProId((String)session.getAttribute("id"));
		vo.setSubjectSemester(subjectSemester);
		
		return subDao.subjectSelectList(vo);

	}
	
	//강의목록 상세
	@RequestMapping("pro/mySubDetail.do")
	public String mySubDetail(HttpSession session,@Param("subNo") int subNo,@Param("subName") String subName, SubVO vo, Model model) {
		//공지사항
		vo.setProId((String)session.getAttribute("id"));
		vo.setSubjectNo(subNo);
		vo.setSubjectName(subName);
		model.addAttribute("subNo", vo.getSubjectNo());
		model.addAttribute("subName", vo.getSubjectName());
		model.addAttribute("postLists", subDao.subjectPostList(vo)); 
	
		
		//묻고답하기
		SubVO vo2 = new SubVO();
		vo2.setProId((String)session.getAttribute("id"));
		vo2.setSubjectNo(subNo);
		model.addAttribute("qnaLists", subDao.subjectQnAList(vo2));
		
		
		//묻고답하기
		
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
	public String subApplyList(Model model,CriteriaSub cri,SubVO vo,HttpSession session) {
		cri.setProId((String)session.getAttribute("id"));
		vo.setProId((String)session.getAttribute("id"));
		vo.setSubjectSemester("2022-01");
		List<CriteriaSub> list = subDao.subjectPagenation(cri);
		model.addAttribute("subList",list);
		model.addAttribute("pageMaker", new PageVO(cri, list.size()));
		
		int num = subDao.subjectNum(vo);
		int count = subDao.subjectCount(vo);
		model.addAttribute("registerNum", num);
		model.addAttribute("subjectCount",num-count);
		return "pro/sub/subApplyList";
	}
	
	//강의 입력 상세
	@GetMapping("pro/subApplySelect.do")
	public String subApplySelect(Model model,SubVO vo) {
		model.addAttribute("sub", subDao.subjectSelect(vo));
		return "pro/sub/subApplySelect";
	}
	
	//강의 등록
	@GetMapping("pro/subInsert.do")
	public String subInsert() {
		return "pro/sub/subInsert";
	}
	
	//강의시간대 아잡스
	@ResponseBody
	@GetMapping("pro/ajaxSubTime.do")
	public List<Integer> ajaxSubTime(SubVO vo) {
		List<Integer> list = subDao.subjectDay(vo);
		return list;
	}
	
	//강의등록 폼
	@ResponseBody
	@PostMapping("pro/subInsertForm.do")
	public String subInsertForm(SubVO vo,HttpSession session) {
		String result = "N";
		vo.setProId((String)session.getAttribute("id"));
		if(vo.getSubjectDetail().equals("전공")) {
			//전공일 경우
			vo.setSubjectMajor((String)session.getAttribute("major"));
		}
		int r = subDao.subjectInsert(vo);
		if(r!=0) {
			vo = subDao.subjectSelect(vo);
			result = Integer.toString(vo.getSubjectNo());
		}
		return result;
	}
	
	//강의수정
	@GetMapping("pro/subUpdate.do")
	public String subUpdate(Model model,SubVO vo) {
		model.addAttribute("sub", subDao.subjectSelect(vo));
		return "pro/sub/subUpdate";
	}
	
	//강의수정폼
	@ResponseBody
	@PostMapping("pro/subUpdateForm.do")
	public String subUpdateForm(SubVO vo,HttpSession session) {
		String result = "N";
		
		//전공일 경우
		if(vo.getSubjectDetail().equals("전공")) {
			vo.setSubjectMajor((String)session.getAttribute("major"));
		}
		
		int r = subDao.subjectUpdate(vo);
		
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	
	//강의삭제
	@ResponseBody
	@PostMapping("pro/subjectDel.do")
	public String subjectDel(SubVO vo) {
		String result = "N";
		int r = subDao.subjectDelete(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}

}
