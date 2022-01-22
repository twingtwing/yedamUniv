package co.yedam.univ.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/all/login.do")
	public String login() {
		return "home/login";
	}
}
