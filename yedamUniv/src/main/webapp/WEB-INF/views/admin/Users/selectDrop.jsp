<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        #noticeListT:hover{cursor: pointer;}
    </style>
</head>
<body>
<div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <span>멤버관리 </span>
                                <span class="ti-angle-right"></span>
                                <span> 휴학/복학/자퇴 신청 관리</span>
                                <h1 class="ti-user"> 자퇴신청 조회</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="row mx-5 mb-5">
                                    <div class="col-lg-12" style="text-align: center;">
                                        <span style="font-size: 40px; font-weight: bold;">자퇴 신청서</span>
                                    </div>
                                </div>
                                <div class="row mx-5 mb-5">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 인적사항</h5><br>
                                        <table id="" class="display table table-borderd">
                                            <tbody>
                                            <tr>
                                                <th>아이디</th>
                                                <td>${drop.stuId }</td>
                                                <th>전화번호</th>
                                                <td>
                                                    <input type="text" value="${drop.stuTel }" disabled="disabled" style="width:100%">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>이름</th>
                                                <td>
                                                    <input type="text" value="${drop.stuName }" disabled="disabled" style="width:100%">
                                                    </td>
                                                <th>이메일</th>
                                                <td>
                                                    <input type="text" value="${drop.stuEmail }" disabled="disabled" style="width:100%">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <th>생년월일</th>
                                                <td class="subDate">${drop.stuBirth }</td>
                                                <th>권한</th>
                                                <td>학생</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row mx-5 mb-5">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 자퇴사유</h5><br>
                                        <table id="" class="display table table-borderd">
                                            <tbody>
                                            <tr>
                                                <th>세부구분</th>
                                                <td>${drop.dropDetail }</td>
                                                <th>자퇴신청일자</th>
                                                <td class="subDate">${drop.stuBirth }</td>
                                                <th>상태</th>
                                                <td>
                                                	<c:if test="${drop.dropProcess eq 'N'}">승인대기</c:if>
                                                	<c:if test="${drop.dropProcess eq 'P'}">교수승인</c:if>
                                                	<c:if test="${drop.dropProcess eq 'C'}">최종승인</c:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>사 유</th>
                                                <td colspan="5" style="text-align:center">
                                                    <input type="text" style="width: 100%;" disabled="disabled" value="${drop.dropReason }">
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 mb-3">
                                    <div class="col-lg-12 d-flex justify-content-end">
                                    	<c:if test="${drop.dropProcess eq 'P'}">
 	                                       <button id="proUpBtn" class="btn btn-default m-b-10 m-l-5 m-r-10" style="width:80px">승인</button>
                                    	</c:if>
                                    	<c:if test="${drop.dropProcess eq 'N'}">
                                    		<div>
                                    			<i class="fa fa-exclamation-circle text-primary mr-1"></i>
                                    		</div>
                                    		<p class="text-primary mr-2">교수 승인을 먼저 받아야합니다.</p>
                                    	</c:if>
                                    	<c:if test="${drop.dropProcess eq 'C'}">
                                    		<div>
                                    			<i class="fa fa-exclamation-circle text-primary mr-1"></i>
                                    		</div>
                                    		<p class="text-primary mr-2">최종 승인을 완료하셨습니다.</p>
                                    	</c:if>
                                    </div>
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </section>
            </div>
        </div>
    </div>
     	<script type="text/javascript">
		(function(){
			const dateList =  $('.subDate');
			for(date of dateList){
				date.innerHTML = (date.innerHTML).slice(0,10);
			}
		})();
		
		$('#proUpBtn').click(function(){
			$.ajax({
				url : '/univ/admin/dropUpdate.do',
				data : {
					stuId : '${drop.stuId}'
				},
				type:'post'
			})
			.done(data=>{
				if(data ==='Y'){
					alert('최종적으로 승인을 완료하였습니다.');
					location.href="/univ/admin/selectDrop.do?stuId="+'${drop.stuId}';
				}else if(data ==='N'){
					alert('승인 처리 중에 오류가 발생하여 중단합니다.');
				}
			})
		})
 	</script>
</body>
</html>