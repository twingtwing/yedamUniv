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
                        <small class="font-weight-bold">공지사항</small>
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
                <hr class="mt-2">
                <div class="row pt-2">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <form id="bsFrm" method="post">
                                    <div class="mx-4 mt-3 pl-2">
                                        <div class="row">
                                            <i class="fa fa-clipboard" style="font-size: 25px;"></i>
                                            <div class="ml-2 d-flex align-items-center">
                                                <h4 class="mb-0 font-weight-bold">공지사항 등록</h4>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-lg-12 board-div">
                                                <div class="row bg-silver-100 pt-2 pb-2 pl-3">
                                                    <div class="row col-lg-12">
                                                        <h6 class="mb-0 d-flex align-items-center">제목 : </h6>
                                                        <div class="col-lg-11">
                                                            <input id="bsTitle" name="bsTitle" class="form-control pl-0 ml-0" style="height: 30px;" type="text" placeholder="제목 입력...">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row px-2 py-4">
                                                    <textarea id="bsContents" name="bsContents" class="form-control" rows="15"></textarea>
                                                </div>
                                                <!-- 다중 파일이 되도록 수정해야함 -->
                                                <div class="row bg-silver-100 pt-2 pb-2">
                                                    <div class="col-lg-4">
                                                        <input id="bsFile" name="bsFile" type="file" class="form-control" name="" id="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row d-flex justify-content-end mt-3">
                                            <button id="bsBtn" type="button" class="btn btn-default mr-3" style="width: 80px;">등록</button>
                                            <button id="bsBack" type="button" class="btn btn-default" style="width: 80px;">취소</button>
                                        </div>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <script>
        $('#bsBtn').click(function(){
            event.preventDefault();

            if($('#bsTitle').val()===''){
                alert('제목을 입력해주세요.');
                bsTitle.focus();
            }else if($('#bsContents').val()===''){
                alert('내용을 입력해주세요.');
                bsContents.focus();
            }else{
                //전송
            }

        });

        $('#bsBack').click(function(){
            event.preventDefault();
            var result = confirm(' 입력된 정보는 저장되지 않고 취소 됩니다. \n 괜찮으신가요?');
            if(result){
                history.back();
            }
        });
    </script>
</body>
</html>