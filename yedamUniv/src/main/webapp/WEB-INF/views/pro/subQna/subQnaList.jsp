<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <a href="/univ/pro/mySubDetail.do?subNo=" alt="my subject" class="back_link"><small class="font-weight-bold">강의이름넣어야함</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">묻고 답하기</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                            <a href="/univ/pro/mySubDetail.do?subNo=" alt="my subject" class="back_link">
                                <h4 class="mb-0 font-weight-bold">강의이름 | 강의번호</h4>
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
                                            <th class="text-center">답변상태</th>
                                            <th class="text-center">등록일</th>
                                            <th class="text-center" width='100'>조회</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list-tbody">
                                        <!-- 10줄 -->
                                        <tr id="sqNo">
                                            <td>1</td>
                                            <td>
                                                첨부파일이 있을경우
                                                <i class="fa ti-file ml-1 text-warning"></i>
                                            </td>
                                            <td>sdsd</td>
                                            <td>sdsd</td>
                                            <td>sdsd</td>
                                            <td>sdsd</td>
                                        </tr>
                                        <!-- 
                                    <tr>
                                        글이 없을 경우
                                        <td colspan="7" class="text-center font-weight-bold">현재 작성된 글이 없습니다.</td>
                                    </tr>
                                -->
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
			location.href="/univ/pro/subQnaSelect.do?sqNo="+$(this).attr('id');
		});
	</script>
</body>
</html>