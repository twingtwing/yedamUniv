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
        .plan-box{
            border: 2px solid #4c5a7d;
        }
        .plan-table{
            border-top: 2px solid #4c5a7d;
            border-bottom: 1px solid rgba(0,0,0,.1);
        }
        .plan-table tr{
            height: 50px;
        }
        .plan-table tr>td,.plan-table tr>th{
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
                        <a href="/univ/pro/subApplyList.do" alt="강의등록" class="back_link"><small class="font-weight-bold">강의 등록</small></a>
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
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="plan-box m-4 p-5">
                                    <form id="subFrm">
                                        <div class="row d-flex justify-content-center mt-4">
                                            <div class="col-lg-2 pr-0 d-flex justify-content-end align-items-center">
                                                <h3 class="font-weight-bold mb-0">강의 제목 :&nbsp;&nbsp;</h3>
                                            </div>
                                            <div class="col-lg-5 pl-0">
                                                <input class="form-control" id="subjectName" name="subjectName" style="height: 45px;" type="text" placeholder="강의 제목 입력..">
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">과목 정보</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <table class="plan-table table text-center mt-2 mb-0">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center bg-silver-100" width=17%>학점</th>
                                                            <th class="text-center bg-silver-100" width=17%>이수구분</th>
                                                            <th class="text-center bg-silver-100" width=17%>총 학생</th>
                                                            <th class="text-center bg-silver-100">강의실 / 강의시간</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="d-flex justify-content-center">
                                                                    <select id="subjectScore" name="subjectScore" class="form-control input-lg w-75">
                                                                        <option class="text-center" value="1">1</option>
                                                                        <option class="text-center" value="2">2</option>
                                                                        <option class="text-center" value="3">3</option>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="d-flex justify-content-center">
                                                                    <select id="subjectDetail" name="subjectDetail" class="form-control input-lg w-75">
                                                                        <option class="text-center" value="전공">전공</option>
                                                                        <option class="text-center" value="교양">교양</option>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="d-flex justify-content-center">
                                                                    <input id="subjectTotal" name="subjectTotal" class="form-control w-75" type="text" placeholder="몇 명..">
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <!-- 강의실을 선택하면 요일 option박스에 가능한 요일이 나오고
                                                                요일 option을 선택하면, 시간대가 나와야함
                                                                여기서 다시 강의실을 누르면, 요일과 시간대는 모두 백업되야함
                                                                이는 미리 정보를 다 갖고 온상태에서 하기 때문에 db를 하나하나 갔다올 필요가 없음
                                                                대신 백단에서 요일별로 시간대를 배열화해서 손쉽게 보내야함 -->
                                                                <div class="d-flex justify-content-center">
                                                                    <select id="subjectRoom" name="subjectRoom" class="form-control input-lg w-25 mr-4">
                                                                        <option class="text-center" value="1">1 강의실</option>
                                                                        <option class="text-center" value="2">2 강의실</option>
                                                                        <option class="text-center" value="3">3 강의실</option>
                                                                        <option class="text-center" value="4">4 강의실</option>
                                                                        <option class="text-center" value="5">5 강의실</option>
                                                                    </select>
                                                                    <select id="subjectDay" name="subjectDay" class="form-control input-lg w-25 mr-4">
                                                                        <option class="text-center" value="">선택</option>
                                                                        <option class="text-center" value="1">월</option>
                                                                        <option class="text-center" value="2">화</option>
                                                                        <option class="text-center" value="3">수</option>
                                                                        <option class="text-center" value="4">목</option>
                                                                        <option class="text-center" value="5">금</option>
                                                                    </select>
                                                                    <select id="subjectTime" name="subjectTime" class="form-control input-lg w-50">
                                                                        <option class="text-center" value="">선택</option>
                                                                        <!--  시간대에 따른 db값이 어떤지 확인해야함 -->
                                                                        <option class="text-center" value="1">9:00 ~ 9:50</option>
                                                                        <option class="text-center" value="2">10:00 ~ 10:50</option>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="row mt-1 mb-2">
                                                <div class="col-lg-12">
                                                    <div class="row d-flex justify-content-end">
                                                        <div>
                                                            <i class="fa fa-question-circle text-primary"></i>
                                                        </div>
                                                        <p class="text-primary mx-2 mb-0">강의실을 먼저 선택하시면, 선택가능한 요일을 보여드립니다. 또한, 요일을 먼저 선택하시면, 선택가능한 시간대를 보여드립니다.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 개요</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectSum" name="subjectSum" class="form-control" rows="7" placeholder="수업 개요..."></textarea>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 목표</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectGoal" name="subjectGoal" class="form-control" rows="7" placeholder="수업 목표..."></textarea>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 자료</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectData" name="subjectData" class="form-control" rows="7" placeholder="수업 자료..."></textarea>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 내용</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectContents" name="subjectContents" class="form-control" rows="7" placeholder="수업 내용..."></textarea>
                                            </div>
                                        </div> 
                                        <div class="row mx-5 mt-5 pr-5">
                                            <div class="col-lg-12 d-flex justify-content-between ml-4">
                                                <button type="button" onclick="history.back()" class="btn btn-default" style="width:100px; height: 40px;">뒤로 가기</button>
                                                <button type="button" id="subBtn" class="btn btn-default" style="width:75px; height: 40px;">등록</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <script>
        //시간대
        $('#subjectRoom').change(function(){
            //아작스 갔다 와야함

            //날짜 option 재설정
            $('#subjectDay').children('option:not(:first)').remove();
            $('#subjectDay').append($('<option>').val('1').text('1'));

            //시간 초기화
            $('#subjectTime').val('');
        });

        $('#subjectDay').change(function(){
            //아작스 갔다 와야함

            //시간 option 재설정
            $('#subjectTime').children('option:not(:first)').remove();
            $('#subjectTime').append($('<option>').val('1').text('1'));
        });

        //form 
        $('#subBtn').on('click',function(){
            event.preventDefault();

            if($('#subjectName').val() === ''){
                alert('제목을 입력해주세요.');
                subjectName.focus();
            }else if(!/^[0-9]*$/.test($('#subjectTotal').val())){
                alert('학생수는 숫자 입력만 가능합니다.');
                $('#subjectTotal').val('');
                subjectTotal.focus();
            }else if($('#subjectTotal').val() > 22){
                alert('학생수는 22명을 초과하실 수 없습니다.');
                $('#subjectTotal').val('');
                subjectTotal.focus();
            }else if($('#subjectTotal').val() === ''){
                alert('학생수를 입력해주세요.');
                subjectTotal.focus();
            }else if($('#subjectDay').val() === '' || $('#subjectTime').val() === ''){
                alert('시간대를 다시 확인해주세요.');
            }else if($('#subjectSum').val() === ''){
                alert('수업개요를 입력해주세요.');
                subjectSum.focus();
            }else if($('#subjectGoal').val() === ''){
                alert('수업목표를 입력해주세요.');
                subjectGoal.focus();
            }else if($('#subjectData').val() === ''){
                alert('수업자료를 입력해주세요.');
                subjectData.focus();
            }else if($('#subjectContents').val() === ''){
                alert('수업내용을 입력해주세요.');
                subjectContents.focus();
            }else{
                subFrm.action = '/univ/pro/subInsertForm.do';
                subFrm.submit();
                console.log($('#subjectContents').val());
            }
        }); 
    </script>
</body>
</html>