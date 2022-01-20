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
    <link href="assets/css/lib/data-table/buttons.bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/lib/helper.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        #delebtn:hover{cursor: pointer;}
        #delebtn{float: right; color:red;}
    </style>
</head>
<body>
<div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                        <div class="page-header">
                            <div class="page-title">
                                <span>공지사항 </span>
                                <span class="ti-angle-right"></span>
                                <span> QnA</span>
                                <h1 class="ti-help-alt"> 답변작성하기</h1>
                            </div>
                        </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="bootstrap-data-table-panel">
                                        <div class="table-responsive">
                                            <br>
                                            <h2>제목입니다</h2>
                                            <span id="writer">작성자 YYYY-MM-DD HH:MM 조회 ??</span>
                                            <hr class="one">
                                            내용입니다~~~~<br/>
                                            가나다라마바사아자차카타파하<br/>
                                            동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세<br/>
                                            남산위에 저 소나무 철갑을 두른듯 바람서리 불변함은 우리 기상일세<br/>
                                            가을하늘 공활한데 높고 구름 없이 밝을 달은 우리 가슴 일편단심일세<br/>
                                            이 기상과 이 마음으로 충성을 다하여 괴로우나 즐거우나 나라 사랑하세
                                            <br><br><br>
                                            <span id="delebtn" class="ti-trash">삭제</span><br>
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
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <!-- /# row -->
                <section id="main-content">
                    <form action="#" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="bootstrap-data-table-panel">
                                        <div class="table-responsive">
                                            <br>
                                            <h2 class="ti-pencil"> 답변작성</h2><br>
                                            <textarea name="contents" id="contents" style="width: 100%; font-size: large;" rows="10" placeholder="답변을 작성해주세요."></textarea>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" id="upload" 
                                        class="btn btn-warning btn-md m-b-10 m-l-5 ti-check"
                                        style="position:absolute; right:0; margin-right: 15px;"> 등록</button>
                                <button type="button" id="listback" 
                                class="btn btn-default btn-md m-b-10 m-l-5 ti-list"
                                style="margin-right: 10px;"> 목록</button>
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                        </div>
                    </form>
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
    <script src="assets/js/lib/data-table/buttons.flash.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/datatables-init.js"></script>
</body>
</html>