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
                                <span>멤버관리 </span>
                                <span class="ti-angle-right"></span>
                                <span> 휴학/복학/자퇴 신청 관리</span>
                                <h1 class="ti-user"> 복학신청 조회</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="row mr-5 mt-4">
                                    <div class="col-lg-12 d-flex justify-content-end">
                                        <button class="btn btn-default m-b-10 m-l-5"
                                                style="width:80px">승인</button>
                                    </div>
                                </div>
                                <div class="row mx-5 mb-5">
                                    <div class="col-lg-12" style="text-align: center;">
                                        <span style="font-size: 40px; font-weight: bold;">복학 신청서</span>
                                    </div>
                                </div>
                                <div class="row mx-5 mb-5">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 인적사항</h5><br>
                                        <table id="" class="display table table-borderd">
                                            <tbody>
                                            <tr>
                                                <td rowspan="3">
                                                    <!--<img src="" alt="">-->
                                                    사진들어올곳~~~
                                                </td>
                                                <th>아이디</th>
                                                <td>eunji_kim97</td>
                                                <th>전화번호</th>
                                                <td>
                                                    <input type="text" value="010-83707-1707" style="width:100%">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <th>이름</th>
                                                <td>
                                                    <input type="text" value="김은지" style="width:100%">
                                                    </td>
                                                <th>이메일</th>
                                                <td>
                                                    <input type="text" value="eunji_kim97@yedam.com" style="width:100%">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <th>생년월일</th>
                                                <td>1997-08-05</td>
                                                <th>권한</th>
                                                <td>학생</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row mx-5 mb-5">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 휴학종류</h5><br>
                                        <table id="" class="display table table-borderd">
                                            <tbody>
                                            <tr>
                                                <th>세부구분</th>
                                                <td>일반휴학</td>
                                                <th>휴학신청일자</th>
                                                <td>2022-01-10</td>
                                                <th>복학예정</th>
                                                <td>2023-01학기</td>
                                            </tr>
                                            <tr>
                                                <th>사 유</th>
                                                <td colspan="5" style="text-align:center">
                                                    <input type="text" style="width: 100%;" value="개인사정">
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
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