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

	//권한없을때 갔는지 확인해야함ㄴ
	@RequestMapping("/all/noAuth.do")
	public String noAuth() {
		return "home/noAuth";
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
