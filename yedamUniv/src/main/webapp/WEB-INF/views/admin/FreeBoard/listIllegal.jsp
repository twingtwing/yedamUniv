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
                                <span>자유게시판 </span>
                                <span class="ti-angle-right"></span>
                                <span> 신고게시글관리</span>
                                <h1 class="ti-heart-broken"> 신고게시글목록</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 10px;">
                                    <select class="btn btn-default dropdown-toggle" style="width: 100px;">
                                        <option>제목</option>
                                        <option>작성자</option>
                                        <option>작성일</option>
                                        <option>사유</option>
                                    </select>
                                    <input type="text" class="form-control" placeholder="Search">
                                    <button class="ti-search btn btn-default btn-flat" id=""></button>
                                </div>
                                <br><br><br>
                                <table id="noticeListT" class="display table table-borderd table-hover">
                                    <thead>
                                        <tr>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일자</th>
                                            <th>신고사유</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Software Engineer</td>
                                            <td>London</td>
                                            <td>2012/10/13</td>
                                            <td style="color: red;">음란물</td>
                                        </tr>
                                        <tr>
                                            <td>Personnel Lead</td>
                                            <td>Edinburgh</td>
                                            <td>2012/09/26</td>
                                            <td style="color: red;">부적절한 내용</td>
                                        </tr>
                                        <tr>
                                            <td>Development Lead</td>
                                            <td>New York</td>
                                            <td>2011/09/03</td>
                                            <td style="color: red;">광고성 게시글</td>
                                        </tr>
                                        <tr>
                                            <td>Chief Marketing Officer (CMO)</td>
                                            <td>New York</td>
                                            <td>2009/06/25</td>
                                            <td style="color: red;">광고성 게시글</td>
                                        </tr>
                                        <tr>
                                            <td>Pre-Sales Support</td>
                                            <td>New York</td>
                                            <td>2011/12/12</td>
                                            <td style="color: red;">음란물</td>
                                        </tr>
                                        <tr>
                                            <td>Sales Assistant</td>
                                            <td>Sidney</td>
                                            <td>2010/09/20</td>
                                            <td style="color: red;">부적절한 내용</td>
                                        </tr>
                                        <tr>
                                            <td>Chief Executive Officer (CEO)</td>
                                            <td>London</td>
                                            <td>2009/10/09</td>
                                            <td style="color: red;">욕설</td>
                                        </tr>
                                        <tr>
                                            <td>Developer</td>
                                            <td>Edinburgh</td>
                                            <td>2010/12/22</td>
                                            <td style="color: red;">욕설</td>
                                        </tr>
                                        <tr>
                                            <td>Regional Director</td>
                                            <td>Singapore</td>
                                            <td>2010/11/14</td>
                                            <td style="color: red;">부적절한 내용</td>
                                        </tr>
                                        <tr>
                                            <td>Software Engineer</td>
                                            <td>San Francisco</td>
                                            <td>2011/06/07</td>
                                            <td style="color: red;">욕설</td>
                                        </tr>
                                        <tr>
                                            <td>Chief Operating Officer (COO)</td>
                                            <td>San Francisco</td>
                                            <td>2010/03/11</td>
                                            <td style="color: red;">광고성 게시글</td>
                                        </tr>
                                        <tr>
                                            <td>Regional Marketing</td>
                                            <td>Tokyo</td>
                                            <td>2011/08/14</td>
                                            <td style="color: red;">부적절한 내용</td>
                                        </tr>
                                        <tr>
                                            <td>Integration Specialist</td>
                                            <td>Sidney</td>
                                            <td>2011/06/02</td>
                                            <td style="color: red;">광고성 게시글</td>
                                        </tr>
                                        <tr>
                                            <td>Developer</td>
                                            <td>London</td>
                                            <td>2009/10/22</td>
                                            <td style="color: red;">부적절한 내용</td>
                                        </tr>
                                        <tr>
                                            <td>Technical Author</td>
                                            <td>London</td>
                                            <td>2011/05/07</td>
                                            <td style="color: red;">광고성 게시글</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
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