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
        .board-div > div{
            border-top: 1px solid #4c5a7d;
        }
        .board-div > div:last-of-type{
            border-bottom: 1px solid #4c5a7d;
            height : 50vh;
        }
        .board-ul li{
            list-style-type: none;
            float: left;
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
                        <a href="/univ/pro/leaveDrop.do" alt="my room" class="back_link"><small class="font-weight-bold">휴학 및 자퇴</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">자퇴</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="m-4  pb-2 pl-3">
                        <div class="row">
                            <i class="fa fa-address-book text-warning" style="font-size: 45px;"></i>
                            <div class="ml-3 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">휴학 및 자퇴</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="mt-2">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="mx-4 mt-3 pl-2">
                                    <div class="row">
                                        <i class="fa fa-clipboard" style="font-size: 25px;"></i>
                                        <div class="ml-2 d-flex align-items-center">
                                            <h4 class="mb-0 font-weight-bold">자퇴</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-lg-12 board-div">
                                            <div class="row d-flex justify-content-between bg-silver-100 pt-2 pb-1 pl-2 pr-2">
                                                <h6>신청자 : 신청자</h6>
                                                <div class="row">
                                                    <h6 class="mr-3">신청일자 : 신청일자</h6>
                                                    <h6 class="mr-4">세부구분 : 가사</h6>
                                                </div>
                                            </div>
                                            <div class="row pt-3 pb-1 px-2">
                                                <p>
                                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur a minima cupiditate ullam veniam officiis doloribus possimus, nobis porro quam eligendi ipsam, vel nostrum corrupti adipisci amet ea maiores neque.
                                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur a minima cupiditate ullam veniam officiis doloribus possimus, nobis porro quam eligendi ipsam, vel nostrum corrupti adipisci amet ea maiores neque.
                                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur a minima cupiditate ullam veniam officiis doloribus possimus, nobis porro quam eligendi ipsam, vel nostrum corrupti adipisci amet ea maiores neque.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row d-flex justify-content-end mt-3">
                                        <button class="btn btn-default mr-2" style="width: 70px;">승인</button>
                                        <button onclick="history.back()" class="btn btn-default" style="width: 70px;">목록</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>