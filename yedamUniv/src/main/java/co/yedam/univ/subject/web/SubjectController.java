package co.yedam.univ.subject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubjectController {
	
	@GetMapping("/subject/subjectList.do")
	public String subjectList() {
		return "subject/subjectList";
	}

}
