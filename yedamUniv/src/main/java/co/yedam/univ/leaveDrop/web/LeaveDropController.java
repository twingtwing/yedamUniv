package co.yedam.univ.leaveDrop.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.comm.PageVO;
import co.yedam.univ.leaveDrop.service.LeaveDropService;
import co.yedam.univ.leaveDrop.service.LeaveDropVO;
import co.yedam.univ.stu.service.StuService;
import co.yedam.univ.stu.service.StuVO;

@Controller
public class LeaveDropController {
	@Autowired StuService stuDAO;
	@Autowired LeaveDropService leaveDropDAO; 
	
	//학생 
	//휴학자퇴 신청페이지
	@RequestMapping("stu/breakSchoolApp.do")
	public String breakSchoolApp(StuVO vo, LeaveDropVO lVo,Model model, HttpSession session) {
		vo.setStuId((String)session.getAttribute("id"));
		lVo.setStuId((String)session.getAttribute("id"));
		model.addAttribute("stu",stuDAO.stuSelect(vo));
		model.addAttribute("list",leaveDropDAO.leaveDropList(lVo));
		model.addAttribute("count",leaveDropDAO.leaveDropState(lVo));
		return "stu/myInfo/breakSchoolApp";
	}
	
	//휴학신청
	@ResponseBody
	@PostMapping("stu/leaveInsert.do")
	public String leaveInsert(LeaveDropVO vo, HttpSession session) {
		vo.setStuId((String)session.getAttribute("id"));
		String result = "N";
		int r = leaveDropDAO.leaveInsert(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	
	//자퇴 신청
	@ResponseBody
	@PostMapping("stu/dropInsert.do")
	public String dropInsert(LeaveDropVO vo, HttpSession session) {
		vo.setStuId((String)session.getAttribute("id"));
		String result = "N";
		int r = leaveDropDAO.dropInsert(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
		
	//복학 신청
	@RequestMapping("stu/returnSchoolApp.do")
	public String returnSchoolApp(LeaveDropVO vo, HttpSession session,Model model) {
		vo.setStuId((String)session.getAttribute("id"));
		model.addAttribute("leave",leaveDropDAO.leaveSelect(vo));
		return "stu/myInfo/returnSchoolApp";
	}
	
	//복학신청UPDATE
	@ResponseBody
	@PostMapping("stu/returnUpBack.do")
	public String returnUpBack(LeaveDropVO vo) {
		String result = "N";
		int r = leaveDropDAO.leaveBack(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	
	//교수
	//자퇴 및 휴학 리스트
	@GetMapping("/pro/leaveDrop.do")
	public String leaveDrop(LeaveDropVO vo,Model model) {
		List<LeaveDropVO> list = leaveDropDAO.ldList(vo);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));
		return "pro/leaveDrop/leaveDrop";
	}
	
	//휴학 상세
	@GetMapping("/pro/leaveDetail.do")
	public String leaveDetail(LeaveDropVO vo,Model model) {
		model.addAttribute("leave",leaveDropDAO.leavePrADSelect(vo));
		return "pro/leaveDrop/leaveDetail";
	}
	
	//휴학처리
	@ResponseBody
	@PostMapping("/pro/leaveDetailUp.do")
	public String leaveDetailUp(LeaveDropVO vo,Model model) {
		String result = "N";
		vo.setLeaveProcess("P");
		int r= leaveDropDAO.leaveProcess(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	
	//자퇴 상세
	@GetMapping("/pro/dropDetail.do")
	public String dropDetail(LeaveDropVO vo,Model model) {
		model.addAttribute("drop",leaveDropDAO.dropPrADSelect(vo));
		return "pro/leaveDrop/dropDetail";
	}
	
	//자퇴처리
	@ResponseBody
	@PostMapping("/pro/dropDetailUp.do")
	public String dropDetailUp(LeaveDropVO vo,Model model) {
		String result = "N";
		vo.setDropProcess("P");
		int r= leaveDropDAO.dropProcess(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	
	//관리자
	
	//멤버관리메뉴-휴학
	@RequestMapping("/admin/listLeave.do")
	public String listLeave(LeaveDropVO vo, @Param("type") String type, @Param("search") String search,Model model) {
		if(type != null && type.equals("id")) {
			vo.setStuId(search);
		}else if(type != null && type.equals("name")) {
			vo.setStuName(search);
		}else{
			vo.setStuId("");
			vo.setStuName("");
		}
		
		if(vo.getGrade() == null) {
			vo.setGrade("");
		}
		if(vo.getLeaveProcess() == null) {
			vo.setLeaveProcess("");
		}
		if(vo.getBackStete()==null) {
			vo.setBackStete("");
		}
		List<LeaveDropVO> list = leaveDropDAO.leaveList(vo);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));
		return "admin/Users/listLeave";
	}
	
	@GetMapping("/admin/selectRest.do")
	public String selectRest(LeaveDropVO vo, Model model) {
		model.addAttribute("leave",leaveDropDAO.leavePrADSelect(vo));
		return "admin/Users/selectRest";
	}
	
	@ResponseBody
	@PostMapping("/admin/restUpdate.do")
	public String restUpdate(LeaveDropVO vo) {
		String result = "N";
		StuVO svo = new StuVO();
		svo.setStuId(vo.getStuId());
		svo.setStuRec("휴학");
		vo.setLeaveProcess("C");
		int r= leaveDropDAO.leaveProcess(vo);
		if(r!=0) {
			r = leaveDropDAO.stuRecUp(svo);
			if(r!=0) {
				result = "Y";
			}
		}
		return result;
	}
	
	//멤버관리메뉴-복학
	@RequestMapping("/admin/listReturn.do")
	public String listReturn(LeaveDropVO vo, @Param("type") String type, @Param("search") String search, Model model) {
		vo.setNum("1");
		if(type != null && type.equals("id")) {
			vo.setStuId(search);
		}else if(type != null && type.equals("name")) {
			vo.setStuName(search);
		}else{
			vo.setStuId("");
			vo.setStuName("");
		}
		
		if(vo.getGrade() == null) {
			vo.setGrade("");
		}
		if(vo.getLeaveProcess() == null) {
			vo.setLeaveProcess("");
		}
		if(vo.getBackStete()==null) {
			vo.setBackStete("");
		}
		List<LeaveDropVO> list = leaveDropDAO.leaveList(vo);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));
		return "admin/Users/listReturn";
	}
	
	@GetMapping("/admin/selectReturn.do")
	public String selectReturn(LeaveDropVO vo, Model model) {
		model.addAttribute("leave",leaveDropDAO.leavePrADSelect(vo));
		return "admin/Users/selectReturn";
	}
	
	@ResponseBody
	@PostMapping("/admin/returnUpdate.do")
	public String returnUpdate(LeaveDropVO vo) {
		String result = "N";
		StuVO svo = new StuVO();
		svo.setStuId(vo.getStuId());
		svo.setStuRec("재학");
		vo.setBackStete("Y");
		int r= leaveDropDAO.leaveBack(vo);
		if(r!=0) {
			r = leaveDropDAO.stuRecUp(svo);
			if(r!=0) {
				result = "Y";
			}
		}
		return result;
	}
	
	//멤버관리메뉴-자퇴
	@RequestMapping("/admin/listDrop.do")
	public String listDrop(LeaveDropVO vo, @Param("type") String type, @Param("search") String search,Model model) {
		if(type != null && type.equals("id")) {
			vo.setStuId(search);
			vo.setStuName("");
		}else if(type != null && type.equals("name")) {
			vo.setStuName(search);
			vo.setStuId("");
		}else{
			vo.setStuId("");
			vo.setStuName("");
		}
		if(vo.getGrade() == null) {
			vo.setGrade("");
		}
		if(vo.getDropProcess() == null) {
			vo.setDropProcess("");
		}
		List<LeaveDropVO> list = leaveDropDAO.dropList(vo);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));
		return "admin/Users/listDrop";
	}
	
	@GetMapping("/admin/selectDrop.do")
	public String selectDrop(LeaveDropVO vo, Model model) {
		model.addAttribute("drop",leaveDropDAO.dropPrADSelect(vo));
		return "admin/Users/selectDrop";
	}
	
	@ResponseBody
	@PostMapping("/admin/dropUpdate.do")
	public String dropUpdate(LeaveDropVO vo) {
		String result = "N";
		System.out.println(vo.getStuId()+"+======");
		StuVO svo = new StuVO();
		svo.setStuId(vo.getStuId());
		svo.setStuChg("자퇴");
		svo.setStuState("D");
		vo.setDropProcess("C");
		int r= leaveDropDAO.dropProcess(vo);
		if(r!=0) {
			r = leaveDropDAO.stuChg(svo);
			if(r!=0) {
				result = "Y";
			}
		}
		return result;
	}
}
