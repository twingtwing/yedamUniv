<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#main-content .card .tab-pane{
		height: 70vh;
	}
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
                                <h1 class="ti-clipboard"> 신청목록</h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <div id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li id="rest" class="nav-item">
                                            <a class="nav-link" href="/univ/admin/listLeave.do">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">휴학</span>
                                            </a>
                                        </li>
                                        <li id="return" class="nav-item">
                                            <a class="nav-link active" href="/univ/admin/listReturn.do">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">복학</span>
                                            </a> 
                                        </li>
                                        <li id="drop" class="nav-item">
                                            <a class="nav-link" href="/univ/admin/listDrop.do">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">자퇴</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content tabcontent-border" id="returnT">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <div class="p-20"><br>
                                                <div class="input-group">
                                                	<div class="col-lg-12 d-flex justify-content-end">
	                                                    <form action="/univ/admin/listReturn.do" method="get">
	                                                    	<div class="row">
	                                                    		<div>
			                                                    	<select class="btn btn-default dropdown-toggle mr-1" name="grade" style="width: 100px; height: 38px;">
				                                                        <option value="">학년</option>
				                                                        <option value="1">1학년</option>
				                                                        <option value="2">2학년</option>
				                                                        <option value="3">3학년</option>
				                                                        <option value="4">4학년</option>
				                                                    </select>
	                                                    		</div>
	                                                    		<div>
				                                                    <select class="btn btn-default dropdown-toggle mr-1" name="backStete" style="width: 120px; height: 38px;">
				                                                        <option value="">상태</option>
				                                                        <option value="N">승인대기</option>
				                                                        <option value="Y">최종승인</option>
				                                                    </select>
	                                                    		</div>
	                                                    		<div>
				                                                    <select class="btn btn-default dropdown-toggle mr-3" name="type" style="width: 80px; height: 38px;">
				                                                        <option value="id">학번</option>
				                                                        <option value="name">이름</option>
				                                                    </select>
	                                                    		</div>
	                                                    		<div>
			                                                    	<input type="text" name="search" class="form-control" placeholder="Search.." style="height: 38px;">
	                                                    		</div>
	                                                    		<div>
			                                                    	<button class="ti-search btn btn-default btn-flat" type="submit"></button>
	                                                    		</div>
	                                                    	</div>
	                                                    </form>
                                                	</div>
                                                </div><br>
                                                <table id="noticeListT" class="display table table-borderd table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>학번</th>
                                                            <th>이름</th>
                                                            <th>학년</th>
                                                            <th>학과</th>
                                                            <th>복학예정</th>
                                                            <th>휴학신청일자</th>
                                                            <th>복학신청일자</th>
                                                            <th>상태</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${list }" var="leave">
	                                                        <tr id="${leave.leaveNo }">
	                                                            <td>${leave.stuId }</td>
	                                                            <td>${leave.stuName }</td>
	                                                            <td>${leave.grade }학년</td>
	                                                            <td>${leave.major }학과</td>
	                                                            <td class="subDate">${leave.backSchedule }</td>
	                                                            <td class="subDate">${leave.leaveDate }</td>
	                                                            <td class="subDate">${leave.backDate }</td>
	                                                            <c:if test="${leave.backStete eq 'N' }"><td class="font-weight-bold">승인대기</td></c:if>
	                                                            <c:if test="${leave.backStete eq 'Y' }"><td>최종승인</td></c:if>
	                                                        </tr>
                                                    	</c:forEach>
                                                    </tbody>
                                                </table><br><br>
                                                <div class="row d-flex justify-content-center">
	                                                <ul class="pagination">
														<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
															<li class="page-item ${pageMaker.ld.pageNum == num ? 'active' : '' }"><a data-page="${num }" class="page-link subPage">${num }</a></li>
														</c:forEach>
													</ul>
													<form id="pageFrm" action="/univ/admin/listReturn.do" method="get">
														<input type="hidden" name="pageNum" value="${pageMaker.ld.pageNum }">
														<input type="hidden" name="amount" value="${pageMaker.ld.amount }">
													</form>
												</div>
                                            </div>
                                        </div>
                                    </div>
                            	</div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </div>
            </div>
        </div>
    </div>
    
    <script>
	    (function(){
			const dateList =  $('.subDate');
			for(date of dateList){
				date.innerHTML = (date.innerHTML).slice(0,10);
			}
		})();
		$('#noticeListT tr').click(function(){
			location.href="/univ/admin/selectReturn.do?leaveNo="+$(this).attr('id');
			
		});
		$('.subPage').on('click',function(){
			event.preventDefault();
			$('#pageFrm').find("input[name='pageNum']").val($(this).attr("data-page"));
			pageFrm.submit();
		})   
    </script>

</body>
</html>