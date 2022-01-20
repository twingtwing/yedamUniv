package co.yedam.univ.tuition.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class tuitionController {
	
	// 등록금 수납안내
	@RequestMapping("/tuition/tuitionGuide.do")
	public String tuitionGuide() {
		return "tuition/tuitionGuide";
	}
	
	// 등록금 수납일정
	@RequestMapping("/tuition/tuitionPlan.do")
	public String tuitionPlan() {
		return "tuition/tuitionPlan";
	}
	
	// 등록금 수납일정 상세
	@RequestMapping("/tuition/tuitionPlanRead.do")
	public String tuitionPlanRead() {
		return "tuition/tuitionPlanRead";
	}

}
