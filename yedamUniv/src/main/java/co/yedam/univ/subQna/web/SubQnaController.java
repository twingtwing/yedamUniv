package co.yedam.univ.subQna.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubQnaController {
	
	//select
		@GetMapping("pro/subQnaList.do")
	public String subQnaList(@Param("subNo") String id) {
		return "pro/subQna/subQnaList";
	}
	
	//select
	@GetMapping("pro/subQnaSelect.do")
	public String subQnaSelect(@Param("sqNo") String id) {
		return "pro/subQna/subQnaSelect";
	}

}
