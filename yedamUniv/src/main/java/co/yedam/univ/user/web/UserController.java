package co.yedam.univ.user.web;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.user.service.UserService;
import co.yedam.univ.user.service.UserVO;

@Controller
public class UserController {
	@Autowired UserService userDAO;
	
	@GetMapping("/all/login.do")
	public String login() {
		return "home/login";
	}
	
	@ResponseBody
	@PostMapping(value = "/all/LoginForm.do", produces = "application/text; charset=utf8")
	public String loginForm(UserVO vo, @Param("user") String user,HttpSession session) {
		String result = "N";
		if(user.equals("stu")) {
			vo = userDAO.loginStu(vo);
		}else if(user.equals("pro")) {
			vo = userDAO.loginPro(vo);
		}else if(user.equals("admin")) {
			vo = userDAO.loginEmp(vo);
			System.out.println(vo.getName());
		}
		if(vo!= null) {
			result = vo.getName();
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", vo.getName());
			session.setAttribute("author", vo.getAuthor());
			if(user.equals("stu")) {
				session.setAttribute("major", vo.getMajor());
				session.setAttribute("grade", vo.getGrade());
			}else if(user.equals("pro")) {
				session.setAttribute("major", vo.getMajor());
			}
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping(value = "/all/logout.do", produces = "application/text; charset=utf8")
	public String logout(HttpSession session,@Param("name") String name) {
		session.invalidate();
		return name;
	}
	
}
