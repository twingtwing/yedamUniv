<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- font awesome-->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<!-- toast ui -->
	<link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css" />
    <script src="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.js"></script>
    <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>
    <style type="text/css">
<style>
.table tr {
	height: 60px;
}

#jQnaGrid div.tui-grid-cell-content {
		text-align: center;
	}
	
	td{
	cursor: pointer;
	}
</style>

</head>
<body>
<div class="all-title-box">
		<div class="container text-center">
			<h1>장학</h1>
		</div>
</div>

	<!-- 시작 -->
	<div id="overviews" class="section wb">
		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown-a"
					data-toggle="dropdown">장학 </a>
					<div class="dropdown-menu" aria-labelledby="dropdown-a"
						style="width: 10vw;">
						<a class="dropdown-item"
							href="/univ/board/scholarshipBoardList.do">장학공지 </a> <a
							class="dropdown-item"
							href="/univ/scholarship/scholarshipGuide.do">장학안내 </a> <a
							class="dropdown-item" href="/univ/faq/scholarshipFaq.do">장학FAQ
						</a> <a class="dropdown-item" href="/univ/qna/scholarshipQna.do">장학QnA
						</a>
					</div></li>
			</ul>
			<div class="section-title row text-center m-3">
				<div class="col-md-8 offset-md-2">
					<h3>장학 QnA</h3>
				</div>
				<div class="row d-flex justify-content-end">
					<div class="col-lg-3 col-12 right-single">
						<div class="widget-search">
							<div class="site-search-area">
								<form method="get" id="site-searchform" action="#">
									<div>
										<input class="input-text form-control" name="qTitle"
											id="qTitle" placeholder="제목을 검색하세요" type="text"> 
										<input id="searchsubmit" value="Search" type="button">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div>
            		<div id="sqnaTable"></div>
            	</div>
				
				<div class="row d-flex justify-content-end">
					<button type="button" class="btn btn-outline-warning m-3"
						style="background-color: white;"
						onclick="location.href='/univ/qna/scholarshipWrite.do'">
						<i class="fas fa-pen"></i>&nbsp; &nbsp;글쓰기
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 끝 -->
	
		<script type="text/javascript">
    
	createQna(JSON.parse('${qnalist}'));
	function createQna(dataQna) {
		let div = document.getElementById('sqnaTable');
		if(div.children.length!=0){
			div.children[0].remove();
		}
	    const jQnaGrid = new tui.Grid({
	        el: div,
	        data: dataQna,
	        scrollX: false,
	        scrollY: false,
	        minBodyHeight: 30,
	        rowHeaders: [{type: 'rowNum', align : 'center', valign : 'middle'}],
	        pageOptions: {
	            useClient: true,
	            perPage: 10
	        },
	        pagination: true,
	        columns: [
	        	{
	                header: '말머리',
	                name: 'qCategory',
	                width : 'auto',
		            minWidth :150
	            },
	            {
	                header: '제목',
	                name: 'qTitle'
	            },
	            {
	                header: '작성일자',
	                name: 'qDate',
	                width : 'auto',
		            minWidth :150
		         }, 
	            {
	                header: '작성자',
	                name: 'stuId',
	                width : 'auto',
		            minWidth :150
		         }
	        ]
	    });
	 	// 셀 클릭했을 때 글 상세 조회 페이지로 이동
	    jQnaGrid.on('click', function(event){
	    	let no = dataQna[event.rowKey].qNo;
	    	location.href = "scholarshipRead.do?qNo="+dataQna[event.rowKey].qNo;
	    });
	
	    // 표 테마
	    tui.Grid.applyTheme('clean');
	}
	
	// 검색
	document.getElementById('searchsubmit').addEventListener('click', function(){
		let t = document.getElementById('qTitle').value;
		
		let path = 'qnaSearch.do?qTitle='+t;
		
		fetch(path)
		
		.then(response => response.json())
		.then(data => {
			createQna(data);
		});
	})
	document.getElementById('qTitle').addEventListener('keypress', function(event){
		if(event.keyCode === 13){
			document.getElementById('searchsubmit').click();
		}
	})
	</script>

</body>
</html>