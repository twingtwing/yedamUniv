<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="all-title-box">
		<div class="container text-center">
			<h1>대학생활</h1>
		</div>
	</div>

	<div id="overviews" class="section wb" style="background-color: #F2F2F2;">
		<div class="container">			
			<div class="section-title row text-center">
				<div class="col-md-8 offset-md-2">
					<h3>자유게시판</h3>
				</div>
			</div>
			<div class="comment-form-main">
				<form id="freeboardupdateform" method="post">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input class="form-control" id="cTitle" name="cTitle" value="${freeboardupdate.cTitle }" type="text">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<textarea class="form-control" id="cContents" name="cContents" style="height: 50vh;" value="${freeboardupdate.cContents }" cols="30" rows="2"></textarea>
							</div>
						</div>						
						<div class="col-md-12 post-btn">
							<div class="row d-flex justify-content-center">
							<input type="hidden" value="${cWriter }">
							<input type="hidden" id="cNo" name="cNo" value="${freeboardupdate.cNo }">
							<input type="hidden" id="id" name="id" value="${freeboardupdate.cWriter }">
							
								<button class="hover-btn-new orange" type="submit" onclick="freeboardInsert()"><span>등록</span></button>&nbsp; &nbsp;
								<button class="hover-btn-new orange" type="button" onclick="location.href='freeBoardList.do'"><span>취소</span></button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<script src="/univ/resources/main/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function freeboardInsert() {	
	var c_title = document.getElementById("cTitle").value;
	var c_contents = document.getElementById("cContents").value;
	var c_writer = 'admin';
	
	if (cTitle == '') {
		alert("제목을 입력하세요.")
		return false;
	} else if (cContents == '') {
		alert("내용을 입력하세요.")
		return false;
	}	
	$("#freeboardinsertform").submit();
}
</script>
</body>
</html>