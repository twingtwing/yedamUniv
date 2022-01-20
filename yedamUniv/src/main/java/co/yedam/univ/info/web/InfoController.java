package co.yedam.univ.info.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	
	@RequestMapping("/intro/pres.do")
	public String pres() {
		return "intro/pres";
	}
	
	@RequestMapping("/intro/campus.do")
	public String campus() {
		return "intro/campus";
	}
	
	@RequestMapping("/intro/about.do")
	public String about() {
		return "intro/about";
	}
	
	@RequestMapping("/intro/password.do")
	public String password() {
		return "intro/password";
	}
	

}
