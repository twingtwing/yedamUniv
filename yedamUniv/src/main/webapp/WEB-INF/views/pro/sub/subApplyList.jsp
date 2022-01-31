<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .board-nav{
            position: relative;
        }
        .board-btn{
		    position: absolute;
		    bottom: 1px;
		    right: 30px;
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
                        <small class="font-weight-bold">강의 등록</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-12 d-flex justify-content-between">
                    <div class="mx-4 mt-4 pb-2 pl-3">
                        <div class="row mb-4">
                            <i class="fa fa-paperclip text-warning" style="font-size: 35px;"></i>
                            <div class="ml-2 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">강의 등록</h3>
                            </div>
                        </div>
                        <!-- 이번년도 이번학기 강의목록만 갖고와야함 -->
                        <div class="row">
                            <h6>최대 등록 갯수 : &nbsp;</h6>
                            <h6>5 개</h6>
                            <h6>&nbsp;|&nbsp;남은 갯수: &nbsp;</h6>
                            <h6>${subjectCount} 개</h6>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end mb-3">
                    	<form action="/univ/pro/subApplyList.do">
                    		<div class="row mr-1">
		                        <div class="mr-2">
		                            <input name="subjectName" type="text" class="form-control" placeholder="교과목명 검색...">
		                        </div>
		                        <div class="mr-2">
		                            <button type="submit" class="btn btn-outline-default">검색</button>
		                        </div>
                    		</div>
                    	</form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <table class="table list-table mt-4 text-center">
                                    <thead class="list-thead">
                                        <tr id="subNo">
                                            <th class="text-center" width='10%'>번호</th>
                                            <th class="text-center">교과목명</th>
                                            <th class="text-center" width='15%'>신청날짜</th>
                                            <th class="text-center" width='15%'>승인 날짜</th>
                                            <th class="text-center" width='15%'>승인 결과</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list-tbody">
                                    	<c:if test="${not empty subList }">
	                                    	<c:forEach items="${subList }" var="sub">
		                                        <tr id="${sub.subjectNo }">
		                                            <td>${sub.rn }</td>
		                                            <td>${sub.subjectName }</td>
		                                            <td class="subDate">${sub.subjectDate }</td>
		                                            <c:if test="${not empty sub.subjectPermit }">
			                                            <td class="subDate">${sub.subjectPermit }</td>
		                                            </c:if>
		                                            <c:if test="${empty sub.subjectPermit }"><td>--</td></c:if>
		                                            <td>
		                                            	<c:if test="${sub.subjectStatus eq 'N' or  empty sub.subjectStatus}">미 처리</c:if>
		                                            	<c:if test="${sub.subjectStatus eq 'X'}">반려</c:if>
		                                            	<c:if test="${sub.subjectStatus eq 'Y'}">승인</c:if>
		                                            </td>
		                                        </tr>
	                                    	</c:forEach>
                                    	</c:if>
                                    	<c:if test="${empty subList }">
                                            <tr>
                                                <td colspan="5" class="text-center font-weight-bold" style="height: 100px;">현재 신청하신 강의가 없습니다.</td>
                                            </tr>
                                    	</c:if>
                                    </tbody>
                                </table>
                                <div class="row">
									<div class="board-nav col-lg-12">
										<nav class="justify-content-center d-flex">
											<ul class="pagination">
												<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
													<li class="page-item ${pageMaker.cri.pageNum == num ? 'active' : '' }"><a data-page="${num }" class="page-link subPage">${num }</a></li>
												</c:forEach>
											</ul>
											<form id="pageFrm" action="/univ/pro/subApplyList.do" method="get">
												<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
												<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
											</form>
										</nav>
										<c:if test="${subjectCount ne 0}">
		                                	<button onclick="location.href='/univ/pro/subInsert.do'" class="btn btn-default board-btn mb-3 pb-1" style="width: 80px; height: 35px;">등록</button>
										</c:if>
										<c:if test="${subjectCount eq 0}">
											<div class="d-flex align-items-center board-btn mb-2 pb-1">
	                                                <div class="d-flex justify-content-end">
	                                                    <div>
	                                                        <i class="fa  fa-exclamation-circle text-danger"></i>
	                                                    </div>
	                                                    <p class="text-danger mx-2 mb-0">이미 강의신청 갯수를 다 채우셨기 때문에, 강의신청이 불가능합니다.</p>
	                                                </div>
	                                            </div>
										</c:if>
									</div>
								</div>
                            </div>
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
	
		$('.list-tbody > tr').click(function(){
			location.href="/univ/pro/subApplySelect.do?subjectNo="+$(this).attr('id');
		});
		
		$('.subPage').on('click',function(){
			event.preventDefault();
			$('#pageFrm').find("input[name='pageNum']").val($(this).attr("data-page"));
			pageFrm.submit();
		})
	</script>
</body>
</html>