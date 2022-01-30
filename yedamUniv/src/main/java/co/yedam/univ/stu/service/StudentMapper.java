package co.yedam.univ.stu.service;

public interface StudentMapper {
	StudentVO selectStudent(StudentVO vo);
	String selectStudentJoinDate(StudentVO vo);
}
