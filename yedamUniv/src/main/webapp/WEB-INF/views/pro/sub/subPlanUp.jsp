<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
			<div class="page-content fade-in-up">
                <div class="row">
                    <div class="col-lg-12">
                        <i class="fa fa-home"></i>
                        <a href="#" alt="my main" class="back_link font-weight-bold">my main</a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="#" alt="my room" class="back_link"><small class="font-weight-bold">나의 강의실</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="#" alt="my subject" class="back_link"><small
                                class="font-weight-bold">강의이름넣어야함</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">수업계획서</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                            <a href="#" alt="my subject" class="back_link">
                                <h4 class="mb-0 font-weight-bold">강의이름 | 강의번호</h4>
                            </a>
                        </div>
                    </div>
                </div>
                <hr class="mt-2 mb-4">
                <div class="row mb-2">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <form id="frm-plan">
                                <div class="ibox-body py-3">
                                    <form action="planFrm">
                                        <div class="plan-box m-4 p-5">
                                            <div class="row">
                                                <div class="col-lg-12 text-center mt-4">
                                                    <h3 class="font-weight-bold">????학년도 ??학기 수업계획서</h3>
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
                                                    <table class="plan-table table text-center mt-2">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center bg-silver-100" width='17%'>수강번호</th>
                                                                <td width='32%'>1111</td>
                                                                <th class="text-center bg-silver-100" width='17%'>학점</th>
                                                                <td width='32%'>3</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="text-center bg-silver-100">이수구분</th>
                                                                <td>전공</td>
                                                                <th class="text-center bg-silver-100">총 학생</th>
                                                                <td>22명</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="text-center bg-silver-100">강의실</th>
                                                                <td>1강의실</td>
                                                                <th class="text-center bg-silver-100">강의시간</th>
                                                                <td>화12:00-13:15</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
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
                                                    <textarea id="subjectSum" name="subjectSum" class="form-control" rows="7">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minima sint et officiis asperiores, error magni magnam repudiandae, vero sequi tenetur rerum a alias omnis corruptidoloribus eius? Ea, tempore debitis.</textarea>
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
                                                    <textarea id="subjectGoal" name="subjectGoal" class="form-control" rows="7">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minima sint et officiis asperiores, error magni magnam repudiandae, vero sequi tenetur rerum a alias omnis corruptidoloribus eius? Ea, tempore debitis.</textarea>
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
                                                    <textarea id="subjectData" name="subjectData" class="form-control" rows="7">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minima sint et officiis asperiores, error magni magnam repudiandae, vero sequi tenetur rerum a alias omnis corruptidoloribus eius? Ea, tempore debitis.</textarea>
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
                                                    <textarea id="subjectContents" name="subjectContents" class="form-control" rows="7">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minima sint et officiis asperiores, error magni magnam repudiandae, vero sequi tenetur rerum a alias omnis corruptidoloribus eius? Ea, tempore debitis.</textarea>
                                                </div>
                                            </div>
                                            <!-- 도움말 과목정보 수정불가 말하기 -->
                                            <div class="row d-flex justify-content-end mt-5 mr-5 pr-5">
                                                <div>
                                                    <i class="fa  fa-exclamation-circle text-danger"></i>
                                                </div>
                                                <p class="text-danger ml-2 mr-2">과목 정보는 정보 수정이 불가능합니다.</p>
                                            </div>
                                            <div class="row mx-5 pr-5">
                                                <div class="col-lg-12 d-flex justify-content-end">
                                                    <button id="submit-plan" type="button" class="btn btn-default mr-4" style="width:100px; height: 40px;">등록</button>
                                                    <button id="planBack" type="button" class="btn btn-default" style="width:100px; height: 40px;">취소</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    <script>
        $('#submit-plan').on('click',function(){
            event.preventDefault();

            if($('#subjectSum').val() === ''){
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

            // $.ajax({
            //     url:'',
            //     data: $('#planFrm').serialize(),
            //     type:'post',
            // })
            // .done(result=>result.text())
            // .done(data=>{
            //     if(data ===''){

            //     }
            // });
            }
        })

        $('#planBack').click(function(){
            event.preventDefault();
            var result = confirm(' 입력된 정보는 저장되지 않고 취소 됩니다. \n 괜찮으신가요?');
            if(result){
                history.back();
            }
        });
    </script>
</body>
</html>