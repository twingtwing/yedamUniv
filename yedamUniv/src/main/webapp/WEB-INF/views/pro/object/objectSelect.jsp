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
        .board-div > div:nth-of-type(3){
            height: 50vh;
        }
        .board-div > div:last-of-type{
            border-bottom: 1px solid #4c5a7d;
        }
        .object-M-H{
            border-bottom: none;
        }
        .object-M-F{
            border-top: none;
        }
        .object-M-div{
            position: relative;
        }
        .object-M-X{
            position: absolute;
            top: 5px;
            right: 5px;
        }
        .object-M-C{
            border: 3px solid #4c5a7d;
        }
        .vertical-alignment-helper {
            display:table;
            height: 100%;
            width: 100%;
            pointer-events:none;
        }

        .vertical-align-center {
            display: table-cell;
            vertical-align: middle;
            pointer-events:none;
        }

        .vertical-alignment-helper .modal-content {
            width:inherit;
            max-width:inherit;
            height:inherit;
            margin: 0 auto;
            pointer-events:all;
        }
        </style>
</head>
<body>
            <!-- START PAGE CONTENT-->
            <div class="page-content fade-in-up">
                <div class="row">
                    <div class="col-lg-12">
                        <i class="fa fa-home"></i>
                        <a href="/univ/pro/pro.do" alt="my main" class="back_link font-weight-bold">my main</a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="/univ/pro/mySub.do" alt="my room" class="back_link"><small class="font-weight-bold">나의 강의실</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="/univ/pro/mySubDetail.do" alt="my subject" class="back_link"><small class="font-weight-bold">강의이름넣어야함</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">이의 신청</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-4">
                    <div class="row mt-4 ml-1">
                        <i class="ti-book text-warning" style="font-size: 30px;"></i>
                        <div class="ml-2 d-flex align-items-center">
                            <a href="/univ/pro/pro.do" alt="my subject" class="back_link">
                                <h4 class="mb-0 font-weight-bold">강의이름 | 강의번호</h4>
                            </a>
                        </div>
                    </div>
                </div>
                <hr class="mt-2 mb-3">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="mx-4 mt-3 pl-2">
                                    <div class="row">
                                        <i class="fa fa-exclamation-circle" style="font-size: 25px;"></i>
                                        <div class="ml-2 d-flex align-items-center">
                                            <h4 class="mb-0 font-weight-bold">이의 신청</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-lg-12 board-div">
                                            <div class="row bg-silver-100 pt-2 pb-1 pl-2">
                                                <h6>제목 : 제목</h6>
                                            </div>
                                            <div class="row d-flex justify-content-between bg-silver-100 pt-2 pb-1 pl-2 pr-2">
                                                <h6>신청자 : 글쓴이</h6>
                                                <div class="row">
                                                    <h6 class="mr-4">처리상태 : 미 처리</h6>
                                                    <h6 class="mr-3">신청일 : 등록일</h6>
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
                                    <div class="row d-flex justify-content-between mt-3">
                                        <button type="button" class="btn btn-default" style="width: 70px;">목록</button>
                                        <div>
                                            <button type="button" class="btn btn-default mr-2" data-toggle="modal" data-target="#object-M" style="width: 70px;">승인</button>
                                            <button id="objectN" type="button" class="btn btn-default" style="width: 70px;">거부</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Object Modal -->
            <div class="modal fade" id="object-M" tabindex="-1" role="dialog" aria-labelledby="object-M-Title" aria-hidden="true">
                <div class="vertical-alignment-helper">
                    <div class="modal-dialog vertical-align-center" role="document">
                        <div class="modal-content">
                            <div class="m-4 object-M-C">
                                <div class="modal-header object-M-H">
                                    <div class="col-lg-12 object-M-div">
                                        <div class="row d-flex justify-content-center mt-3">
                                            <h4 class="modal-title font-weight-bold">이의 신청 승인</h4>
                                        </div>
                                        <button type="button" class="close object-M-X" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="col-lg-12">
                                        <div class="row d-flex justify-content-center">
                                            <p class="text-center">
                                                현재 ???학생의 학점은 <b id="gradeM" class="text-danger"></b> 입니다. <br>
                                                수정할 학점을 선택 후 승인버튼을 눌러주세요.
                                            </p>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 d-flex align-items-center justify-content-end">
                                                <h6 class="mb-0">수정할 학점 :</h6>
                                            </div>
                                            <div class="col-lg-6 ml-0">
                                                <select id="grade" name="grade" class="form-control w-50">
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
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer object-M-F">
                                    <button id="gradeBtn" type="button" class="btn btn-outline-default">승인</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <script>
        //몇 학점인지 넣기
        //아작스 갔다올 경우만 씀 페이지 이동전에 값을 가져올경우는 굳이 쓸 필요없음
        $('#object-M').on('show.bs.modal',function(){
            console.log('hi');
            gradeM.innerHTML = '!!';
        });

        $('#gradeBtn').on('click',function(){
            console.log($('#grade').val());
            //학점 수정하기
            //처리 상태 Y으로 처리 하기
            //둘이 동시에 가능하면 하기
        });

        $('#objectN').click(function(){
            //처리 상태 N으로 처리하기
        });
    </script>
</body>
</html>