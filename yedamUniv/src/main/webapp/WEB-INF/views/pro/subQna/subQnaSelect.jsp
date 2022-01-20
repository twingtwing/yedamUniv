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
        .Q-contents{
            height: 50vh;
        }
        .A-contents{
            height: 20vh;
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
                <div class="row pt-2">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="col-lg-12">
                                    <div class="m-2">
                                        <div class="row mt-3">
                                            <i class="fa fa-question-circle fa-2x"></i>
                                            <div class="d-flex align-items-end ml-3">
                                                <h4 class="mb-0 font-weight-bold">묻고 답하기</h4>
                                            </div>
                                        </div>
                                        <div class="row mt-4 border">
                                            <div class="col-lg-12">
                                                <div class="row bg-silver-100 py-3">
                                                    <div class="col-lg-12">
                                                        <div class="row pt-2 px-4">
                                                            <h4 class="font-weight-bold">제목</h4>
                                                        </div>
                                                        <div class="row border d-flex justify-content-between align-items-end px-4 mt-2">
                                                            <!--  작성일자, 작성자, 답변상테 -->
                                                            <p class="mb-0">작성자</p>
                                                            <div class="row">
                                                                <p class="mb-0 mr-3">작성일자</p>
                                                                <p class="mb-0 mr-3">답변상태</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="Q-contents row mt-2 p-4">
                                                    <p>
                                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nisi amet cupiditate sunt iste doloribus cumque ipsum iure illo fuga exercitationem molestiae voluptatibus blanditiis totam, aut error voluptate ipsam. Eos, a.
                                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nisi amet cupiditate sunt iste doloribus cumque ipsum iure illo fuga exercitationem molestiae voluptatibus blanditiis totam, aut error voluptate ipsam. Eos, a.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-4 pb-2 bg-silver-100">
                                            <div class="col-lg-12">
                                                <div class="row mt-3 mb-2 mx-2 pt-3">
                                                    <h4 class="font-weight-bold">답변</h4>
                                                </div>
                                                <!-- 교수일 경우-->
                                                <div class="row mx-2 my-3">
                                                    <textarea id="aContents" name="aContents" class="form-control" rows="6"></textarea>
                                                </div>
                                                <div class="row mx-2 mt-4 mb-3 d-flex justify-content-between">
                                                    <button onclick="history.back()" class="btn btn-outline-default">목록 가기</button>
                                                    <div>
                                                        <button id="aBtn" class="btn btn-outline-default" style="width:65px;">등록</button>
                                                    </div>
                                                    <!-- 작성되었을 경우 
                                                    <div>
                                                        <button id="aBtn" class="btn btn-outline-default mr-2" style="width:65px;">수정</button>
                                                        <button onclick="history.back()" class="btn btn-outline-default" style="width:65px;">삭제</button>
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
                </div>
            </div>
    <script>
        $('#aBtn').on('click',function(){
            if($('#aContents').val()===''){
                alert('답변 내용을 입력해주세요.');
                aContents.focus();
            }else{
                //아작스 실행
            }
        })
    </script>
</body>
</html>