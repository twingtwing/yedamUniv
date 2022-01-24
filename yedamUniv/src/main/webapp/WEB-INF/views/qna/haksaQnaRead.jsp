<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사 QnA</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- font awesome-->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
</head>
<body>

<!-- 시작 -->
    <div id="overviews" class="section wb" style="background-color: #F2F2F2;">
        <div class="container">
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
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>학사 QnA</h3>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-12 blog-post-single">
                    <div class="blog-item">
                        <div class="post-content">
                            <div class="inner-hmv" style="height: 80vh; background-color: white;">
                                <div class="row d-flex justify-content-center">
                                    <h1 class="my-2">${qna.qTitle }</h1>
                                </div>
                                <div class="row d-flex justify-content-end m-3">
                                    <h5><i class="fas fa-user-edit"></i>&nbsp; &nbsp;작성자 : ${qna.stuId } &nbsp; &nbsp; &nbsp; 
                                        <i class="fas fa-calendar-alt"></i>&nbsp; &nbsp;작성일 : ${qna.qDate }</h5>
                                </div>
                                <hr style="color: #F2F2F2;">
                                <p class="m-2">${qna.qContents }</p>
                            </div>
                        </div>
                    </div>
                    <h3 class="mt-5 ml-4 font-weight-bold"><i class="fas fa-comment-alt"></i>&nbsp; &nbsp;Comment</h3>
                    <div class="blog-item">
                        <div class="post-content">
                            <div class="inner-hmv" style="background-color: white;">
                                <div class="row d-flex justify-content-start m-2">
                                    <h5><i class="fas fa-user-edit"></i>&nbsp; &nbsp;작성자 : ${empId }&nbsp; &nbsp; &nbsp; 
                                        <i class="fas fa-calendar-alt"></i>&nbsp; &nbsp;작성일 : ${qna.aDate }</h5>
                                    </div>
                                <p class="m-2">${qna.aContents }</p>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/haksaQna.do'">
                        	<i class="fas fa-list"></i>&nbsp; &nbsp;목록가기
                        </button>
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/haksaQnaUpdate.do'">
                        	<i class="fas fa-pen"></i>&nbsp; &nbsp;수정하기
                        </button>
                        <button type="button" id="hdelete" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/hQnaDelete.do?qNo=${qna.qNo}'">
                        	<i class="fas fa-trash-alt"></i>&nbsp; &nbsp;삭제하기
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    
    	
    	
    </script>

</body>
</html>