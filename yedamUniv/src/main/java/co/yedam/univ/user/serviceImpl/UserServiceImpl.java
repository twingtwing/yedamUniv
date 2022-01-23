package co.yedam.univ.user.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
