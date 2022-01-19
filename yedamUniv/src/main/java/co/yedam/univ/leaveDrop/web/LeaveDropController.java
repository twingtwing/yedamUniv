package co.yedam.univ.leaveDrop.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LeaveDropController {
	
	//자퇴 및 휴학 리스트
	@GetMapping("/pro/leaveDrop.do")
	public String leaveDrop() {
		return "pro/leaveDrop/leaveDrop";
	}
	
	//자퇴 상세
	@GetMapping("/pro/leaveDetail.do")
	public String leaveDetail(@Param("leaveNo") String id) {
		return "pro/leaveDrop/leaveDetail";
	}
	
	//휴학 상세
	@GetMapping("/pro/dropDetail.do")
	public String dropDetail(@Param("stuId") String id) {
		return "pro/leaveDrop/dropDetail";
	}

}
