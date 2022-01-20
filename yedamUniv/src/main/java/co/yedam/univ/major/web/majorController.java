package co.yedam.univ.major.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class majorController {
	
	@GetMapping("/major/majorList.do")
	public String subjectList() {
		return "major/majorList";
	}

}
