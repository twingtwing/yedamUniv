<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<body>
 <div class="content-wrap mb-5">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                        <div class="page-header">
                            <div class="page-title">
                                <span>공지사항 </span>
                                <span class="ti-angle-right"></span>
                                <span> 학사공지</span>
                                <h1 class="ti-eraser"> 게시글수정</h1>
                            </div>
                        </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <form action="/univ/admin/updateBoard.do" enctype="multipart/form-data">
                            <div class="card">
                                <div class="bootstrap-data-table-panel">
                                        <div class="table-responsive">
                                           <input name="no" id="no" value="${selectBoard.boardNo}"
                                           style="display:none;">
                                           <input name="kind" id="kind" value="${selectBoard.boardKind}"
                                           style="display:none;">
                                            <input name="title" id="title" type="text" 
                                            style="width:100%; font-size: large;"
                                            value="${selectBoard.boardTitle}">
                                            <br><br>
                                            <textarea name="contents" id="contents" style="width: 100%; font-size: large;" 
                                            rows="20">${selectBoard.boardContents}</textarea>
                                            <c:if test="${selectBoardFile.pbFile eq !null}">
                                               <img src="C:/upload/${selectBoardFile.pbFile}">
                                            </c:if>
                                            <br><br>
                                            <input type="file">
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" id="upload" 
                                class="btn btn-warning btn-md m-b-10 m-l-5 ti-check"
                                style="position:absolute; right:0; margin-right: 15px;"> 저장</button>
                            </form>
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
    <script src="assets/js/lib/data-table/buttons.flash.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/datatables-init.js"></script>
    
</body>
</html>