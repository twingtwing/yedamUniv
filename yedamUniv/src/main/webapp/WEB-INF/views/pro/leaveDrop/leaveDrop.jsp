<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        .list-thead tr{
            background-color: #4c5a7d;
            border-color: #4c5a7d;
            color: white;
        }
        .list-table tr {
            height: 65px;
        }
        .list-table tr>td,
        .list-table tr>th {
            vertical-align: middle;
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
                        <small class="font-weight-bold">휴학 및 자퇴</small>
                    </div>
                </div>
                <hr class="mt-2 mb-2">
                <div class="col-lg-12 d-flex justify-content-between">
                    <div class="m-4  pb-2 pl-3">
                        <div class="row">
                            <i class="fa fa-address-book text-warning" style="font-size: 45px;"></i>
                            <div class="ml-3 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">휴학 및 자퇴</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end mb-3">
                        <div class="mr-2">
                            <select class="form-control">
                                <option value="">전체</option>
                                <option value="휴학">휴학</option>
                                <option value="자퇴">자퇴</option>
                            </select>
                        </div>
                        <div class="mr-2">
                            <select class="form-control">
                                <option value="">전체</option>
                                <option value="C">최종승인</option>
                                <option value="P">승인</option>
                                <option value="N">미처리</option>
                            </select>
                        </div>
                        <div class="mr-2">
                            <input id="" name="" type="text" class="form-control" placeholder="제목 검색...">
                        </div>
                        <div class="mr-2">
                            <a id="search" class="btn btn-outline-default" data-id="2">검색</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="row mx-1">
                                    <div class="col-lg-12">
                                        <table class="table list-table mt-4 text-center">
                                            <thead class="list-thead">
                                                <tr>
                                                    <th class="text-center" width='7%'>번호</th>
                                                    <th class="text-center" width='10%'>구분</th>
                                                    <th class="text-center"width='20%'>학과</th>
                                                    <th class="text-center"width='20%'>학번</th>
                                                    <th class="text-center"width='20%'>이름</th>
                                                    <th class="text-center" width='13%'>신청 일자</th>
                                                    <th class="text-center" width='10%'>처리 상태</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list-tbody">
                                            	<c:if test="${not empty list }">
                                                	<c:forEach items="${list }" var="ld" varStatus="var">
		                                                <tr id="${ld.num }">
		                                                    <td>${var.count }</td>
		                                                    <td>${ld.category }</td>
		                                                    <td>${ld.major }</td>
		                                                    <td>${ld.stuId }</td>
		                                                    <td>${ld.stuName }</td>
		                                                    <td class="subDate">${ld.date }</td>
		                                                    <td>
			                                                    <c:if test="${ld.process eq 'N'}">승인대기</c:if>
					                            				<c:if test="${ld.process eq 'P'}">교수승인</c:if>
					                            				<c:if test="${ld.process eq 'C'}">최종승인</c:if>
		                                                    </td>
		                                                </tr>
                                                	</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty list }">
		                                            <tr>
		                                                <td colspan="7" class="text-center font-weight-bold">현재 휴학 및 자퇴 신청자가 없습니다.</td>
		                                            </tr>
                                            	</c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <nav class="justify-content-center d-flex">
                                            <ul class="pagination">
												<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
													<li class="page-item ${pageMaker.ld.pageNum == num ? 'active' : '' }"><a data-page="${num }" class="page-link subPage">${num }</a></li>
												</c:forEach>
											</ul>
											<form id="pageFrm" action="/univ/pro/leaveDrop.do" method="get">
												<input type="hidden" name="pageNum" value="${pageMaker.ld.pageNum }">
												<input type="hidden" name="amount" value="${pageMaker.ld.amount }">
											</form>
                                        </nav>
                                    </div>
                                </div>
                                <!-- 공간이 남으므로 도움말 같은거 추가 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	<script type="text/javascript">
		$('.list-tbody > tr').click(function(){
			if($(this).children().eq(1).text() ==='휴학'){
				location.href="/univ/pro/leaveDetail.do?leaveNo="+$(this).attr('id');
			}else if($(this).children().eq(1).text() ==='자퇴'){
				location.href="/univ/pro/dropDetail.do?stuId="+$(this).attr('id');
			}
			
		});
		
		(function(){
			const dateList =  $('.subDate');
			for(date of dateList){
				date.innerHTML = (date.innerHTML).slice(0,10);
			}
		})();
		
		$('.subPage').on('click',function(){
			event.preventDefault();
			$('#pageFrm').find("input[name='pageNum']").val($(this).attr("data-page"));
			pageFrm.submit();
		})
	</script>
</body>
</html>