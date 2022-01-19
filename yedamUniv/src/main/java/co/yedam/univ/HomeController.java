package co.yedam.univ;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/all/home.do")
	public String home() {
		return "home/main";
	}
	
}
