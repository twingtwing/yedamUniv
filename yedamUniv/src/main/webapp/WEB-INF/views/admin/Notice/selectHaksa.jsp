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
        #modibtn{float: right;}
        #delebtn{float: right; color:red;}
        #modibtn:hover,#delebtn:hover{cursor: pointer; font-weight: bold;}
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
                                <span> 학사공지</span>
                                <h1 class="ti-eye"> 학사조회</h1>
                            </div>
                        </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="bootstrap-data-table-panel">
                                    <form action="#">
                                        <div class="table-responsive">
                                            <br>
                                            <h2>${selectBoard.boardTitle}</h2>
                                            <span id="writer">관리자&nbsp;&nbsp;${selectBoard.boardDate}&nbsp;&nbsp;조회수 ${selectBoard.boardHits}</span>
                                            <hr class="one">
                                            ${selectBoard.boardContents}
                                            <br><br><br>
                                            <span id="delebtn" class="ti-trash"
                                            onclick="deleteFnc(${selectBoard.boardNo})">삭제</span>
                                            <span id="modibtn" class="ti-eraser"
                                            onclick="modiFnc(${selectBoard.boardNo})">수정&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <button type="button" id="listback" 
                            class="btn btn-warning btn-md m-b-10 m-l-5 ti-list"
                            style="position:absolute; right:0; margin-right: 15px;"
                            onclick="location.href='/univ/admin/admin.do'"> 목록</button>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </section>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    	function deleteFnc(boardNo){
    		let answer = confirm("게시글을 삭제하시겠습니까?\n※삭제시 복구가 불가능합니다.※");
    		if(answer){
	    		location.href="/univ/admin/deleteBoard.do?boardNo="+boardNo+"&boardKind=Haksa";
    		}else{
    			alert("게시글 삭제가 취소되었습니다.");
    		}
    	}
    	function modiFnc(boardNo){
    		location.href="/univ/admin/selectBoard.do?boardno="+boardNo+"&boardKind=Haksa&doing=update";
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
    <script src="assets/js/lib/data-table/buttons.flash.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/datatables-init.js"></script>
</body>
</html>