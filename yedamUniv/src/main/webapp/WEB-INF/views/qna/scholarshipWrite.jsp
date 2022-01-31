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
			<h1>장학</h1>
		</div>
</div>
<!-- 시작 -->
    <div id="overviews" class="section wb" style="background-color: #F2F2F2;">
        <div class="container">
            <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">장학 </a>
                            <div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
                                <a class="dropdown-item" href="/univ/board/scholarshipBoardList.do">장학공지 </a>
                                <a class="dropdown-item" href="/univ/scholarship/scholarshipGuide.do">장학안내 </a>
                                <a class="dropdown-item" href="/univ/faq/scholarshipFaq.do">장학FAQ </a>
                                <a class="dropdown-item" href="/univ/qna/scholarshipQna.do">장학QnA </a>
                            </div>
                    </li>
            </ul>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>장학 QnA</h3>
                </div>
            </div>
            <div class="comment-form-main">
                <form id="frm">
                    <div class="row">
                    	<div class="col-md-12 my-3">
                            <select name="qCategory" id="qCategory" class="form-select" aria-label="Default select example">
                                <option selected>말머리 선택</option>
                                <option value="국가장학">국가장학</option>
                                <option value="교내장학">교내장학</option>
                                <option value="외부장학">교내장학</option>
                                <option value="기타">기타</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input class="form-control" name="qTitle" placeholder="제목을 입력해주세요" id="qTitle" type="text">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea class="form-control" style="height: 50vh;" name="qContents" placeholder="내용을 입력해주세요" id="qContents" cols="30" rows="2"></textarea>
                            </div>
                        </div>
                        <input type="hidden" id="stuId" name="stuId">
                        <input type="hidden" id="qKind" name="qKind" value="장학">
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
				location.href = 'scholarshipQna.do';
			},
			error : function(data){
				console.log(data);
			}
		})
	});
    </script>

</body>
</html>