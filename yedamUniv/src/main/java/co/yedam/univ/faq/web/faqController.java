package co.yedam.univ.faq.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class faqController {
	
	@RequestMapping("/faq/haksaFaq.do")
	public String haksaFaq() {
		return "faq/haksaFaq";
	}
	
	@RequestMapping("/faq/scholarshipFaq.do")
	public String scholarshipFaq() {
		return "faq/scholarshipFaq";
	}

}
