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
                                <span>강의등록 </span>
                                <span class="ti-angle-right"></span>
                                <span> 강의등록처리</span>
                                <h1 class="ti-stamp"> 강의신청조회</h1>
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
                                        <button class="btn btn-default m-b-10 m-l-5">등록</button>
                                        <button class="btn btn-danger m-b-10 m-l-5">반려</button>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4">
                                    <div class="col-lg-12"  style="text-align: center;">
                                        <span style="font-size: 40px; font-weight: bold;">강의 제목</span>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 과목정보</h5><br>
                                        <table id="" class="display table table-borderd">
                                            <thead>
                                                <tr>
                                                    <th>학점</th>
                                                    <th>이수구분</th>
                                                    <th>수강인원(명)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3</td>
                                                    <td>전공핵심</td>
                                                    <td>30</td>
                                                </tr>
                                            </tbody>
                                            <thead>
                                                <tr>
                                                    <th>강의실</th>
                                                    <th>강의요일</th>
                                                    <th>강의시간</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2강의실</td>
                                                    <td>월요일</td>
                                                    <td>09:00~09:50</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업개요</h5><br>
                                        <textarea style="width:100%; font-size: larger;" rows="5" readonly>수업개요내용</textarea>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업목표</h5><br>
                                        <textarea style="width:100%; font-size: larger;" rows="5" readonly>수업목표내용</textarea>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업자료</h5><br>
                                        <textarea style="width:100%; font-size: larger;" rows="5" readonly>수업자료내용</textarea>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 mb-5 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업내용</h5><br>
                                        <textarea style="width:100%; font-size: larger;" rows="5" readonly>수업내용</textarea>
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