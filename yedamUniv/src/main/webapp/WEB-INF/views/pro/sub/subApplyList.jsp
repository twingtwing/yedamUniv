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
                            <h6>? 개</h6>
                            <h6>&nbsp;|&nbsp;남은 갯수: &nbsp;</h6>
                            <h6>? 개</h6>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end mb-3">
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
                                <table class="table list-table mt-4 text-center">
                                    <thead class="list-thead">
                                        <tr id="subNo">
                                            <th class="text-center" width='10%'>번호</th>
                                            <th class="text-center">교과목명</th>
                                            <th class="text-center" width='15%'>신청날짜</th>
                                            <th class="text-center" width='15%'>승인 결과</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list-tbody">
                                    <!-- 10개 -->
                                        <tr>
                                            <td>1</td>
                                            <td>sdsd</td>
                                            <td>sdsd</td>
                                            <td>승인</td>
                                        </tr>
                                        <!-- 
                                            <tr>
                                                강의가 없을 경우
                                                <td colspan="4" class="text-center font-weight-bold" style="height: 100px;">현재 신청하신 강의가 없습니다.</td>
                                            </tr>
                                        -->
                                    </tbody>
                                </table>
                                <!-- 공간이 남아서 여기에 도움말 같은 거 추가 필요 -->
                                <div class="d-flex justify-content-end mt-3 mr-3">
                                    <button onclick="location.href='/univ/pro/subInsert.do'" class="btn btn-default" style="width: 80px; height: 35px;">등록</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	<script type="text/javascript">
		$('.list-tbody > tr').click(function(){
			location.href="/univ/pro/subApplySelect.do?subNo="+$(this).attr('id');
		});
	</script>
</body>
</html>