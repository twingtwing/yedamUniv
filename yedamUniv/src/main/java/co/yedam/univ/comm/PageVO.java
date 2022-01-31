package co.yedam.univ.comm;

import co.yedam.univ.leaveDrop.service.LeaveDropVO;
import co.yedam.univ.sub.service.CriteriaSub;
import co.yedam.univ.user.service.UserVO;
import lombok.Getter;

@Getter
public class PageVO {
	private int startPage;
	private int endPage;
	
	private int total;
	private CriteriaSub cri;
	private LeaveDropVO ld;
	private UserVO vo;
	
	public PageVO(CriteriaSub cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
	}
	
	public PageVO(LeaveDropVO ld, int total) {
		this.ld = ld;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(ld.getPageNum()/10.0))*10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total*1.0)/ld.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
	}
	
	public PageVO(UserVO vo, int total) {
		this.vo = vo;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(vo.getPageNum()/10.0))*10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total*1.0)/vo.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
	}
	
}
