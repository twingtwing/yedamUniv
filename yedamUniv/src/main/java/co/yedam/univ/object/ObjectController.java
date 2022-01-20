package co.yedam.univ.object;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ObjectController {
	
	//list
	@GetMapping("/pro/objectList.do")
	public String objectList(@Param("subNo") String id) {
		return "pro/object/objectList";
	}
	
	//select
	@GetMapping("/pro/objectSelect.do")
	public String objectSelect(@Param("objectNo") String id) {
		return "pro/object/objectSelect";
	}

}
