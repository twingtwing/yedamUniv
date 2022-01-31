<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                                    <h1 class="my-2">${qna.qTitle }</h1>
                                </div>
                                <div class="row d-flex justify-content-end m-3">
                                    <h5><i class="fas fa-user-edit"></i>&nbsp; &nbsp;작성자 : ${qna.stuId }&nbsp; &nbsp; &nbsp; 
                                        <i class="fas fa-calendar-alt"></i>&nbsp; &nbsp;작성일 : ${qna.qDate }</h5>
                                </div>
                                <hr style="color: #F2F2F2;">
                                <p class="m-2">${qna.qContents }</p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 답변-->
                    <c:choose>
                    	<c:when test="${qna.qState eq 'Y'}">
		                    <h3 class="mt-5 ml-4 font-weight-bold"><i class="fas fa-comment-alt"></i>&nbsp; &nbsp;Comment</h3>
		                    <div class="blog-item">
		                        <div class="post-content">
		                            <div class="inner-hmv" style="background-color: white;">
		                                <div class="row d-flex justify-content-start m-2">
		                                    <h5><i class="fas fa-user-edit"></i>&nbsp; &nbsp;작성자 : ${qna.empId }&nbsp; &nbsp; &nbsp; 
		                                        <i class="fas fa-calendar-alt"></i>&nbsp; &nbsp;작성일 : ${qna.aDate }</h5>
		                                    </div>
		                                <p class="m-2">${qna.aContents }</p>
		                            </div>
		                        </div>
		                    </div>
		                </c:when>
		                <c:when test="${qna.qState eq 'N'}">
		                	<h3 class="mt-5 ml-4 font-weight-bold"><i class="fas fa-comment-alt"></i>&nbsp; &nbsp;답변 대기 중</h3>
		                </c:when>
                    </c:choose>
                    
                    <div class="row d-flex justify-content-center">
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/scholarshipQna.do'">
                        	<i class="fas fa-list"></i>&nbsp; &nbsp;목록가기</button>
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/scholarshipUpdate.do?qNo=${qna.qNo}'">
                        	<i class="fas fa-pen"></i>&nbsp; &nbsp;수정하기</button>
                        <button type="button" id="hdelete" class="btn btn-outline-warning m-3" style="background-color: white;" onclick="location.href='/univ/qna/jQnaDelete.do?qNo=${qna.qNo}'">
                        	<i class="fas fa-trash-alt"></i>&nbsp; &nbsp;삭제하기
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>