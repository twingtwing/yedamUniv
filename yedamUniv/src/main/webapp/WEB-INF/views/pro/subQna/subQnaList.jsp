<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>

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
                        <a href="/univ/pro/mySub.do" alt="my room" class="back_link"><small class="font-weight-bold">나의 강의실</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="/univ/pro/mySubDetail.do?subNo=${subNo }&&subName=${subName}" alt="my subject" class="back_link"><small class="font-weight-bold">${subName }</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">묻고 답하기</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                            <a href="/univ/pro/mySubDetail.do?subNo=${subNo }&&subName=${subName}" alt="my subject" class="back_link">
                                <h4 class="mb-0 font-weight-bold">${subName } | ${subNo }</h4>
                            </a>
                        </div>
                    </div>
                </div>
                <hr class="mt-2 mb-2">
                <div class="col-lg-12 d-flex justify-content-between">
                    <div class="m-4  pb-2 pl-3">
                        <div class="row">
                            <i class="fa fa-question-circle text-warning" style="font-size: 45px;"></i>
                            <div class="ml-2 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">묻고 답하기</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end mb-3">
                        <div class="mr-2">
                            <select id="" name="" class="form-control">
                                <option value="?">제목</option>
                                <option value="?">글쓴이</option>
                                
                            </select>
                        </div>
                        <div class="mr-2">
                            <input id="" name="" type="text" class="form-control" placeholder="내용을 입력해주세요">
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
                                <table class="table list-table mt-4 text-center">
                                    <thead class="list-thead">
                                        <tr>
                                            <th class="text-center" width='100'>번호</th>
                                            <th class="text-center">제목</th>
                                            <th class="text-center">작성자</th>
                                            <th class="text-center">학과</th>
                                            <th class="text-center">등록일</th>
                                            <th class="text-center">답변상태</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody class="list-tbody">
                                        <!-- 10줄 -->
                                        <c:if test="${not empty qnaLists }">
	                                        <c:forEach var="qnaList" items="${qnaLists }">
	                                        
		                                        <tr id="${qnaList.sqNo }">
		                                            <td>${qnaList.sqNo }</td>
		                                            <!-- <td>
		                                                첨부파일이 있을경우
		                                                <i class="fa ti-file ml-1 text-warning"></i>
		                                            </td> -->
		                                            <td width="60%">${qnaList.sqTitle }</td>
		                                            <td>${qnaList.stuName }</td>
		                                            <td>${qnaList.major }</td>
		                                            <td><c:out
								                            value="${fn:substring(qnaList.sqDate,0,10) }"
								                          ></c:out></td>
		                                            <c:if test="${qnaList.sqState eq 'Y' }">
		                                            	<td class="text-primary">답변완료</td>
		                                            </c:if>
		                                            <c:if test="${qnaList.sqState ne 'Y' }">
		                                            	<td class="text-warning">답변대기</td>
		                                            </c:if>
		                                         
		                                        </tr>
	                                        </c:forEach>
                                        </c:if>
                                        
                                     <c:if test="${empty qnaLists }">
	                                    <tr>
	                                        글이 없을 경우
	                                        <td colspan="7" class="text-center font-weight-bold">현재 작성된 글이 없습니다.</td>
	                                    </tr>
                                    </c:if>
                                
                                    </tbody>
                                </table>
                                <nav class="justify-content-center d-flex">
                                    <ul class="pagination">
                                        <li class="page-item">
                                            <a href="#" class="page-link" aria-label="Previous">
                                                <span aria-hidden="true">
                                                    <span class="ti-angle-double-left"></span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="page-item"><a href="#" class="page-link">01</a></li>
                                        <li class="page-item active"><a href="#" class="page-link">02</a>
                                        </li>
                                        <li class="page-item"><a href="#" class="page-link">03</a></li>
                                        <li class="page-item"><a href="#" class="page-link">04</a></li>
                                        <li class="page-item"><a href="#" class="page-link">09</a></li>
                                        <li class="page-item">
                                            <a href="#" class="page-link" aria-label="Next">
                                                <span aria-hidden="true">
                                                    <span class="ti-angle-double-right"></span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	<script type="text/javascript">
		$('.list-tbody > tr').click(function(){
			location.href="/univ/pro/subQnaSelect.do?sqNo="+$(this).attr('id')+"&&subNo="+"${subNo }"+"&&subName="+"${subName}";
		});
	</script>
</body>
</html>