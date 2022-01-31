package co.yedam.univ.user.service;

import java.util.List;

import co.yedam.univ.reg.service.RegisterVO;
import co.yedam.univ.sub.service.SubVO;

public interface UserService {
	UserVO loginStu(UserVO vo);
	UserVO loginPro(UserVO vo);
	UserVO loginEmp(UserVO vo);
	
	List<UserVO> stuList(UserVO vo);
	List<UserVO> profList(UserVO vo);
	List<UserVO> empList(UserVO vo);
	
	UserVO profSelect(UserVO vo);
	UserVO empSelect(UserVO vo);
	
	List<SubVO> sublist(SubVO vo);
	List<RegisterVO> reglist(RegisterVO vo);
	
	int stuUpdate(UserVO vo);
	int profUpdate(UserVO vo);
	int empUpdate(UserVO vo);
}
