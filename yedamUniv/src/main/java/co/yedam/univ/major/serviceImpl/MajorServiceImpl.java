package co.yedam.univ.major.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.univ.major.service.MajorMapper;
import co.yedam.univ.major.service.MajorService;
import co.yedam.univ.major.service.MajorVO;

@Repository("majorDao")
public class MajorServiceImpl implements MajorService {
	@Autowired MajorMapper map;
	
	@Override
	public List<MajorVO> majorList() {
		return map.majorList();
	}

}
