<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        .back_link {
            color: #4c5a7d;
        }
        .back_link:hover{
            text-decoration: underline;
        }
        .board-div > div{
            border-top: 1px solid #4c5a7d;
        }
        .board-div > div:last-of-type{
            border-bottom: 1px solid #4c5a7d;
            height: 50vh;
        }
        .board-ul li{
            list-style-type: none;
            float: left;
        }
    </style>
</head>
<body>
            <div class="page-content fade-in-up">
                <div class="row">
                    <div class="col-lg-12">
                        <i class="fa fa-home"></i>
                        <a href="/univ/pro/pro.do" alt="my main" class="back_link font-weight-bold">my main</a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="/univ/pro/leaveDrop.do" alt="my room" class="back_link"><small class="font-weight-bold">휴학 및 자퇴</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">휴학</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="m-4  pb-2 pl-3">
                        <div class="row">
                            <i class="fa fa-address-book text-warning" style="font-size: 45px;"></i>
                            <div class="ml-3 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">휴학 및 자퇴</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="mt-2">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="mx-4 mt-3 pl-2">
                                    <div class="row">
                                        <i class="fa fa-clipboard" style="font-size: 25px;"></i>
                                        <div class="ml-2 d-flex align-items-center">
                                            <h4 class="mb-0 font-weight-bold">휴학</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-lg-12 board-div">
                                            <div class="row d-flex justify-content-between bg-silver-100 pt-2 pb-1 pl-2 pr-2">
                                                <h6>신청자 : ${leave.stuName }</h6>
                                                <div class="row">
                                                    <h6 class="mr-3 subDate"></h6>
                                                    <h6 class="mr-4">세부구분 : ${leave.leaveDetail }</h6>
                                                </div>
                                            </div>
                                            <div class="row pt-3 pb-1 px-2">
                                                <p>
                                                   ${leave.leaveReason }
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row d-flex justify-content-end mt-3">
                                        <c:if test="${leave.leaveProcess  ne 'N'}">
                                    		<div class="row">
                                    			<div class="d-flex align-items-center mr-2">
	                                    			<i class="fa fa-exclamation-circle"></i>
	                                    		</div>
	                                    		<div class="d-flex align-items-center mr-4">
	                                    			<p class="mb-0 mr-3">이미 처리하셨습니다.</p>
	                                    		</div>
                                    		</div>
                                    	</c:if>
                                    	<c:if test="${leave.leaveProcess  eq 'N'}">
                                        	<button id="leaveBtn" class="btn btn-default mr-2" style="width: 70px;">승인</button>
                                    	</c:if>
                                        <button onclick="history.back()" class="btn btn-default" style="width: 70px;">목록</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
	    		$('.subDate')[0].innerHTML = '신청일자 : '+'${leave.leaveDate }'.slice(0,10);
	    		$('#leaveBtn').click(function(){
	    			let result = confirm('정말 승인하시겠습니까?');
	    			if(result){
	    				$.ajax({
	    					url:'/univ/pro/leaveDetailUp.do',
	    					data :{leaveNo:'${leave.leaveNo }'},
	    					type:'post'
	    				})
	    				.done(data=>{
	    					if(data ==='Y'){
	    						alert('해당 사항을 승인하셨습니다.');
	    						location.href='/univ/pro/leaveDrop.do';
	    					}else if(data ==='N'){
	    						alert('승인 과정 중에 오류가 발생하였습니다.');
	    					}
	    				})
	    			}
	    		})
            </script>
</body>
</html>