package co.yedam.univ.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminHomeController {
	
	@GetMapping("/admin/admin.do")
	public String admin() {
		return "admin/home/adminMain";
	}

}
