package co.yedam.univ.qna.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.yedam.univ.qna.service.qnaFilesService;
import co.yedam.univ.qna.service.qnaFilesVO;
import co.yedam.univ.qna.service.qnaService;
import co.yedam.univ.qna.service.qnaVO;
import lombok.extern.log4j.Log4j;

@Controller
public class qnaController {
	
	String uploadFolder = "c:\\upload";
	String fileFolder = "c:\\upload";
	
	@Autowired 
	private qnaService qnaDao;
	
	@Autowired
	private qnaFilesService qnaFilesDao;
	
	@Autowired
	private String saveDir;
	
	// 학사 qna 리스트
	@RequestMapping("/qna/haksaQna.do")
	public String haksaQna(Model model) {
		
		List<qnaVO> qnalist;
		qnalist = qnaDao.qnaSelectList();
		
//		for(qnaVO vo : qnalist) {
//			System.out.println(vo);
//		}
		
		model.addAttribute("qnalist", qnalist);
		
		return "qna/haksaQna";
	}
	
	// 학사 qna 상세보기
	@RequestMapping("/qna/haksaQnaRead.do")
	public String haksaQnaRead(Model model, @Param("qNo") int qNo) {
		qnaVO vo = new qnaVO();
		vo.setqNo(qNo);
		vo = qnaDao.qnaSelect(vo);
		model.addAttribute("qna", vo);
		
		return "qna/haksaQnaRead";
	}
	 
	// 학사 qna 수정폼
	@RequestMapping("/qna/haksaQnaUpdate.do")
	public String haksaQnaUpdate() {
		return "qna/haksaQnaUpdate";
	}
	
	// 학사 qna 글쓰기폼
	@RequestMapping("/qna/haksaQnaWrite.do")
	public String haksaQnaWrite() {
		return "qna/haksaQnaWrite";
	}
	
	// 학사 qna 글 등록하기
/*	@RequestMapping("/qna/hQnaInsert.do")
	@ResponseBody
	public String hQnaInsert(qnaVO vo, qnaFilesVO qvo, HttpSession session, HttpServletRequest request,
			@RequestParam(value = "qfiles", required = false) MultipartFile file, MultipartHttpServletRequest multi) {
		
		//String id = (String) session.getAttribute("id");
		String id = "pp0332"; // 임시로 아이디 저장
		vo.setStuId(id);
		vo.setqKind(request.getParameter("qKind"));
		vo.setqCategory(request.getParameter("qCategory"));
		vo.setqTitle(request.getParameter("qTitle"));
		vo.setqContents(request.getParameter("qContents"));
		
		// 다중파일업로드
		List<MultipartFile> qfileList = multi.getFiles("qfiles");
		
		for (int i = 0; i < qfileList.size(); i++) {
			String qfileName = qfileList.get(i).getOriginalFilename();
			String saveFile = saveDir + UUID.randomUUID().toString() + qfileName;
			qvo.setQfile(qfileName);
			qvo.setaQfile(saveFile);
			//qvo.setqNo(Integer.parseInt(request.getParameter("qNo")));
			
			qvo.setQfile("/upload/" + saveFile.substring(saveDir.length()));
			try {
				qfileList.get(i).transferTo(new File(saveFile));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			qnaFilesDao.insertqFile(qvo);
		}
		
		qnaDao.qnaInsert(vo);
		return "redirect:haksaQna.do";
	} */
	
	// 학사 qna 글 등록하기(파일업로드 제외)
	@RequestMapping("/qna/hQnaInsert.do")
	@ResponseBody
	public void hQnaInsert(qnaVO vo, HttpSession session) {
		
		//String id = (String) session.getAttribute("id");
		String id = "pp0332"; // 임시로 아이디 저장
		vo.setStuId(id);
		qnaDao.qnaInsert(vo);
		
	}
	
	
	
	// 학사 qna 글 삭제하기
	@RequestMapping("/qna/hQnaDelete.do")
	public String hQnaDelete(int qNo) {
		
		int r = qnaDao.qnaDelete(qNo);
		if(r>0) {
			return "redirect:haksaQna.do";
		} else {
			return "redirect:haksaQnaRead.do?qNo="+qNo;
		}
	}
	
	// 장학 qna 리스트
	@RequestMapping("/qna/scholarshipQna.do") 
	public String scholarshipQna() {
		return "qna/scholarshipQna";
	}
	
	// 장학 qna 상세보기
	@RequestMapping("/qna/scholarshipRead.do")
	public String scholarshipRead() {
		return "qna/scholarshipRead";
	}
	
	// 장학 qna 수정폼
	@RequestMapping("/qna/scholarshipUpdate.do")
	public String scholarshipUpdate() {
		return "qna/scholarshipUpdate";
	}
	
	// 장학 qna 글쓰기폼
	@RequestMapping("/qna/scholarshipWrite.do")
	public String scholarshipWrite() {
		return "qna/scholarshipWrite";
	}
	
}
