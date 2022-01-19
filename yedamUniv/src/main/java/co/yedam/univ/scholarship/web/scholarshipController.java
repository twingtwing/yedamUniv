package co.yedam.univ.scholarship.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class scholarshipController {
	
	// 장학안내
	@RequestMapping("/scholarship/scholarshipGuide.do")
	public String scholarshipGuide() {
		return "scholarship/scholarshipGuide";
	}

}
