package co.yedam.univ.pro;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StuHomeController {

	@GetMapping("/stu/stu.do")
	public String stuPage() {
		return "stu/home/stuMain";
	}
}
