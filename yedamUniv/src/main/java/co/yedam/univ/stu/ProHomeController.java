package co.yedam.univ.stu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProHomeController {

	@GetMapping("/pro/pro.do")
	public String proPage() {
		return "pro/home/proMain";
	}
}
