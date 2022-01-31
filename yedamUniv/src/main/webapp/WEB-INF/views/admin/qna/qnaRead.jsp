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
<link rel="apple-touch-icon" sizes="144x144"
	href="http://placehold.it/144.png/000/fff">
<!-- Retina iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="114x114"
	href="http://placehold.it/114.png/000/fff">
<!-- Standard iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="72x72"
	href="http://placehold.it/72.png/000/fff">
<!-- Standard iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="57x57"
	href="http://placehold.it/57.png/000/fff">
<style>
#hiddenbtn {
	float: right;
	color: red;
}

#hiddenbtn:hover, #updatebtn:hover, #deletebtn:hover {
	cursor: pointer;
	font-weight: bold;
}
</style>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<style>
.table tr {
	height: 60px;
}

</style>
</head>
<body>
	<div class="content-wrap mb-5">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="page-header">
						<div class="page-title">
							<span>QnA </span> <span class="ti-angle-right"></span> <span>
								QnA관리</span>
							<h1 class="ti-heart">QnA 조회 및 답변하기</h1>
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
											<h2>${qna.qTitle }</h2>
											<span id="writer">${qna.stuId }&nbsp;&nbsp;${qna.qDate }</span>
											<hr class="one">
											${qna.qContents } <br> <br> <br> <span
												id="deletebtn" class="ti-trash" onclick="location.href='/univ/admin/QnaDelete.do?qNo=${qna.qNo}'"> 삭제&nbsp;</span>
										</div>
									</form>
								</div>
							</div>
							<div class="card">
								<div class="bootstrap-data-table-panel">
										<div class="table-responsive">
											<c:choose>
												<c:when test="${qna.qState eq 'Y' }">
													<br> <span class="ti-comments-smiley"
														style="font-size: large; font-weight: bold;"> 답변 </span><br>
													<br>
													<table class="display table table-borderd">
														<tbody>
															<tr>
																<td>${qna.aContents }</td>
																<td>${qna.aDate }</td>
															</tr>
														</tbody>
													</table>
												</c:when>
												<c:when test="${qna.qState eq 'N' }">
													<br> <span class="ti-comments-smiley"
														style="font-size: large; font-weight: bold;"> 답변 </span><br>
													<br>
													<br> 답변을 해주세요!
													<br>
													<textarea class="mt-3" style="width: 70vw; height: 20vh" id="aContents" name="aContents"></textarea>
													<input type="hidden" id="empId" name="empId">
													<br>
													<button type="button" class="btn btn-warning m-b-10" id="asubmit">답변달기</button>
												</c:when>
											</c:choose>
										</div>


								</div>
							</div>
							<button type="button" id="listback"
								class="btn btn-warning btn-md m-b-10 m-l-5 ti-list"
								style="position: absolute; right: 0; margin-right: 15px;"
								onclick="location.href='/univ/admin/listQnA.do'">목록</button>
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
		$('#asubmit').on(
				'click',
				function() {
					console.log('ㅠㅠ');
					
					$.ajax({
						url : '/univ/admin/aUpdate.do',
						data : {
							aContents : $('#aContents').val().replace(
									/(?:\r\n|\r|\n)/g, '<br>'),
							qNo : "${qna.qNo }",
							empId : $('#empId').val()
						},
						dataType : 'text',
						method : 'POST',
						success : function(data) {
							console.log(data);
							if (data.trim() === 'Y') {
								alert("답변작성이 완료되었습니다.");
								location.href = "/univ/admin/qnaRead.do?qNo="+"${qna.qNo }";
							} else if (data.trim() === 'F') {
								alert("답변작성 중 에러가 발생하였습니다.");
							}
						},
						error : function(data) {
							console.log(data);
						}
					})
				});
	</script>

	<!-- jquery vendor -->
	<script src="assets/js/lib/jquery.min.js"></script>
	<script src="assets/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="assets/js/lib/menubar/sidebar.js"></script>
	<script src="assets/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->

	<!-- bootstrap -->

	<script src="assets/js/lib/bootstrap.min.js"></script>
	<script src="assets/js/scripts.js"></script>
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