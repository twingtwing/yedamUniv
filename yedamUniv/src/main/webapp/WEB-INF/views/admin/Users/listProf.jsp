<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                                <span> 교수</span>
                                <h1 class="ti-user"> 교수목록</h1>
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
                                <div class="col-lg-12 d-flex justify-content-end">
	                               	<form action="/univ/admin/listProf.do">
	                               		<div class="row">
	                               			<div>
				                            	<select name="type" class="btn btn-default dropdown-toggle mr-1" style="width: 100px; height: 38px;">
				                                   <option value="name">이름</option>
				                                    <option value="id">아이디</option>
				                                    <option value="tel">연락처</option>
				                                 	<option value="rec">상태</option>
				                                 </select>
	                               			</div>
	                               			<div>
			                                   	<input type="text" name="search" class="form-control" placeholder="Search" style="height: 38px;">
	                               			</div>
	                               			<div>
			                                   	<button class="ti-search btn btn-default btn-flat" id=""></button>
	                               			</div>
	                               		</div>
	                                </form>
                                </div><br>
                                <div class="jsgrid-table-panel">
                                    <table id="noticeListT" class="display table table-borderd table-hover">
                                        <thead>
                                            <tr>
                                                <th>아이디</th>
                                                <th>이름</th>
                                                <th>전화번호</th>
                                                <th>입사일</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${prof }" var="one">
                                        		<tr id="${one.id }">
                                        			<td>${one.id }</td>
                                        			<td>${one.name }</td>
                                        			<td>${one.tel }</td>
                                        			<td class="subDate">${one.hiredate }</td>
                                        			<td>${one.rec }</td>
                                        		</tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
	                            <nav class="justify-content-center d-flex">
									<ul class="pagination">
										<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
											<li class="page-item ${pageMaker.vo.pageNum == num ? 'active' : '' }"><a data-page="${num }" class="page-link subPage">${num }</a></li>
										</c:forEach>
									</ul>
									<form id="pageFrm" action="/univ/admin/listProf.do" method="get">
										<input type="hidden" name="pageNum" value="${pageMaker.vo.pageNum }"> 
										<input type="hidden" name="amount" value="${pageMaker.vo.amount }">
									</form>
								</nav>
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
		
		$('.subPage').on('click',function(){
			event.preventDefault();
			$('#pageFrm').find("input[name='pageNum']").val($(this).attr("data-page"));
			pageFrm.submit();
		})
		
		$('#noticeListT tr').click(function(){
			location.href="/univ/admin/selectProf.do?id="+$(this).attr('id');
		});
    </script>
</body>
</html>