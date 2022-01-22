<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        a.pw-find:hover{
            color: white;
        }
        #overviews{
            height: 90vh;
        }
    </style>
</head>
<body>
	<div class="all-title-box">
		<div class="container text-center">
			<h1>LOGIN<span class="m_1">예담 공과 대학교에 오신 것을 환영합니다.</span></h1>
		</div>
	</div>
	
    <div id="overviews" class="section lb d-flex align-items-center mb-0">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-7 bg-warning p-5">
                    <div class="section-title row text-center mb-0">
                        <div class="col-md-8 offset-md-2 mt-4">
                            <h3 class="font-weight-bold text-light">로그인</h3>
                        </div>
                    </div><!-- end title -->
                
                    <div class="row align-items-center d-flex justify-content-center">
                        <div class="col-lg-8">
                            <form id="loginFrm" method="post" action="" role="form" class="form-horizontal">
                                <div class="form-group mb-4">
                                    <div class="col-lg-12">
                                        <input class="form-control" id="id" name="userId" placeholder="아이디" type="text">
                                    </div>
                                </div>
                                <div class="form-group mb-4">
                                    <div class="col-lg-12">
                                        <input class="form-control" id="pw" name="password" placeholder="비밀번호" type="password">
                                    </div>
                                </div>
	                            <div class="row mr-3">
	                            	<div class="col-lg-12 d-flex justify-content-end mr-5">
	                                	<div class="row">
	                                    	<div class="mr-1">
	                                        	<i class="fa fa-exclamation-circle text-danger"></i>
	                                        </div>
	                                        <div class="d-flex align-items-center">
	                                        	<p class="text-danger mb-0">아이디/비밀번호를 한 번 더 확인해주세요.</p>
	                                       	</div>
	                                	</div>
	                            	</div>
	                            </div>
                                <div class="row pt-2">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <button id="loginBtn" type="submit" class="btn btn-light btn-radius btn-brd px-4 pb-1 pt-2" disabled="disabled">로그인</button>
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <a class="text-center pw-find" href="/univ/intro/password.do">비밀번호 찾기</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end section -->
    
	<script type="text/javascript">
    function loginErr(){
        if($('#id').val()===''){
            $('.id-err > p').removeClass('d-none');
            $('#loginBtn').removeClass('grd1').attr('disabled','disabled');
 		}else if($('#pw').val()===''){
            $('.pw-err > p').removeClass('d-none');
            $('.id-err > p').addClass('d-none');
            $('#loginBtn').removeClass('grd1').attr('disabled','disabled');
 		}else{
            $('.pw-err > p').addClass('d-none');
            $('.id-err > p').addClass('d-none');
 			$('#loginBtn').addClass('grd1');
            $('#loginBtn').removeAttr('disabled');
 		}
    }

	$('#id').on('keyup',function(){
        loginErr();
	});
	
 	$('#pw').on('keyup',function(){
        loginErr();
 	});
	</script>
</body>
</html>