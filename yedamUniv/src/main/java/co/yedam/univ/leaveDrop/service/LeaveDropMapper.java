package co.yedam.univ.leaveDrop.service;

import java.util.List;

import co.yedam.univ.stu.service.StuVO;

public interface LeaveDropMapper {
	List<LeaveDropVO> leaveDropList(LeaveDropVO vo);
	List<LeaveDropVO> ldList(LeaveDropVO vo);
	
	List<LeaveDropVO> leaveList(LeaveDropVO vo);
	List<LeaveDropVO> dropList(LeaveDropVO vo);
	
	LeaveDropVO leaveSelect(LeaveDropVO vo);
	LeaveDropVO leavePrADSelect(LeaveDropVO vo);
	LeaveDropVO dropPrADSelect(LeaveDropVO vo);
	
	int leaveProcess(LeaveDropVO vo);
	int dropProcess(LeaveDropVO vo);
	int leaveDropState(LeaveDropVO vo);
	int leaveInsert(LeaveDropVO vo);
	int dropInsert(LeaveDropVO vo);

	int leaveBack(LeaveDropVO vo);
	int stuRecUp(StuVO vo);
	int stuChg(StuVO vo);
}
