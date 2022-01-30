package co.yedam.univ.subBoard.web;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import co.yedam.univ.sub.service.SubService;
import co.yedam.univ.sub.service.SubVO;

@Controller
public class SubBoardController {
	@Autowired
	SubService subDao;
	//list
	@GetMapping("pro/subBoardList.do")
	public String subBoardList(@Param("subNo") int subNo,@Param("subName") String subName,SubVO vo,HttpSession session,Model model) {
		vo.setProId((String)session.getAttribute("id"));
		vo.setSubjectNo(subNo);
		vo.setSubjectName(subName);
		model.addAttribute("subNo", vo.getSubjectNo());
		model.addAttribute("subName", vo.getSubjectName());
		model.addAttribute("postLists", subDao.subjectPostList(vo)); 
		
		return "pro/subBoard/subBoardList";
	}
	
	//select
	@GetMapping("pro/subBoardSelect.do")
	public String subBoardSelect(@Param("subNo") int subNo,@Param("bsNo") int bsNo,@Param("subName") String subName,SubVO vo,HttpSession session,Model model) {
		vo.setProId((String)session.getAttribute("id"));
		vo.setProName((String)session.getAttribute("name"));
		vo.setSubjectNo(subNo);
		vo.setSubjectName(subName);
		vo.setBsNo(bsNo);
		model.addAttribute("subNo", vo.getSubjectNo());
		model.addAttribute("subName", vo.getSubjectName());
		model.addAttribute("bsNo", vo.getBsNo());
		model.addAttribute("board", subDao.subjectBoardSelect(vo)); 
		System.out.println(subDao.subjectBoardSelect(vo));
		
		subDao.updateBoardHit(vo);	
		
		
		return "pro/subBoard/subBoardSelect";
	}
	
	//insert
	@GetMapping("pro/subBoardInsert.do")
	public String subBoardInsert(@Param("subNo") int subNo,@Param("subName") String subName,SubVO vo,HttpSession session,Model model) {
		vo.setProId((String)session.getAttribute("id"));
		vo.setProName((String)session.getAttribute("name"));
		vo.setSubjectNo(subNo);
		vo.setSubjectName(subName);
		model.addAttribute("subNo", vo.getSubjectNo());
		model.addAttribute("subName", vo.getSubjectName());
		
		return "pro/subBoard/subBoardInsert";
	}
	
	
	
	@PostMapping("pro/boardInsertForm.do")
	public String boardInsertForm(@Param("subNo")int subNo,@Param("subName") String subName,SubVO vo, HttpSession session) {
		
		vo.setProId((String)session.getAttribute("id"));
		vo.setSubjectNo(subNo);
		if(vo!=null) {
			subDao.insertBoard(vo);
		}
		
		try {
			subName= URLEncoder.encode(subName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/pro/subBoardList.do?subNo="+subNo+"&&subName="+subName;
	}
	
	
	//update
	@GetMapping("pro/subBoardUp.do")
	public String subBoardUp(@Param("bsNo") int bsNo,@Param("subNo")int subNo,@Param("subName") String subName,SubVO vo,Model model){
		vo.setSubjectNo(subNo);
		vo.setSubjectName(subName);
		vo.setBsNo(bsNo);
		model.addAttribute("bsNo", vo.getBsNo());
		model.addAttribute("subNo", vo.getSubjectNo());
		model.addAttribute("subName", vo.getSubjectName());
		model.addAttribute("board", subDao.subjectBoardSelect(vo));		
		return "pro/subBoard/subBoardUp";
	}
	
	@PostMapping("pro/boardUpdate.do")
	public String boardUpdate(SubVO vo,@Param("subNo")int subNo,@Param("subName") String subName,@Param("bsNo") int bsNo) {
		System.out.println(vo.getBsTitle());
		System.out.println(vo.getBsContents());
		System.out.println(vo.getBsNo());
		vo.setBsNo(bsNo);
		
		if(vo!=null) {
			subDao.updateBoard(vo);
		}
		try {
			subName= URLEncoder.encode(subName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/pro/subBoardList.do?subNo="+subNo+"&&subName="+subName;
	}
	
	@PostMapping("pro/deleteBoard.do")
	@ResponseBody
	public String deleteBoard(@Param("bsNo") int bsNo,SubVO vo) {
		String result="N";
		vo.setBsNo(bsNo);
		
		int delete = subDao.deleteBoard(vo);
		if(delete!=0) {
			result="Y";
			System.out.println(result);
			return result;
		}
		return result;
	}
}
