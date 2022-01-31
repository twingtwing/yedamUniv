<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- ================= Favicon ================== -->
<!-- Standard -->
<link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
<!-- Retina iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="144x144"
   href="http://placehold.it/144.png/000/fff">
<!-- Retina iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="114x114"
   href="http://placehold.it/114.png/000/fff">
<!-- Standard iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="72x72"
   href="http://placehold.it/72.png/000/fff">
<!-- Standard iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="57x57"
   href="http://placehold.it/57.png/000/fff">
<style>
#HaksaListT:hover {
   cursor: pointer;
}
</style>
</head>

<body>
   <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <span>공지사항 </span>
                                <span class="ti-angle-right"></span>
                                <span> 학사공지</span>
                                <h1 class="ti-announcement"> 학사안내</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 10px;">
                                    <select id="selector" class="btn btn-default dropdown-toggle" style="width: 100px;">
                                        <option>글번호</option>
                                        <option>제목</option>
                                    </select>
                                    <input id="searchVal" type="text" class="form-control" placeholder="Search">
                                    <button class="ti-search btn btn-default btn-flat" id="searchBtn"></button>
                                </div><br><br><br>
                                <table id="HaksaListT" class="display table table-borderd table-hover">
                                    <thead>
                                       <tr>
                                            <th>글번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일자</th>
                                        </tr>
                                    </thead>
                                    <tbody id="listbody">
                                    <c:forEach items="${Haksa}" var="Haksa">
                                    <c:set var="i" value="${i+1}"/>
                                       <tr id="${Haksa.boardNo}" class="origin" onclick="selectHaksa(${Haksa.boardNo})">
                                            <td>${i}</td>
                                            <td>${Haksa.boardTitle}</td>
                                            <td>관리자</td>
                                            <td>${Haksa.boardDate}</td>
                                       </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <button type="button" class="btn btn-warning btn-md m-b-10 m-l-5 ti-pencil-alt"
                            style="position: absolute; right: 0; margin-right: 15px;" onclick="writeFnc()"> 글쓰기</button>
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </section>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
       function writeFnc(){
          location.href="/univ/admin/writeBoard.do?boardKind=Haksa";
       }
       function selectHaksa(boardno){
          location.href="/univ/admin/selectBoard.do?boardno="+boardno+"&boardKind=Haksa&doing=select";
       }
       document.querySelector("#searchBtn").onclick=function(){
          let selector = document.querySelector("#selector").value;
          let searchVal = document.querySelector("#searchVal").value;
          document.querySelector("#searchVal").value="";
          if(searchVal == ""){
        	  alert("검색조건을 입력해주세요.");
        	  $("#searchVal").focus();
          }else{
          	  $.ajax({
                  url : "/univ/admin/AjaxSelectList.do",
                  data : {
                     selector : selector,
                     searchVal : searchVal,
                     boardKind : "Haksa"
                  },
                  type : "POST",
                  dataType : "json",
                  success : function(datas){
              		 $('.origin').remove();
                  	
	      	          let listbody = document.querySelector("#listbody");
	                  for(let data of datas){
		            	  var contents = document.createElement("tr");
		            	  contents.setAttribute("id",data.boardNo);
		            	  contents.setAttribute("class","origin");
		            	  var no = document.createElement("td");
		            	  if(selector == "글번호"){
		            		  no.innerHTML = searchVal;
		            	  }else if(selector == "제목"){
		            		  no.innerHTML = data.boardNo;
		            	  }
		            	  var title = document.createElement("td");
		            	  title.innerHTML = data.boardTitle;
		            	  var writer = document.createElement("td");
		            	  writer.innerHTML = "관리자";
		            	  var wdate = document.createElement("td");
		            	  var timestamp = data.boardDate;
		           		  var date = new Date(timestamp);
		  	              wdate.innerHTML = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
		  	            	
		            	  contents.appendChild(no);
		            	  contents.appendChild(title);
		            	  contents.appendChild(writer);
		            	  contents.appendChild(wdate);
		         	            	
		            	  listbody.appendChild(contents);
	           	      }
	           		  document.querySelector(".origin").onclick=function(){
	           		  	let boardno = $(this).closest('tr').attr("id");
	           		  	selectHaksa(boardno);
	           		  }
	           		  function selectHaksa(boardno){
	                  	location.href="/univ/admin/selectBoard.do?boardno="+boardno+"&boardKind=Haksa&doing=select";
	              	  }
          		},
          		error : function(){
             		alert("검색결과를 불러오는데 실패했습니다.\n관리자에게 문의하세요.[010-1234-1234]");
          		}
       		})
          }
       }
    </script>
    
    <!-- jquery vendor -->
    <script src="/univ/assets/js/lib/jquery.min.js"></script>
    <script src="/univ/assets/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="/univ/assets/js/lib/menubar/sidebar.js"></script>
    <script src="/univ/assets/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    
    <!-- bootstrap -->

    <script src="/univ/assets/js/lib/bootstrap.min.js"></script><script src="/univ/assets/js/scripts.js"></script>
    <!-- scripit init-->
    <script src="/univ/assets/js/lib/data-table/datatables.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/jszip.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="/univ/assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="/univ/assets/js/lib/data-table/datatables-init.js"></script>
</body>
</html>