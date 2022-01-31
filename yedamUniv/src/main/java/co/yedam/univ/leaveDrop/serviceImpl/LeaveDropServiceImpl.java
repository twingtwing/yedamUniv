package co.yedam.univ.leaveDrop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.leaveDrop.service.LeaveDropMapper;
import co.yedam.univ.leaveDrop.service.LeaveDropService;
import co.yedam.univ.leaveDrop.service.LeaveDropVO;
import co.yedam.univ.stu.service.StuVO;

@Repository("leaveDropDAO")
public class LeaveDropServiceImpl implements LeaveDropService{
	@Autowired LeaveDropMapper map;

	@Override
	public int leaveInsert(LeaveDropVO vo) {
		return map.leaveInsert(vo);
	}

	@Override
	public List<LeaveDropVO> leaveDropList(LeaveDropVO vo) {
		return map.leaveDropList(vo);
	}

	@Override
	public int dropInsert(LeaveDropVO vo) {
		return map.dropInsert(vo);
	}

	@Override
	public int leaveDropState(LeaveDropVO vo) {
		return map.leaveDropState(vo);
	}

	@Override
	public LeaveDropVO leaveSelect(LeaveDropVO vo) {
		return map.leaveSelect(vo);
	}

	@Override
	public List<LeaveDropVO> ldList(LeaveDropVO vo) {
		return map.ldList(vo);
	}

	@Override
	public LeaveDropVO leavePrADSelect(LeaveDropVO vo) {
		return map.leavePrADSelect(vo);
	}

	@Override
	public LeaveDropVO dropPrADSelect(LeaveDropVO vo) {
		return map.dropPrADSelect(vo);
	}

	@Override
	public int leaveProcess(LeaveDropVO vo) {
		return map.leaveProcess(vo);
	}

	@Override
	public int dropProcess(LeaveDropVO vo) {
		return map.dropProcess(vo);
	}

	@Override
	public List<LeaveDropVO> leaveList(LeaveDropVO vo) {
		return map.leaveList(vo);
	}

	@Override
	public List<LeaveDropVO> dropList(LeaveDropVO vo) {
		return map.dropList(vo);
	}

	@Override
	public int stuRecUp(StuVO vo) {
		return map.stuRecUp(vo);
	}

	@Override
	public int leaveBack(LeaveDropVO vo) {
		return map.leaveBack(vo);
	}

	@Override
	public int stuChg(StuVO vo) {
		return map.stuChg(vo);
	}

}
