<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
    <link href="assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/lib/helper.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        #noticeListT:hover{cursor: pointer;}
    </style>
</head>
<body>
	<div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <span>공지사항 </span>
                                <span class="ti-angle-right"></span>
                                <span> QnA</span>
                                <h1 class="ti-help-alt"> QnA(학사/장학사)</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li id="Haksa" class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#" role="tab">
                                                    <span class="hidden-sm-up">
                                                        <i class="ti-angle-down"></i>
                                                    </span>
                                                    <span class="hidden-xs-down">학사QnA</span>
                                                </a>
                                            </li>
                                            <li id="JangHaksa" class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#" role="tab">
                                                    <span class="hidden-sm-up">
                                                        <i class="ti-angle-down"></i>
                                                    </span>
                                                    <span class="hidden-xs-down">장학사QnA</span>
                                                </a> 
                                            </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content tabcontent-border" id="HaksaT">
                                            <div class="tab-pane active" id="home" role="tabpanel">
                                                <div class="p-20">
                                                    <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 10px;">
                                                        <select class="btn btn-default dropdown-toggle" style="width: 100px;">
                                                            <option>구분</option>
                                                            <option>제목</option>
                                                            <option>작성자</option>
                                                            <option>작성일</option>
                                                            <option>상태</option>
                                                        </select>
                                                        <input type="text" class="form-control" placeholder="Search">
                                                        <button class="ti-search btn btn-default btn-flat" id=""></button>
                                                    </div><br><br><br><br>
                                                    <table class="display table table-borderd table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>구분</th>
                                                                <th>제목</th>
                                                                <th>작성자</th>
                                                                <th>작성일자</th>
                                                                <th>상태</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>학사/수강신청</td>
                                                                <td>수강신청 일정</td>
                                                                <td>김은지</td>
                                                                <td>2008/12/13</td>
                                                                <td style="color:red">답변대기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/수강정정</td>
                                                                <td>수강정정 하는법</td>
                                                                <td>김은혜</td>
                                                                <td>2010/06/09</td>
                                                                <td style="color:red">답변대기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적조회</td>
                                                                <td>성적조회기간</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적정정</td>
                                                                <td>교수님 메일주소</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적조회</td>
                                                                <td>성적조회기간</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적정정</td>
                                                                <td>교수님 메일주소</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적조회</td>
                                                                <td>성적조회기간</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적정정</td>
                                                                <td>교수님 메일주소</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적조회</td>
                                                                <td>성적조회기간</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>학사/성적정정</td>
                                                                <td>교수님 메일주소</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                        </tbody>
                                                    </table><br>
                                                    <ul class="pagination">
                                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- <div class="tab-pane  p-20" id="profile" role="tabpanel">2</div>
                                            <div class="tab-pane p-20" id="messages" role="tabpanel">3</div> -->
                                        </div>
                                        <div class="tab-content tabcontent-border" id="JanghaksaT" style="display:none">
                                            <div class="tab-pane active" id="home" role="tabpanel">
                                                <div class="p-20">
                                                    <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 10px;">
                                                        <select class="btn btn-default dropdown-toggle" style="width: 100px;">
                                                            <option>구분</option>
                                                            <option>제목</option>
                                                            <option>작성자</option>
                                                            <option>작성일</option>
                                                            <option>상태</option>
                                                        </select>
                                                        <input type="text" class="form-control" placeholder="Search">
                                                        <button class="ti-search btn btn-default btn-flat" id=""></button>
                                                    </div><br><br><br><br>
                                                    <table id="noticeListT" class="display table table-borderd table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>구분</th>
                                                                <th>제목</th>
                                                                <th>작성자</th>
                                                                <th>작성일자</th>
                                                                <th>상태</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>장학사/학자금대출</td>
                                                                <td>학자금대출기간</td>
                                                                <td>김은지</td>
                                                                <td>2008/12/13</td>
                                                                <td style="color:red">답변대기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/장학금</td>
                                                                <td>중앙도서관 독후감대회 수상</td>
                                                                <td>김은혜</td>
                                                                <td>2010/06/09</td>
                                                                <td style="color:red">답변대기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/장학금</td>
                                                                <td>성적우수장학금</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/국가장학금</td>
                                                                <td>1차 국가장학금 기간</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/국가장학금</td>
                                                                <td>신입생 1차 국장 놓치면</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/장학금</td>
                                                                <td>성적우수장학금</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/국가장학금</td>
                                                                <td>1차 국가장학금 기간</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/국가장학금</td>
                                                                <td>신입생 1차 국장 놓치면</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/국가장학금</td>
                                                                <td>1차 국가장학금 기간</td>
                                                                <td>김은지</td>
                                                                <td>2012/10/13</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                            <tr>
                                                                <td>장학사/국가장학금</td>
                                                                <td>신입생 1차 국장 놓치면</td>
                                                                <td>김가루</td>
                                                                <td>2009/04/10</td>
                                                                <td>답변완료</td>
                                                            </tr>
                                                        </tbody>
                                                    </table><br>
                                                    <ul class="pagination">
                                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- <div class="tab-pane  p-20" id="profile" role="tabpanel">2</div>
                                            <div class="tab-pane p-20" id="messages" role="tabpanel">3</div> -->
                                        </div>
                                    </div>
                                </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </section>
            </div>
        </div>
    </div>
    
    <script>
        document.querySelector("#Haksa").onclick = function(){
            console.log(event.target);
            document.querySelector("#HaksaT").style.display = "block";
            document.querySelector("#JanghaksaT").style.display = "none";
        }
        document.querySelector("#JangHaksa").onclick = function(){
            console.log(event.target);
            document.querySelector("#HaksaT").style.display = "none";
            document.querySelector("#JanghaksaT").style.display = "block";
        }
    </script>
    
    <!-- jquery vendor -->
    <script src="assets/js/lib/jquery.min.js"></script>
    <script src="assets/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="assets/js/lib/menubar/sidebar.js"></script>
    <script src="assets/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    
    <!-- bootstrap -->

    <script src="assets/js/lib/bootstrap.min.js"></script><script src="assets/js/scripts.js"></script>
    <!-- scripit init-->
    <script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="assets/js/lib/data-table/datatables-init.js"></script>
</body>
</html>