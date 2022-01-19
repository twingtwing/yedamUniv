<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 시작 -->
    <div id="overviews" class="section wb" style="background-color: #F2F2F2;">
        <div class="container">
            <ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">장학 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
							<a class="dropdown-item" href="#">장학공지 </a>
							<a class="dropdown-item" href="#">장학안내 </a>
							<a class="dropdown-item" href="#">장학FAQ </a>
                            <a class="dropdown-item" href="#">장학QnA </a>
						</div>
				</li>
			</ul>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>장학 QnA</h3>
                </div>
            </div>
            <div class="comment-form-main">
                <form action="#">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input class="form-control" name="commenter-name" placeholder="제목을 입력해주세요" id="commenter-name" type="text">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea class="form-control" style="height: 50vh;" name="commenter-message" placeholder="내용을 입력해주세요" id="commenter-message" cols="30" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12 post-btn">
                            <div class="row d-flex justify-content-center">
                                <button class="hover-btn-new orange"><span>등록하기</span></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 끝 -->

</body>
</html>