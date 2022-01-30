package co.yedam.univ.user.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.reg.service.RegisterVO;
import co.yedam.univ.sub.service.SubVO;
import co.yedam.univ.user.service.UserMapper;
import co.yedam.univ.user.service.UserService;
import co.yedam.univ.user.service.UserVO;

@Repository("userDAO")
public class UserServiceImpl implements UserService{
	@Autowired private UserMapper map;
	
	@Override
	public UserVO loginStu(UserVO vo) {
		return map.loginStu(vo);
	}

	@Override
	public UserVO loginPro(UserVO vo) {
		return map.loginPro(vo);
	}

	@Override
	public UserVO loginEmp(UserVO vo) {
		return map.loginEmp(vo);
	}

	@Override
	public List<UserVO> stuList(UserVO vo) {
		return map.stuList(vo);
	}

	@Override
	public List<UserVO> profList(UserVO vo) {
		return map.profList(vo);
	}

	@Override
	public List<UserVO> empList(UserVO vo) {
		return map.empList(vo);
	}

	@Override
	public UserVO profSelect(UserVO vo) {
		return map.profSelect(vo);
	}

	@Override
	public UserVO empSelect(UserVO vo) {
		return map.empSelect(vo);
	}

	@Override
	public int stuUpdate(UserVO vo) {
		return map.stuUpdate(vo);
	}

	@Override
	public int profUpdate(UserVO vo) {
		return map.profUpdate(vo);
	}

	@Override
	public int empUpdate(UserVO vo) {
		return map.empUpdate(vo);
	}

	@Override
	public List<SubVO> sublist(SubVO vo) {
		return map.sublist(vo);
	}

	@Override
	public List<RegisterVO> reglist(RegisterVO vo) {
		return map.reglist(vo);
	}

}
