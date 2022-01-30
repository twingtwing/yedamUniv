<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

    <!-- LOADER -->
	<div id="preloader">
		<div class="loader-container">
			<div class="progress-br float shadow">
				<div class="progress__item"></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->	
	
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="/univ/all/home.do">
					<img src="/univ/resources/main/images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="/univ/all/home.do">Home</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">대학소개 </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="/univ/intro/pres.do">인사말 </a>
								<a class="dropdown-item" href="/univ/intro/campus.do">캠퍼스 안내 </a>
								<a class="dropdown-item" href="/univ/intro/about.do">대학소개 </a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">학과소개 </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="/univ/major/majorList.do">학과소개</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">학사소개 </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="/univ/board/haksaBoardList.do">학사공지</a>
								<a class="dropdown-item" href="/univ/qna/haksaQna.do">학사QnA </a>
								<a class="dropdown-item" href="/univ/faq/haksaFaq.do">학사FAQ</a>
								<a class="dropdown-item" href="/univ/board/freeBoardList.do">자유게시판</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">장학안내</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="/univ/scholarship/scholarshipGuide.do">장학제도</a>
								<a class="dropdown-item" href="/univ/board/scholarshipBoardList.do">장학공지</a>
								<a class="dropdown-item" href="/univ/qna/scholarshipQna.do">장학QnA </a>
								<a class="dropdown-item" href="/univ/faq/scholarshipFaq.do">장학FAQ</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">등록안내 </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="/univ/tuition/tuitionGuide.do">등록금 수납안내</a>
								<a class="dropdown-item" href="/univ/tuition/tuitionPlan.do">등록금 수납일정</a>
							</div>
						</li>
						<c:if test="${author eq 'ADMIN'}">
						</c:if>		
							<li class="nav-item"><a class="nav-link" href="/univ/admin/admin.do">관리자</a></li>
						<c:if test="${author eq 'STU'}">
						</c:if>
							<li class="nav-item"><a class="nav-link" href="/univ/stu/classList.do">학생페이지</a></li>
						<c:if test="${author eq 'PRO'}">
						</c:if>										
							<li class="nav-item"><a class="nav-link" href="/univ/pro/mySub.do">교수페이지</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${empty id}">
                        	<li><a class="hover-btn-new log orange" href="/univ/all/login.do"><span>LOGIN</span></a></li>
						</c:if>
						<c:if test="${not empty id}">
	                       	<li>]<a class="hover-btn-new log orange" id="logoutBtn"><span>LOGOUT</span></a></li>
						</c:if>
                    </ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	<script type="text/javascript">
		$('#logoutBtn').click(function(){
			let name = '${name}';
			$.ajax({
				url : '/univ/all/logout.do',
				type: 'post',
				data : {name:name}
			})
			.done(data=>{
				console.log(data);
				if(data !='N'){
					alert(data+'님 안녕히가세요.')
					location.href='/univ/all/home.do';
				}else if(data !='Y'){
					alert(data+'로그인에 실패하셨습니다.');
				}
			});	
		});
	</script>
</body>
</html>