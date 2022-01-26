package co.yedam.univ.admin.web;

import java.io.File;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.yedam.univ.board.service.BoardFilesService;
import co.yedam.univ.board.service.BoardFilesVO;
import co.yedam.univ.board.service.BoardService;
import co.yedam.univ.board.service.BoardVO;

@Controller
public class AdminController {
   
   @Autowired public BoardService boardDao;
   @Autowired public BoardFilesService boardFileDao;
   @Autowired public String saveDir;
   
   //공지사항메뉴-장학사 목록
   @RequestMapping("/admin/listJangHaksa.do")
   public String listJangHaksa(Model model) {
      BoardVO vo = new BoardVO();
      vo.setBoardKind("JangHaksa");
      List<BoardVO> JangHaksaList = boardDao.boardList(vo);
      model.addAttribute("JangHaksa", JangHaksaList);
      return "admin/Notice/listJangHaksa";
   }
   
   //공지사항메뉴-학사&장학사 등록페이지로 이동
   @RequestMapping("/admin/writeBoard.do")
   public String writeBoard(@RequestParam("boardKind")String boardKind) {
      String returnPage = "";
      if(boardKind.equals("Haksa")) {
         returnPage="admin/Notice/addHaksa";
      }else if(boardKind.equals("JangHaksa")) {
         returnPage="admin/Notice/addJangHaksa";
      }
      return returnPage;
   }
   
   //공지사항메뉴-학사 등록
   @RequestMapping("/admin/addHaksa.do")
   public String addHaksa(@RequestParam("title")String title,
                     @RequestParam("contents")String contents,
                     @RequestParam("files")MultipartFile files,
                     MultipartHttpServletRequest request, 
                     Model model) throws Exception {
      //Board테이블에 담기
      BoardVO vo = new BoardVO();
      vo.setEmpId("master");
      vo.setBoardTitle(title);
      vo.setBoardContents(contents);
      vo.setBoardKind("Haksa");
      int n = boardDao.boardInsert(vo);
      
      //Board테이블 insert에 성공했으면
      if(n > 0) {
         vo.setBoardKind("Haksa");
         List<BoardVO> list = boardDao.boardList(vo);
         //model에다가 학사리스트 태워서 학사게시글 등록 후 학사리스트 페이지로 던져주기
         model.addAttribute("Haksa",list);
         
         //파일업로드 처리
         String fileName = files.getOriginalFilename(); // -> 원본파일명.확장자명
         //첨부파일 있으면 Board_files테이블에 담기(첨부파일 있으면 확장자때문에 무조건 .이 있음)
         //첨부파일 없으면 Board_files테이블에 insert안함
         if(fileName.contains(".")) {
            System.out.println("=====if구문 통과하나요?");
            String pfileName = UUID.randomUUID().toString()
                  +fileName.substring(fileName.lastIndexOf(".")); // -> UUID.확장자
            
            BoardFilesVO filesVO = new BoardFilesVO();
            filesVO.setBoardNo(boardDao.boardLastNum());
            filesVO.setBFile(fileName);
            System.out.println("=====원본파일명은 뭔가여?>"+fileName);
            filesVO.setPbFile(pfileName);
            System.out.println("=====UUID파일명은 뭔가여?>"+pfileName);
            boardFileDao.boardFileInsert(filesVO);
            
            File target = new File(saveDir,pfileName);
            System.out.println("=====어디다 저장되나요?>"+saveDir);
            if(!new File(saveDir).exists()) {
               System.out.println("디렉토리 생성");
               new File(saveDir).mkdir();
            }
            try {
               FileCopyUtils.copy(files.getBytes(), target);
            }catch (Exception e) {
               e.printStackTrace();
            }
         }
      }
      
      return "admin/home/adminMain";
   }
   
   //공지사항메뉴-장학사 등록
   @RequestMapping("/admin/addJangHaksa.do")
   public String addJangHaksa(@RequestParam("title")String title,
                           @RequestParam("contents")String contents,
                           @RequestParam("files")MultipartFile files,
                        MultipartHttpServletRequest request, 
                           Model model) throws Exception {
      //Board테이블에 담기
      BoardVO vo = new BoardVO();
      vo.setEmpId("master");
      vo.setBoardTitle(title);
      vo.setBoardContents(contents);
      vo.setBoardKind("JangHaksa");
      int n = boardDao.boardInsert(vo);
      
      //Board테이블 insert에 성공했으면
      if(n > 0) {
         vo.setBoardKind("JangHaksa");
         List<BoardVO> list = boardDao.boardList(vo);
         //model에다가 학사리스트 태워서 학사게시글 등록 후 학사리스트 페이지로 던져주기
         model.addAttribute("JangHaksa",list);
         
         //파일업로드 처리
         String fileName = files.getOriginalFilename(); // -> 원본파일명.확장자명
         //첨부파일 있으면 Board_files테이블에 담기(첨부파일 있으면 확장자때문에 무조건 .이 있음)
         //첨부파일 없으면 Board_files테이블에 insert안함
         if(fileName.contains(".")) {
            System.out.println("=====if구문 통과하나요?");
            String pfileName = UUID.randomUUID().toString()
                  +fileName.substring(fileName.lastIndexOf(".")); // -> UUID.확장자
            
            BoardFilesVO filesVO = new BoardFilesVO();
            filesVO.setBoardNo(boardDao.boardLastNum());
            filesVO.setBFile(fileName);
            System.out.println("=====원본파일명은 뭔가여?>"+fileName);
            filesVO.setPbFile(pfileName);
            System.out.println("=====UUID파일명은 뭔가여?>"+pfileName);
            boardFileDao.boardFileInsert(filesVO);
            
            File target = new File(saveDir,pfileName);
            System.out.println("=====어디다 저장되나요?>"+saveDir);
            if(!new File(saveDir).exists()) {
               System.out.println("디렉토리 생성");
               new File(saveDir).mkdir();
            }
            try {
               FileCopyUtils.copy(files.getBytes(), target);
            }catch (Exception e) {
               e.printStackTrace();
            }
         }
      }
      return "admin/Notice/listJangHaksa";
   }
   
   //공지사항메뉴-학사&장학사 조회 | 학사&장학사 수정페이지로 이동
   @RequestMapping("/admin/selectBoard.do")
   public String selectBoard(@RequestParam("boardno") int boardno,
                       @RequestParam("boardKind") String boardKind,
                       @RequestParam("doing") String doing,
                       Model model) {
      BoardVO vo = new BoardVO();
      String returnPage = "";
      vo.setBoardNo(boardno);
      vo.setBoardKind(boardKind);
      model.addAttribute("selectBoard",boardDao.boardSelect(vo));
      
      BoardFilesVO filesVO = new BoardFilesVO();
      filesVO.setBoardNo(boardno);
      model.addAttribute("selectBoardFile",boardFileDao.boardFileSelect(filesVO));
      
      if(doing.equals("select")) {
         if(vo.getBoardKind().equals("Haksa")) {
            returnPage = "admin/Notice/selectHaksa";
         }else if(vo.getBoardKind().equals("JangHaksa")) {
            returnPage = "admin/Notice/selectJangHaksa";
         }
      }else if(doing.equals("update")) {
         if(vo.getBoardKind().equals("Haksa")) {
            returnPage = "admin/Notice/modiHaksa";
         }else if(vo.getBoardKind().equals("JangHaksa")) {
            returnPage = "admin/Notice/modiJangHaksa";
         }
      }  
      return returnPage;
   }
   
   //공지사항메뉴-학사&장학사 검색결과 조회
   @RequestMapping("/admin/AjaxSelectList.do")
   @ResponseBody
   public List<BoardVO> AjaxSelectList(@RequestParam("selector") String jogeon,
                        	  @RequestParam("searchVal") String searchVal,
                        	  @RequestParam("boardKind") String boardKind) throws ParseException{
      System.out.println("검색조건 : "+jogeon);
      System.out.println("검색값 : "+searchVal);
      List<BoardVO> result = new ArrayList<BoardVO>();
      BoardVO vo = new BoardVO();
      vo.setBoardKind(boardKind);
      
      if(jogeon.equals("글번호")) {
         int No = Integer.parseInt(searchVal);
         vo.setRownum(No);
         result = boardDao.searchBoardNo(vo);
         
      }else if(jogeon.equals("제목")) {
         vo.setBoardTitle(searchVal);
         result = boardDao.searchBoardTitle(vo);  
      }
      
      return result;
   }
   
   //공지사항메뉴-학사&장학사 수정내용 저장
   @RequestMapping("/admin/updateBoard.do")
   public String updateBoard(@RequestParam("no") int no,
                     @RequestParam("title") String title,
                     @RequestParam("contents") String contents,
                     @RequestParam("kind") String kind,
                     Model model) {
      BoardVO vo = new BoardVO();
      vo.setBoardNo(no);
      vo.setBoardTitle(title);
      vo.setBoardContents(contents);
      int n = boardDao.boardUpdate(vo);
   
      String returnPage = "";
      if(n > 0) {
         vo.setBoardNo(no);
         if(kind.equals("Haksa")) {
            vo.setBoardKind("Haksa");
            model.addAttribute("selectBoard",boardDao.boardSelect(vo));
            returnPage = "admin/Notice/selectHaksa";
            
         }else if(kind.equals("JangHaksa")) {
            vo.setBoardKind("JangHaksa");
            model.addAttribute("selectBoard",boardDao.boardSelect(vo));
            returnPage = "admin/Notice/selectJangHaksa";
         }
      }
      return returnPage;
   }
   
   //공지사항메뉴-학사&장학사 삭제
   @RequestMapping("/admin/deleteBoard.do")
   public String ajaxDeleteBoard(@RequestParam("boardNo") int boardNo,
                          @RequestParam("boardKind") String boardKind,
                          Model model) {
      
      BoardFilesVO filesVO = new BoardFilesVO();
      filesVO.setBoardNo(boardNo);
      //외래키 걸린거 있는지 확인하기
      int exist = boardFileDao.boardFileExist(filesVO);
      String returnPage = "";
      if(exist > 0) {
         //외래키 걸려있으니까 외래키 먼저 삭제해주고
         boardFileDao.boardFileDelete(filesVO);
      }
      //board테이블에서 delete
      BoardVO vo = new BoardVO();
      vo.setBoardNo(boardNo);
      int n = boardDao.boardDelete(vo);
         
      //delete완료했으면
      if(n > 0) {
         if(boardKind.equals("Haksa")) {
            vo.setBoardKind("Haksa");
            List<BoardVO> list = boardDao.boardList(vo);
            model.addAttribute("Haksa",list);
            returnPage = "admin/home/adminMain";
                  
         }else if(boardKind.equals("JangHaksa")) {
            vo.setBoardKind("JangHaksa");
            List<BoardVO> list = boardDao.boardList(vo);
            model.addAttribute("JangHaksa",list);
            returnPage = "admin/Notice/listJangHaksa";
         }
      }
                     
      return returnPage; 
   }
   
   //공지사항메뉴-QnA 목록
   @RequestMapping("/admin/listQnA.do")
   public String listQnA() {
      return "admin/Notice/listQnA";
   }
   
   //공지사항메뉴-FAQ 목록
   @RequestMapping("/admin/listFAQ.do")
   public String listFAQ() {
      return "admin/Notice/listFAQ";
   }
   
   //공지사항메뉴-FAQ 등록
   @RequestMapping("/admin/addFAQ.do")
   public String addFAQ() {
      return "admin/Notice/addFAQ";
   }
   
   //멤버관리메뉴-교직원 목록
   @RequestMapping("/admin/listEmp.do")
   public String listEmp() {
      return "admin/Users/listEmp";
   }
   
   //멤버관리메뉴-교수 목록
   @RequestMapping("/admin/listProf.do")
   public String listProf() {
      return "admin/Users/listProf";
   }
   
   //멤버관리메뉴-학생 목록
   @RequestMapping("/admin/listStu.do")
   public String listStu() {
      return "admin/Users/listStu";
   }
   
   //멤버관리메뉴-휴·복학/자퇴 신청 관리
   @RequestMapping("/admin/listPapers.do")
   public String listPapers() {
      return "admin/Users/listPapers";
   }
   
   //자유게시판메뉴-자유게시판 관리
   @RequestMapping("/admin/listBoard.do")
   public String listBoard() {
      return "admin/FreeBoard/listBoard";
   }
   
   //자유게시판메뉴-자유게시판 등록
   @RequestMapping("/admin/addBoard.do")
   public String addBoard() {
      return "admin/FreeBoard/addBoard";
   }
   
   //자유게시판메뉴-신고게시글 관리
   @RequestMapping("/admin/listIllegal.do")
   public String listIllegal() {
      return "admin/FreeBoard/listIllegal";
   }
   
   //강의등록메뉴-강의등록처리
   @RequestMapping("/admin/listAddClass.do")
   public String listAddClass() {
      return "admin/AddClass/listAddClass";
   }
}