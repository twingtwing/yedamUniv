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
                        <a href="/univ/sub/subApplyList.do" alt="강의 등록" class="back_link"><small class="font-weight-bold">강의 등록</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">강의 신청 상세</small>
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
                                    <div class="row">
                                        <div class="col-lg-12 text-center mt-4">
                                            <h3 class="font-weight-bold">강의 제목</h3>
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
                                                        <td>화12:00-13:15 금16:30-17:45</td>
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
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                 Officia quod provident reiciendis. Ipsa, molestias, 
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!</p>
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
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                 Officia quod provident reiciendis. Ipsa, molestias, 
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!</p>
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
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                 Officia quod provident reiciendis. Ipsa, molestias, 
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!</p>
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
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                 Officia quod provident reiciendis. Ipsa, molestias, 
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!
                                                 perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                                 ipsum neque? Voluptates quo eaque et sapiente!</p>
                                        </div>
                                    </div>
                                    <div class="row mx-5 mt-5 pr-5">
                                        <div class="col-lg-12 d-flex justify-content-between ml-4">
                                            <button onclick="history.back()" class="btn btn-default" style="width:100px; height: 40px;">뒤로 가기</button>
                                            <!-- 승인완료된 상태면 수정 및 삭제불가 해야함 즉, 승인대기상태에만 보여야함 -->
                                            <div>
                                                <button onclick="location.href='/univ/pro/subUpdate.do?subNo='" class="btn btn-default mr-2" style="width:75px; height: 40px;">수정</button>
                                                <button class="btn btn-default" style="width:75px; height: 40px;">삭제</button>
                                            </div>
                                            
                                            <!-- 승인완료된상태에서 보여야함 
                                            <div class="d-flex align-items-center">
                                                <div class="d-flex justify-content-end">
                                                    <div>
                                                        <i class="fa  fa-exclamation-circle text-danger"></i>
                                                    </div>
                                                    <p class="text-danger mx-2 mb-0">승인 후에는 수정 및 삭제가 불가능합니다.</p>
                                                </div>
                                            </div>
                                            -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>