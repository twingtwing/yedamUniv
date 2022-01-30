<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.table tr {
	height: 60px;
}
#listbody:hover{
	cursor : pointer;
}
</style>
</head>
<body>

	<!-- 시작 -->
	<div id="overviews" class="section wb">
		<div class="container">
			<div class="container-fluid">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown-a"
						data-toggle="dropdown">학사 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a"
							style="width: 10vw;">
							<a class="dropdown-item" href="/univ/board/haksaBoardList.do">학사공지 </a> 
							<a class="dropdown-item" href="/univ/qna/haksaQna.do">학사QnA </a> 
							<a class="dropdown-item" href="/univ/faq/haksaFaq.do">학사FAQ </a>
							<a class="dropdown-item" href="/univ/schedule/schedule.do">학사일정 </a>
						</div></li>
				</ul>
				<div class="section-title row text-center m-3">
					<div class="col-md-8 offset-md-2">
						<h3>학사 공지사항</h3>
					</div>
					<div class="row d-flex justify-content-end">
						<div class="col-lg-3 col-12 right-single">
							<div class="widget-search">
								<div class="site-search-area">
									<form method="get" id="site-searchform" action="#">
										<div>
											<input class="input-text form-control" name="search-k"
												id="search-k" placeholder="제목" type="text"> 
												<input id="searchsubmit" value="Search">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div>
						<table class="table table-hover">
							<thead>
								<colgroup>
									<col width="100">
									<col>
									<col width="200">
									<col width="150">
									<col width="150">
								</colgroup>
								<tr style="background-color: #eea412;">
									<th class="m-3">글번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody id="listbody">
								<c:forEach items="${Haksa}" var="Haksa">
									<c:set var="i" value="${i+1}"/>
									<tr onclick="selectHaksa(${Haksa.boardNo})" class="origin">
										<td>${i}</td>
										<td>${Haksa.boardTitle}</td>
										<td>관리자</td>
										<td>${Haksa.boardDate}</td>
										<td>${Haksa.boardHits}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div>
						<ul class="pagination justify-content-center p-5"
							style="color: #eea412;">
							<li class="page-item"><a class="page-link  text-warning"
								href="#">Previous</a></li>
							<li class="page-item"><a class="page-link text-warning"
								href="#">1</a></li>
							<li class="page-item"><a class="page-link text-warning"
								href="#">2</a></li>
							<li class="page-item"><a class="page-link text-warning"
								href="#">3</a></li>
							<li class="page-item"><a class="page-link text-warning"
								href="#">4</a></li>
							<li class="page-item"><a class="page-link text-warning"
								href="#">5</a></li>
							<li class="page-item"><a class="page-link text-warning"
								href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 끝 -->
</body>

<script type="text/javascript">
	function selectHaksa(boardNo){
		location.href="/univ/board/haksaBoardRead.do?boardNo="+boardNo;
	}
	document.querySelector("#searchsubmit").onclick=function(){
		let searchVal = document.querySelector("#search-k").value;
		document.querySelector("#search-k").value="";
		if(searchVal == ""){
			alert("검색조건을 입력해주세요.");
		}else{
			$.ajax({
                url : "/univ/admin/AjaxSelectList.do",
                data : {
                   selector : "제목",
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
     	            	no.innerHTML = data.boardNo;
     	            	var title = document.createElement("td");
     	            	title.innerHTML = data.boardTitle;
     	            	var writer = document.createElement("td");
     	            	writer.innerHTML = "관리자";
     	            	var wdate = document.createElement("td");
     	            	var timestamp = data.boardDate;
                 		var date = new Date(timestamp);
     	            	wdate.innerHTML = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
     	            	var hitup = document.createElement("td");
     	            	hitup.innerHTML = data.boardHits;
     	            	
     	            	contents.appendChild(no);
     	            	contents.appendChild(title);
     	            	contents.appendChild(writer);
     	            	contents.appendChild(wdate);
     	            	contents.appendChild(hitup);
     	            	
     	            	listbody.appendChild(contents);
                 	}
                 	document.querySelector(".origin").onclick=function(){
                 		let boardno = $(this).closest('tr').attr("id");
                 		selectHaksa(boardno);
                 	}
                 	function selectHaksa(boardno){
                 		location.href="/univ/board/haksaBoardRead.do?boardNo="+boardno;
                    }
                },
                error : function(){
                   alert("검색결과를 불러오는데 실패했습니다.\n관리자에게 문의하세요.[010-1234-1234]");
                }
             })
		}
		
	}
</script>

</html>
