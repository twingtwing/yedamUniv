package co.yedam.univ.subBoard.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubBoardController {
	
	//list
	@GetMapping("pro/subBoardList.do")
	public String subBoardList(@Param("subNo") String id) {
		return "pro/subBoard/subBoardList";
	}
	
	//select
	@GetMapping("pro/subBoardSelect.do")
	public String subBoardSelect(@Param("bsNo") String id) {
		return "pro/subBoard/subBoardSelect";
	}
	
	//insert
	@GetMapping("pro/subBoardInsert.do")
	public String subBoardInsert() {
		return "pro/subBoard/subBoardInsert";
	}
	
	//update
	@GetMapping("pro/subBoardUp.do")
	public String subBoardUp(@Param("bsNo") String id){
		return "pro/subBoard/subBoardUp";
	}

}
