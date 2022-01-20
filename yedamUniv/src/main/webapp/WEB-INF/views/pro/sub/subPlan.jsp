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
                        <a href="/univ/pro/pro.do" alt="my main" class="back_link font-weight-bold">my main</a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="/univ/pro/mySub.do" alt="my room" class="back_link"><small class="font-weight-bold">나의 강의실</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <!-- subNo 값 넣기 -->
                        <a href="/univ/pro/mySubDetail.do?subNo=" alt="my subject" class="back_link"><small class="font-weight-bold">강의이름넣어야함</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">수업계획서</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                        	<!-- subNo 값 넣기 -->
                            <a href="/univ/pro/mySubDetail.do?subNo=" alt="my subject" class="back_link">
                                <h4 class="mb-0 font-weight-bold">강의이름 | 강의번호</h4>
                            </a>
                        </div>
                    </div>
                </div>
                <hr class="mt-2 mb-4">
                <div class="row mb-2">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body py-3">
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
                                            <!-- subNo값 넣기 -->
                                            <button onclick="location.href='/univ/pro/subPlanUp.do?subNo='" class="btn btn-default" style="width:100px; height: 40px;">수정</button>
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