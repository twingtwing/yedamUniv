package co.yedam.univ.faq.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class faqController {
	
	// 학사 FAQ
	@RequestMapping("/faq/haksaFaq.do")
	public String haksaFaq() {
		return "faq/haksaFaq";
	}
	
	// 장학 FAQ
	@RequestMapping("/faq/scholarshipFaq.do")
	public String scholarshipFaq() {
		return "faq/scholarshipFaq";
	}

}
