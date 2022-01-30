package co.yedam.univ.user.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.comm.PageVO;
import co.yedam.univ.reg.service.RegisterVO;
import co.yedam.univ.stu.service.StuService;
import co.yedam.univ.stu.service.StuVO;
import co.yedam.univ.sub.service.SubVO;
import co.yedam.univ.user.service.UserService;
import co.yedam.univ.user.service.UserVO;

@Controller
public class UserController {
	@Autowired private UserService userDAO;
	@Autowired private StuService stuDAO;
	
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
	
	//admin
	//멤버관리메뉴-교직원 목록
	@RequestMapping("/admin/listEmp.do")
	public String listEmp(Model model,UserVO vo, @Param("type") String type, @Param("search") String search) {
		if(type != null && type.equals("id")) {
			vo.setId(search);
		}else if(type != null && type.equals("name")) {
			vo.setName(search);
		}else if(type != null && type.equals("tel")) {
			vo.setTel(search);
		}else if(type != null && type.equals("rec")) {
			vo.setRec(search);
		}
		List<UserVO> list  = userDAO.empList(vo);
		model.addAttribute("emp", list);
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));;
	    return "admin/Users/listEmp";
	 }
	
	@GetMapping("/admin/selectEmp.do")
	public String selectEmp(Model model,UserVO vo) {
		model.addAttribute("emp",userDAO.empSelect(vo));
		return "admin/Users/selectEmp";
	}
	
	@ResponseBody
	@PostMapping("/admin/updateEmp.do")
	public String updateEmp(UserVO vo) {
		String result = "N";
		int r = userDAO.empUpdate(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	   
	//멤버관리메뉴-교수 목록
	@RequestMapping("/admin/listProf.do")
	public String listProf(Model model,UserVO vo,@Param("type") String type, @Param("search") String search) {
		if(type != null && type.equals("id")) {
			vo.setId(search);
		}else if(type != null && type.equals("name")) {
			vo.setName(search);
		}else if(type != null && type.equals("tel")) {
			vo.setTel(search);
		}else if(type != null && type.equals("rec")) {
			vo.setRec(search);
		}
		List<UserVO> list  = userDAO.profList(vo);
		model.addAttribute("prof",list);		
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));;
		return "admin/Users/listProf";
	}
	
	@GetMapping("/admin/selectProf.do")
	public String selectProf(Model model,UserVO vo) {
		SubVO sbo = new SubVO();
		sbo.setProId(vo.getId());
		model.addAttribute("pro",userDAO.profSelect(vo));
		model.addAttribute("list",userDAO.sublist(sbo));
		return "admin/Users/selectProf";
	}
	
	@ResponseBody
	@PostMapping("/admin/updatePro.do")
	public String updatePro(UserVO vo) {
		String result = "N";
		int r = userDAO.profUpdate(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}
	   
	//멤버관리메뉴-학생 목록
	@RequestMapping("/admin/listStu.do")
	public String listStu(Model model,UserVO vo,@Param("type") String type, @Param("search") String search) {
		if(type != null && type.equals("id")) {
			vo.setId(search);
		}else if(type != null && type.equals("name")) {
			vo.setName(search);
		}else if(type != null && type.equals("tel")) {
			vo.setTel(search);
		}else if(type != null && type.equals("rec")) {
			vo.setRec(search);
		}
		List<UserVO> list  = userDAO.stuList(vo);
		model.addAttribute("stu",list);
		model.addAttribute("pageMaker", new PageVO(vo, list.size()));;
		return "admin/Users/listStu";
	}
	
	@GetMapping("/admin/selectStu.do")
	public String selectStu(Model model,StuVO vo) {
		  RegisterVO rvo = new RegisterVO();
		  rvo.setStuId(vo.getStuId());
		  model.addAttribute("stu",stuDAO.stuMajor(vo));
		  model.addAttribute("reg",stuDAO.stuReg(vo));
		  model.addAttribute("list",userDAO.reglist(rvo));
		return "admin/Users/selectStu";
	}
	
	@ResponseBody
	@PostMapping("/admin/updateStu.do")
	public String updateStu(UserVO vo) {
		String result = "N";
		int r = userDAO.stuUpdate(vo);
		if(r!=0) {
			result = "Y";
		}
		return result;
	}	

}
