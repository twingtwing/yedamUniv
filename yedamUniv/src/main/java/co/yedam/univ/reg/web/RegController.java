package co.yedam.univ.reg.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RegController {
	
	@GetMapping("/pro/RegGradeInsert.do")
	public String RegGradeInsert(@Param("subNo") String id) {
		return "pro/grade/RegGradeInsert";
	}

}
