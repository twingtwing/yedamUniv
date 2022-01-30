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
                                            <a class="nav-link" href="/univ/admin/listReturn.do">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">복학</span>
                                            </a> 
                                        </li>
                                        <li id="drop" class="nav-item">
                                            <a class="nav-link active" href="/univ/admin/listDrop.do">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">자퇴</span>
                                            </a>
                                        </li>
                                    </ul>
                                   <div class="tab-content tabcontent-border" id="dropT">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <div class="p-20"><br>
                                                <div class="input-group">
                                                    <div class="col-lg-12 d-flex justify-content-end">
                                                    	<form action="/univ/admin/listDrop.do" method="get">
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
				                                                    <select class="btn btn-default dropdown-toggle mr-1" name="dropProcess" style="width: 120px; height: 38px;">
				                                                        <option value="">상태</option>
				                                                        <option value="N">승인대기</option>
				                                                        <option value="P">교수승인</option>
				                                                        <option value="C">최종승인</option>
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
                                                            <th>사유</th>
                                                            <th>신청일자</th>
                                                            <th>상태</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    	<c:forEach items="${list }" var="drop">
	                                                        <tr id="${drop.stuId }">
	                                                            <td>${drop.stuId }</td>
	                                                            <td>${drop.stuName }</td>
	                                                            <td>${drop.grade }학년</td>
	                                                            <td>${drop.major }학과</td>
	                                                            <td>${drop.dropReason }</td>
	                                                            <td class="subDate">${drop.dropDate }</td>
	                                                            <c:if test="${drop.dropProcess eq 'N' }"><td>승인대기</td></c:if>
	                                                            <c:if test="${drop.dropProcess eq 'P' }"><td class="font-weight-bold">교수승인</td></c:if>
	                                                            <c:if test="${drop.dropProcess eq 'C' }"><td>최종승인</td></c:if>
	                                                        </tr>
                                                    	</c:forEach>
                                                            <!--승인대기 > 교수승인 > 최종승인(관리자) -->
                                                            <!--관리자에서는 승인대기,교수승인 상태 확인가능-->
                                                            <!--단, 승인대기 상태에서는 관리자가 승인처리 못함-->
                                                            <!--상태가 교수승인일때야 비로소 관리자가 승인처리 가능-->
                                                            <!--그래서 교수승인일때는 font-weight : bold처리해주면 좋을듯-->
                                                    </tbody>
                                                </table><br><br>
                                                <div class="row d-flex justify-content-center">
	                                                <ul class="pagination">
														<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
															<li class="page-item ${pageMaker.ld.pageNum == num ? 'active' : '' }"><a data-page="${num }" class="page-link subPage">${num }</a></li>
														</c:forEach>
													</ul>
													<form id="pageFrm" action="/univ/admin/listDrop.do" method="get">
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
        <script type="text/javascript">
        (function(){
			const dateList =  $('.subDate');
			for(date of dateList){
				date.innerHTML = (date.innerHTML).slice(0,10);
			}
		})();
        
		$('#noticeListT tr').click(function(){
			location.href="/univ/admin/selectDrop.do?stuId="+$(this).attr('id');
			
		});
		$('.subPage').on('click',function(){
			event.preventDefault();
			$('#pageFrm').find("input[name='pageNum']").val($(this).attr("data-page"));
			pageFrm.submit();
		})   
    </script>
</body>
</html>