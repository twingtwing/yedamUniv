<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">대학 생활 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
							<a class="dropdown-item" href="/univ/board/freeBoardList.do">자유게시판 </a>
						</div>
				</li>
			</ul>
			<br>
			<br>
			<div class="section-title row text-center m-3">
				<div class="col-md-8 offset-md-2">
					<h3>자유게시판</h3>
				</div>
				<div class="row d-flex justify-content-end">
					<div class="col-lg-3 col-12 right-single">
						<div class="widget-search">
							<div class="site-search-area">
								<form method="get" id="site-searchform" action="#">
									<div>
										<input class="input-text form-control" name="search-k" id="search-k" placeholder="통합검색" type="text">
										<input id="searchsubmit" value="Search" type="submit">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div>
					<table class="table table-hover">
						<thead>
							<tr align="center" style="background-color: #eea412;">
								<th width="70">글번호</th>
								<th width="300">제 목</th>
								<th width="100">작성자</th>
								<th width="100">작성일</th>
								<th width="100">조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr align="center">
								<td width="70">1</th>
								<td width="300">제목 예시</th>
								<td width="100">admin</th>
								<td width="100">20220101</th>
								<td width="100">300</th>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row d-flex justify-content-end">
				<button type="button" class="btn btn-outline-warning m-3" style="background-color: white;"><i class="fas fa-pen" onclick="location.href ='freeBoardInsert.do'"></i>&nbsp; &nbsp;글쓰기</button>
				</div>
				<div>
					<ul class="pagination justify-content-center p-5" style="color: #eea412;;">
						<li class="page-item"><a class="page-link  text-warning" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link text-warning" href="#">1</a></li>
						<li class="page-item"><a class="page-link text-warning" href="#">2</a></li>
						<li class="page-item"><a class="page-link text-warning" href="#">3</a></li>
						<li class="page-item"><a class="page-link text-warning" href="#">4</a></li>
						<li class="page-item"><a class="page-link text-warning" href="#">5</a></li>
						<li class="page-item"><a class="page-link text-warning" href="#">Next</a></li>
					</ul>
				</div>
			</div>
        </div><!-- end container -->
    </div><!-- end section --> 
</body>
</html>