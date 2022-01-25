<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사 QnA</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

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
                <form id="frm" action="hQnaInsert.do" method="post" enctype="multipart/form-data">
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
                                <input class="form-control" name="qTitle" id="qTitle" placeholder="제목을 입력해주세요"  type="text">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea class="form-control" style="height: 50vh;" name="qContents" id="qContents" placeholder="내용을 입력해주세요"  cols="30" rows="2"></textarea>
                            </div>
                        </div>
                        <!-- 파일추가 -->
                        <!-- <div class="col-md-12">
                            <div class="form-group" id="qfileList">
                                <input type="file" name="qfiles" id="qfiles" multiple="multiple" >
                            </div>
                        </div> -->
                        <input type="hidden" id="stuId" name="stuId">
                        <input type="hidden" id="qKind" name="qKind">
                        <div class="col-md-12 post-btn">
                            <div class="row d-flex justify-content-center">
                                <button type="submit" class="hover-btn-new orange" id="qnasubmit"><span>등록하기</span></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 끝 -->
    
    <script type="text/javascript">
    $('#qnasubmit').on('click',function(){
		event.stopPropagation();
        event.preventDefault();
        if($('#qCategory').val()=="말머리 선택"){alert("말머리를 선택하세요."); $('#qCategory').focus(); return false; }
		if($('#qTitle').val().length==0){alert("제목을 입력하세요"); $('#qTitle').focus(); return false; }
        if($('#qContents').val().length==0){alert("내용을 입력하세요"); $('#qContents').focus(); return false; }
        $('#qContents').val($('#qContents').val().replace(/(?:\r\n|\r|\n)/g, '<br>'));
		$.ajax({
			url:'hQnaInsert.do',
			data: $('#frm').serialize(),
			type : 'post',
			success : function(data){
				alert("글 등록이 완료되었습니다.");
				location.href = 'haksaQna.do';
			},
			error : function(data){
				console.log(data);
			}
		})
	});
    </script>

</body>
</html>