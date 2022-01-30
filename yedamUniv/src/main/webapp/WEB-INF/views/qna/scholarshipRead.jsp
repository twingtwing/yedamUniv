<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- font awesome-->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
</head>
<body>
<div class="all-title-box">
		<div class="container text-center">
			<h1>장학</h1>
		</div>
</div>
<!-- 시작 -->
    <div id="overviews" class="section wb" style="background-color: #F2F2F2;">
        <div class="container">
            <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">장학 </a>
                            <div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
                                <a class="dropdown-item" href="/univ/board/scholarshipBoardList.do">장학공지 </a>
                                <a class="dropdown-item" href="/univ/scholarship/scholarshipGuide.do">장학안내 </a>
                                <a class="dropdown-item" href="/univ/faq/scholarshipFaq.do">장학FAQ </a>
                                <a class="dropdown-item" href="/univ/qna/scholarshipQna.do">장학QnA </a>
                            </div>
                    </li>
            </ul>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>장학 QnA</h3>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-12 blog-post-single">
                    <div class="blog-item">
                        <div class="post-content">
                            <div class="inner-hmv" style="height: 80vh; background-color: white;">
                                <div class="row d-flex justify-content-center">
                                    <h1 class="my-2">제목</h1>
                                </div>
                                <div class="row d-flex justify-content-end m-3">
                                    <h5><i class="fas fa-user-edit"></i>&nbsp; &nbsp;작성자 : &nbsp; &nbsp; &nbsp; 
                                        <i class="fas fa-calendar-alt"></i>&nbsp; &nbsp;작성일 : </h5>
                                </div>
                                <hr style="color: #F2F2F2;">
                                <p class="m-2">공지내용</p>
                            </div>
                        </div>
                    </div>
                    <h3 class="mt-5 ml-4 font-weight-bold"><i class="fas fa-comment-alt"></i>&nbsp; &nbsp;Comment</h3>
                    <div class="blog-item">
                        <div class="post-content">
                            <div class="inner-hmv" style="background-color: white;">
                                <div class="row d-flex justify-content-start m-2">
                                    <h5><i class="fas fa-user-edit"></i>&nbsp; &nbsp;작성자 : &nbsp; &nbsp; &nbsp; 
                                        <i class="fas fa-calendar-alt"></i>&nbsp; &nbsp;작성일 : </h5>
                                    </div>
                                <p class="m-2">공지사항 댓글 내용</p>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/scholarshipQna.do'">
                        	<i class="fas fa-list"></i>&nbsp; &nbsp;목록가기</button>
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/scholarshipUpdate.do'">
                        	<i class="fas fa-pen"></i>&nbsp; &nbsp;수정하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>