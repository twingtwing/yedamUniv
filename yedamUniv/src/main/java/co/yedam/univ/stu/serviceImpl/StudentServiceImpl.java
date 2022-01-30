package co.yedam.univ.stu.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.stu.service.StudentMapper;
import co.yedam.univ.stu.service.StudentService;
import co.yedam.univ.stu.service.StudentVO;
@Repository("stuDao")
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	public StudentMapper map;
	
	@Override
	public StudentVO selectStudent(StudentVO vo) {
		return map.selectStudent(vo);
	}

	@Override
	public String selectStudentJoinDate(StudentVO vo) {
		return map.selectStudentJoinDate(vo);
	}

}
