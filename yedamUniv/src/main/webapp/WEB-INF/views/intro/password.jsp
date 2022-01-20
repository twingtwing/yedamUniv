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
			<h1>비밀번호 찾기</h1>
		</div>
	</div>
	
    <div id="contact" class="section wb">
        <div class="container">			
            <div class="section-title text-center">
                <h3></h3>
                <p class="lead">회원 정보에 기재된 이메일로 비밀번호 재설정 인증번호를 보내드립니다.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="contact_form">
                        <div id="message"></div>
                        <form id="contactform" class="" action="contact.php" name="contactform" method="post">
                            <div class="row row-fluid">
                                <div class="col-lg-9 col-md-12 col-sm-12">
                                    <input type="text" class="form-control" placeholder="학번">
                                </div>
								<div class="col-lg-9 col-md-12 col-sm-12">
                                    <input type="email" class="form-control" placeholder="E-Mail">
                                </div>                               
                                <div class="text-center pd">
                                    <button type="submit" value="SEND" class="btn btn-light btn-radius btn-brd grd1 btn-block">인증번호 발송</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div><!-- end col -->				
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
</body>
</html>