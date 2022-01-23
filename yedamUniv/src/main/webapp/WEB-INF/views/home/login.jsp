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
            height: 100vh;
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
                        <div class="col-lg-10 mt-3">
                            <form id="loginFrm" role="form" class="form-horizontal">
                                <div class="form-check form-check-inline mb-3 d-flex justify-content-between">
									<div>
										<input class="form-check-input ml-3" type="radio" name="user" id="stu" value="stu">
										<label class="form-check-label" for="stu">학생</label>
										<input class="form-check-input ml-4" type="radio" name="user" id="pro" value="pro">
										<label class="form-check-label" for="pro">교수</label>
										<input class="form-check-input ml-4" type="radio" name="user" id="admin" value="admin">
										<label class="form-check-label" for="admin">교직원</label>
									</div>
									<div class="mr-2">
										<p class="radio-err d-none mb-0 text-danger">항목을 선택해주세요.</p>
									</div>
								</div>
								<div class="form-group mb-1">
                                    <div class="col-lg-12">
                                        <input class="form-control" id="id" name="id" placeholder="아이디" type="text">
                                    </div>
                                </div>
                                <div class="row mr-3 d-flex justify-content-end">
                                    <p class="id-err d-none mb-0 text-danger">아이디를 입력해주세요.</p>
                                </div>
                                <div class="form-group mt-4 mb-1">
                                    <div class="col-lg-12">
                                        <input class="form-control" id="pw" name="pw" placeholder="비밀번호" type="password">
                                    </div>
                                </div>
                                <div class="row mr-3 mb-2 d-flex justify-content-end">
                                    <p class="pw-err d-none mb-0 text-danger">비밀번로를 입력해주세요.</p>
                                </div>
	                            <div class="login-err row d-none mr-3" style="height: 20px;">
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
                                <div class="row pt-5">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <button id="loginBtn" type="button" class="btn btn-light btn-radius btn-brd px-4 pb-1 pt-2" disabled="disabled">로그인</button>
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <a class="text-center pw-find" href="/univ/intro/password.do">비밀번호 찾기</a>
                                    </div>
                                </div>
                            </form>
                        </div><!-- end col -->
                    </div>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end section -->
	
  
	<script type="text/javascript">
		$('#id').on('keyup',function(){
        	if($('#id').val()===''){
             	$('.id-err').removeClass('d-none');
             	$('#loginBtn').removeClass('grd1').attr('disabled','disabled');
	 		}else if($('input[name="user"]:checked').length ===0){
				$('.radio-err').removeClass('d-none');
             	$('#loginBtn').removeClass('grd1').attr('disabled','disabled');
	 		}else{
             	$('.pw-err').addClass('d-none');
             	$('.id-err').addClass('d-none');
				$('.radio-err').addClass('d-none');
	 			$('#loginBtn').addClass('grd1');
             	$('#loginBtn').removeAttr('disabled');
	 		}
		});
		
	 	$('#pw').on('keyup',function(){
        	if($('#pw').val()===''){
             	$('.pw-err').removeClass('d-none');
             	$('#loginBtn').removeClass('grd1').attr('disabled','disabled');
	 		}else if($('input[name="user"]:checked').length ===0){
             	$('.radio-err').removeClass('d-none');
             	$('#loginBtn').removeClass('grd1').attr('disabled','disabled');
	 		}else{
             	$('.pw-err').addClass('d-none');
             	$('.id-err').addClass('d-none');
				$('.radio-err').addClass('d-none');
	 			$('#loginBtn').addClass('grd1');
             	$('#loginBtn').removeAttr('disabled');
	 		}
	 	});
	 	
	 	$('input[name="user"]').click(function(){
	 		if($('input[name="user"]:checked').length ===0){
             	$('.radio-err').removeClass('d-none');
             	$('#loginBtn').removeClass('grd1').attr('disabled','disabled');
	 		}else{
	 			$('.radio-err').addClass('d-none');
	 		}
	 	})

		$('#loginBtn').click(function(){
			event.stopPropagation();
			let radio = $('input[name="user"]:checked')[0].value;
			$.ajax({
				url :'/univ/all/LoginForm.do',
				type:'post',
				data: $('#loginFrm').serialize()
			})
			.done(data=>{
				console.log(data);
				if(data !='N'){
					location.href='/univ/all/home.do';
					alert(data+'님 환영합니다!!')
				}else if(data==='N'){
					$('.login-err').removeClass('d-none');
				}}
			)
		})
	</script>
</body>
</html>