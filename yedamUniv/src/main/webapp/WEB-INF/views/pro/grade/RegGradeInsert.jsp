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
                        <!-- subNo 넣어야함 -->
                        <a href="/univ/pro/mySubDetail.do?subNo=" alt="my subject" class="back_link"><small class="font-weight-bold">강의이름넣어야함</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">성적 등록</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                        	<!-- subNo 넣어야함 -->
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
                            <i class="fa fa-check-square-o text-warning" style="font-size: 45px;"></i>
                            <div class="ml-2 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">성적 등록</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end mb-3">
                        <div class="mr-2">
                            <select id="search-grade" name="grade" class="form-control">
                                <option value="">전체</option>
                                <option value="4.5">A+</option>
                                <option value="4.0">A</option>
                                <option value="3.5">B+</option>
                                <option value="3.0">B</option>
                                <option value="2.5">C+</option>
                                <option value="2.0">C</option>
                                <option value="1.5">D+</option>
                                <option value="1.0">D</option>
                                <option value="0">F</option>
                            </select>
                        </div>
                        <div class="mr-2">
                            <input id="search-name" name="" type="text" class="form-control" placeholder="이름 검색...">
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
                                                    <th class="text-center" width='80'>번호</th>
                                                    <th class="text-center">학과</th>
                                                    <th class="text-center">학번</th>
                                                    <th class="text-center">이름</th>
                                                    <th class="text-center" width='140'>중간</th>
                                                    <th class="text-center" width='140'>기말</th>
                                                    <th class="text-center" width='140'>성적</th>
                                                    <th class="text-center" width='140'>입력</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list-tbody">
                                                <!-- 10줄 --> 
                                                <tr id="stuId들어가야함">
                                                    <td>2</td>
                                                    <td>sdsd</td>
                                                    <td>sdsd</td>
                                                    <td>sdsd</td>
                                                    <td>
                                                        <input type="text" id="midExam" name="midExam" value="40" class="form-control">
                                                    </td>
                                                    <td>
                                                        <input type="text" id="finalExam" name="finalExam" value="50" class="form-control">
                                                    </td>
                                                    <td>
                                                        <select id="grade" name="grade" class="form-control">
                                                        	<option value="">미 입력</option>
                                                            <option value="4.5">A+</option>
                                                            <option value="4.0">A</option>
                                                            <option value="3.5">B+</option>
                                                            <option value="3.0">B</option>
                                                            <option value="2.5">C+</option>
                                                            <option value="2.0">C</option>
                                                            <option value="1.5">D+</option>
                                                            <option value="1.0">D</option>
                                                            <option value="0">F</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <a class="a-grade btn btn-outline-default w-75" data-id="stuId들어가야함">확인</a>
                                                    </td>
                                                </tr>
                                                <!-- 
                                                    <tr>
                                                        수강생이 없을 경우
                                                        <td colspan="7" class="text-center font-weight-bold">현재 수강생이 없습니다.</td>
                                                    </tr>
                                                -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
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
                </div>
            </div>
    <script>
        $('.a-grade').on('click',function(){
            var id ='#'+ $(this).attr('data-id');
            console.log($(id+' #midExam').val());
            console.log($(id+' #finalExam').val());
            console.log($(id+' #grade').val());
            
            if($(id+' #midExam').val()===''){
            	alert('중간점수 미 입력 상태입니다.');
            	$(id+' #midExam').focus();
            }else if(!/^[0-9]*$/.test($(id+' #midExam').val())){
            	alert('점수는 숫자입력만 가능합니다.');
            	$(id+' #midExam').val('');
            	$(id+' #midExam').focus();
            }else if($(id+' #finalExam').val()===''){
            	alert('기말점수 미 입력 상태입니다.');
            	$(id+' #finalExam').focus();
            }else if(!/^[0-9]*$/.test($(id+' #finalExam').val())){
            	alert('점수는 숫자입력만 가능합니다.');
            	$(id+' #finalExam').val('');
            	$(id+' #finalExam').focus();
            }else if($(id+' #grade').val()===''){
            	alert('학점 미입력 상태입니다.');
            }
        });

        $('#search').on('click',function(){
            console.log($('#search-name').val());
            console.log($('#search-grade').val());
            // 아작스
            // 테이블 수정
        });
    </script>
</body>
</html>