<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<script type="text/javascript">
	.board-link{
		cursor: pointer;
	}

</script>
</head>
<body>
	<div class="all-title-box">
		<div class="container text-center">
			<h1>대학생활</h1>
		</div>
	</div>

	<div id="overviews" class="section wb">
		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">대학 생활</a>
					<div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
						<a class="dropdown-item" href="/univ/freeboard/freeBoardList.do">자유게시판</a>
					</div>
				</li>
			</ul>
			<br> <br>
			<div class="section-title row text-center m-3">
				<div class="col-md-8 offset-md-2">
					<h3>자유게시판</h3>
				</div>
				<div>
					<table style="text-align: left;" class="table" id="${Read.cNo}">
						<tr style="background-color: #eea412;">
							<th width="670" height="30">${Read.cTitle }</th>
						</tr>
						<tr>
							<td>작성자 : ${Read.cWriter }</td>
						</tr>
						<tr>
							<td width="150">${Read.cDate } | 조회 ${Read.cHits }</td>
						</tr>
						<tr>
							<td>${Read.cContents }</td>
						</tr>
					</table>
					<button type="button" class="btn btn-outline-warning m-3" style="background-color: white;"
						>수정</button>
					<button type="button" class="btn btn-outline-warning m-3" style="background-color: white;"
						>삭제</button>
					<br>
					<br>
					<br>
					<div style="text-align: left;" class="blog-comments">
						<h4>댓글</h4>
						<c:forEach items="${cmts}" var="cmt">
						<div id="comment-blog">
							<ul class="comment-list">
								<li class="comment">
									<div class="avatar"><img alt="" src="/univ/resources/main/images/default_profile.png" class="avatar"></div>
									<div class="comment-container">
										<h5 class="comment-author"><a>${cmt.cmtWriter }</a></h5>
										<div class="comment-meta">
											<a class="comment-date link-style1">${cmt.cmtDate }</a>
											<a class="comment-reply-link link-style3 mr-5 board-link" onclick="location.href ='freeBoardUpdate.do'">수정</a>
											<a class="comment-reply-link link-style3 board-link" href="#respond">삭제</a>
										</div>
										<div class="comment-body">
											<p>${cmt.cmtContents }</p>
										</div>
									</div>
								</li>								
							</ul>
						</div>
						</c:forEach>
					</div>
					<div style="text-align: left;" class="comments-form">
						<div class="comment-form-main">
							<form id="cmtinsertform" action="/univ/freeboard/cmtResister.do" method="post">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<input class="form-control" id="cmtWriter" name="cmtWriter" placeholder="작성자" type="text">
										</div>
									</div>									
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" id="cmtContents" name="cmtContents" placeholder="댓글 내용 입력" cols="30" rows="2"></textarea>
										</div>
									</div>
									<div class="col-md-12 post-btn">
									<input type="hidden" id="cmtNo" name="cmtNo">
										<button class="btn btn-light btn-radius btn-brd grd1" type="submit" onclick="cmtInsert()">
											<span>댓글 등록</span>
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row d-flex justify-content-end">					
					<button type="button" class="btn btn-outline-warning m-3" style="background-color: white;"
						onclick="location.href='freeBoardList.do'">목록</button>
				</div>
			</div>
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->
<script src="/univ/resources/main/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function cmtInsert() {	
	var cmtWriter = document.getElementById("cmtWriter").value;
	var cmtContents = document.getElementById("cmtContents").value;
	var cNo = document.querySelector(".table").getAttribute("id");
	console.log(cNo);
	
	if (cmtWriter == '') {
		alert("작성자를 입력하세요.")
		return false;
	} else if (cmtContents == '') {
		alert("댓글 내용을 입력하세요.")
		return false;
	}	
	$("#cmtinsertform").submit();
}
</script>
</body>
</html>