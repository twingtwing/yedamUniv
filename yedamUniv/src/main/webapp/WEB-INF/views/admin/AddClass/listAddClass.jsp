<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
    <style>
        #noticeListT:hover{cursor: pointer;}
        #noticeListT{
        	text-align: center;
        }
        #noticeListT th, #noticeListT td{
        	height : 60px;
        	vertical-align: middle;
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
                                <span>강의등록 </span>
                                <span class="ti-angle-right"></span>
                                <span> 강의등록처리</span>
                                <h1 class="ti-stamp"> 강의신청목록</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card class-card">
                            	<div class="row">
                            		<div class="col-lg-12 d-flex justify-content-end">
                            			<form action="/univ/admin/listAddClass.do">
                            				<div class="row">
			                            		<div>
					                            	<select name="subjectStatus" class="btn btn-default dropdown-toggle" style="width: 100px; height: 37px">
					                                   	<option value="">전체</option>
					                                   	<option value="N">미처리</option>
					                                  	<option value="Y">승인</option>
					                                	<option value="X">반려</option>
					                            	</select>
			                            		</div>
			                            		<div>
					                            	<input name="subjectName" type="text" class="form-control" placeholder="교과목명.." style="width: 200px; height: 38px">
			                            		</div>
			                            		<div>
					                            	<button type="submit" class="ti-search btn btn-default btn-flat" id=""></button>
			                            		</div>
                            				</div>
                            			</form>
                            		</div>
                            	</div>
                            	<div class="row">
	                                <table id="noticeListT" class="display table table-borderd table-hover mt-2">
	                                    <thead>
	                                        <tr>
	                                        	<th>순번</th>
	                                            <th>강의명</th>
	                                            <th>구분</th>
	                                            <th>인정학점</th>
	                                            <th>담당교수</th>
	                                            <th>신청일자</th>
	                                            <th>승인일자</th>
	                                            <th class="text-center">상태</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:if test="${not empty subList }">
	                                    		<c:forEach items="${subList }" var="sub">
			                                        <tr id="${sub.subjectNo }">
			                                            <td>${sub.rn }</td>
			                                            <td>${sub.subjectName }</td>
			                                            <td>${sub.subjectDetail }</td>
			                                            <td>${sub.subjectScore }</td>
			                                            <td>${sub.proName }</td>
			                                            <td class="subDate">${sub.subjectDate }</td>
			                                            <c:if test="${empty sub.subjectPermit}"><td class="text-center">--</td></c:if>
			                                            <c:if test="${not empty sub.subjectPermit}"><td class="subDate">${sub.subjectPermit }</td></c:if>
			                                            <td class="text-center">
			                                            	<c:if test="${sub.subjectStatus eq 'N' or  empty sub.subjectStatus}">미 처리</c:if>
			                                            	<c:if test="${sub.subjectStatus eq 'X'}">반려</c:if>
			                                            	<c:if test="${sub.subjectStatus eq 'Y'}">승인</c:if>
			                                            </td>
			                                        </tr>
	                                    		</c:forEach>
	                                    	</c:if>
	                                    	<c:if test="${empty subList }">
	                                            <tr>
	                                                <td colspan="8" class="text-center font-weight-bold" style="height: 100px;">현재 신청하신 강의가 없습니다.</td>
	                                            </tr>
	                                    	</c:if>
	                                    </tbody>
	                                </table>
                                </div>
                                <div class="row">
									<div class="board-nav col-lg-12">
										<nav class="justify-content-center d-flex">
											<ul class="pagination">
												<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
													<li class="page-item ${pageMaker.cri.pageNum == num ? 'active' : '' }"><a data-page="${num }" class="page-link subPage">${num }</a></li>
												</c:forEach>
											</ul>
											<form id="pageFrm" action="/univ/admin/listAddClass.do" method="get">
												<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
												<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
											</form>
										</nav>
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
	    
	    $('#noticeListT tr').click(function(){
			location.href="/univ/admin/selectAddClass.do?subjectNo="+$(this).attr('id');
		});
	    
	    $('.subPage').on('click',function(){
			event.preventDefault();
			$('#pageFrm').find("input[name='pageNum']").val($(this).attr("data-page"));
			pageFrm.submit();
		})
    </script>
</body>
</html>