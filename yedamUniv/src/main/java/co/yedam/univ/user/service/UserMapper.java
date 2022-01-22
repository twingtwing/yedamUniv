package co.yedam.univ.user.service;

public interface UserMapper {
	UserVO loginStu(UserVO vo);
	UserVO loginPro(UserVO vo);
	UserVO loginEmp(UserVO vo);
}
