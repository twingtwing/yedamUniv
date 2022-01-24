package co.yedam.univ.comm;

import co.yedam.univ.sub.service.CriteriaSub;
import lombok.Getter;

@Getter
public class PageVO {
	private int startPage;
	private int endPage;
	
	private int total;
	private CriteriaSub cri;
	
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
}
