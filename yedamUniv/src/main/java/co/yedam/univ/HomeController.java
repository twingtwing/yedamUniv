package co.yedam.univ;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/all/home.do")
	public String home() {
		return "home/main";
	}
	@GetMapping("/stu/stu.do")
	public String stuPage() {
		return "stu/home/stuMain";
	}
	
	@GetMapping("/pro/pro.do")
	public String proPage() {
		return "pro/home/proMain";
	}

	@GetMapping("/admin/admin.do")
	public String admin() {
		return "admin/home/adminMain";
	}
}
