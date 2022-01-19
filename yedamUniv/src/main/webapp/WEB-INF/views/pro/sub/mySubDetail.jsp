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
        .subject-box{
            position: relative;
        }
        .subject-i-1{
            position: absolute;
            font-size: 120px;
            top: 7px;
            right: 10px;
            color: #eea412;
        }
        .subject-i-2{
            position: absolute;
            font-size: 120px;
            top: 10px;
            right: 30px;
            color: #eea412;
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
                        <small class="font-weight-bold">강의이름넣어야함</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                            <h4 class="mb-0 font-weight-bold">강의이름 | 강의번호</h4>
                        </div>
                    </div>
                </div>
                <hr class="mt-2 mb-4">
                <div class="row mb-2">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body py-3">
                                <div class="row col-lg-12">
                                    <i class="fa fa-chevron-circle-right" style="font-size: 22px;"></i>
                                    <a href="/univ/pro/subPlan.do?subNo="" alt="수업계획서" class="back_link ml-2"><h5 class="mb-0 mt-1 font-weight-bold">수업 계획서</h5></a>
                                    <div class="ml-2">
                                        <h5 class="mb-0 font-weight-bold">|</h5>
                                    </div>
                                    <a href="/univ/pro/RegGradeInsert.do?subNo=" alt="성적 등록" class="back_link ml-2"><h5 class="mb-0 mt-1 font-weight-bold">성적 등록</h5></a>
                                    <div class="ml-2">
                                        <h5 class="mb-0 font-weight-bold">|</h5>
                                    </div>
                                    <a href="/univ/pro/objectList.do?subNo=" alt="이의 신청" class="back_link ml-2"><h5 class="mb-0 mt-1 font-weight-bold">이의 신청</h5></a>
                                    <div class="ml-2">
                                        <h5 class="mb-0 font-weight-bold">|</h5>
                                    </div>
                                    <h5 class="mb-0 mt-1 ml-2 font-weight-bold">강의평가&nbsp;&nbsp;? 점</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-12">
                        <div class="ibox subject-box">
                            <i class="fa fa-edit subject-i-1"></i> 
                            <div class="ibox-body py-3">
                                <div class="row col-lg-12">
                                    <i class="fa fa-chevron-circle-right" style="font-size: 22px;"></i>
                                    <a href="/univ/pro/subBoardList.do?subNo=" alt="공지 사항" class="back_link ml-2"><h5 class="mb-0 mt-1 font-weight-bold">공지 사항</h5></a>
                                </div>
                                <hr>
                                <div class="mt-4">
                                	<!-- 5~7개 -->
                                    <ul>
                                        <li class="mb-2">
                                            <a href="/univ/pro/subBoardSelect.do?bsNo=" class="back_link">
                                                <div class="row pr-5 pl-3">
                                                    <h6>글 제목</h6>
                                                    <h6 class="pl-2">[ 2021-01-01 ]</h6>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox subject-box">
                            <i class="fa fa-question-circle-o subject-i-2"></i> 
                            <div class="ibox-body py-3">
                                <div class="row col-lg-12">
                                    <i class="fa fa-chevron-circle-right" style="font-size: 22px;"></i>
                                    <a href="/univ/pro/subQnaList.do?subNo=" alt="묻고 답하기" class="back_link ml-2"><h5 class="mb-0 mt-1 font-weight-bold">묻고 답하기</h5></a>
                                </div>
                                <hr>
                                <div class="mt-4">
                                <!-- 5~7개 -->
                                    <ul>
                                        <li class="mb-2">
                                            <a href="/univ/pro/subQnaSelect.do?sqNo=" class="back_link">
                                                <div class="row pr-5 pl-3">
                                                    <h6 class="board-select">글 제목</h6>
                                                    <h6 class="pl-2">[ 2021-01-01 ]</h6>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>