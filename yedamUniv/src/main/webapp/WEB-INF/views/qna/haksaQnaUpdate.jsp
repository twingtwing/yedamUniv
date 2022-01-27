<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사QnA</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<div class="all-title-box">
		<div class="container text-center">
			<h1>학사</h1>
		</div>
</div>
<!-- 시작 -->
    <div id="overviews" class="section wb" style="background-color: #F2F2F2;">
        <div class="container">
            <ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown-a"
						data-toggle="dropdown">학사 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a"
							style="width: 10vw;">
							<a class="dropdown-item" href="/univ/board/haksaBoardList.do">학사공지 </a> 
							<a class="dropdown-item" href="/univ/qna/haksaQna.do">학사QnA </a> 
							<a class="dropdown-item" href="/univ/faq/haksaFaq.do">학사FAQ </a>
							<a class="dropdown-item" href="/univ/schedule/schedule.do">학사일정 </a>
						</div></li>
			</ul>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>학사 QnA</h3>
                </div>
            </div>
            <div class="comment-form-main">
                <!-- <form id="frm" action="#" method="post"> -->
                    <div class="row">
                    	<div class="col-md-12 my-3">
                            <select name="qCategory" id="qCategory" class="form-select" aria-label="Default select example">
                                <option selected>말머리 선택</option>
                                <option value="졸업">졸업</option>
                                <option value="휴학">휴학</option>
                                <option value="이수">이수</option>
                                <option value="과목">과목</option>
                                <option value="기타">기타</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input class="form-control" name="qTitle" id="qTitle" type="text" value="${qna.qTitle }">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea class="form-control" style="height: 50vh;" name="qContents" id="qContents" cols="30" rows="2">${qna.qContents }</textarea>
                            </div>
                        </div>
                        <div class="col-md-12 post-btn">
                            <div class="row d-flex justify-content-center">
                                <button class="hover-btn-new orange" type="button" id="qsubmit"><span>수정완료</span></button>
                            </div>
                        </div>
                    </div>
                <!-- </form> -->
            </div>
        </div>
    </div>
    <!-- 끝 -->
    
    <script type="text/javascript">
    $(function() {
    	  $("#qCategory").val("<?=$qCategory?>");
    });
    	
	// 수정
	$('#qsubmit').on('click',function(){
		console.log('hi');
		var data = {
			qTitle : $('#qTitle').val(),
			qContents : $('#qContents').val().replace(/(?:\r\n|\r|\n)/g, '<br>'),
			qNo :"${qna.qNo }"
		};
	
		$.ajax({
			url:'hQnaUpdate.do',
			data: data,
			dataType: 'text',
			method: 'POST',
			success : function(data){
				console.log(data);
				if(data.trim() === 'Y'){
					alert("글수정이 완료되었습니다.");
					location.href="haksaQnaRead.do?qNo="+"${qna.qNo }";
				}else if(data.trim() === 'F'){
					alert("글수정 중 에러가 발생하였습니다.");
				}
			},
			error : function(data){
				console.log(data);
			}
		})
	});
    </script>

</body>
</html>