<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                            	<span>강의등록 </span>
                                <span class="ti-angle-right"></span>
                                <span> 강의등록처리</span>
                                <h1 class="ti-stamp"> 강의신청조회</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="row mr-5 mt-4">
                                    <div class="col-lg-12"  style="text-align: center;">
                                        <span style="font-size: 40px; font-weight: bold;">${sub.subjectName}</span>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 과목정보</h5><br>
                                        <table id="" class="display table table-borderd">
                                            <thead>
                                                <tr>
                                                    <th>학점</th>
                                                    <th>이수구분</th>
                                                    <th>수강인원(명)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>${sub.subjectStatus }</td>
                                                    <td>${sub.subjectDetail }</td>
                                                    <td>${sub.subjectTotal }명</td>
                                                </tr>
                                            </tbody>
                                            <thead>
                                                <tr>
                                                    <th>강의실</th>
                                                    <th>강의요일</th>
                                                    <th>강의시간</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>${sub.subjectRoom }강의실</td>
                                                    <td class="subDay"></td>
                                                    <td class="subTime"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업개요</h5><br>
                                        <p>${sub.subjectSum }</p>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업목표</h5><br>
                                        <p>${sub.subjectGoal }</p>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업자료</h5><br>
                                        <p>${sub.subjectData }</p>
                                    </div>
                                </div>
                                <div class="row mr-5 mt-4 mb-5 ml-4">
                                    <div class="col-lg-12">
                                        <h5 class="ti-arrow-circle-right"> 수업내용</h5><br>
                                        <p>${sub.subjectContents }</p>
                                    </div>
                                </div>
                                <!-- 뒤로가기 버튼 -->
                                 <div class="row mr-5 mt-4">
                                    <div class="col-lg-12 d-flex justify-content-between">
                                    	<button onclick="location.href='history.back()'" class="btn btn-default m-b-10 m-l-20">뒤로 가기</button>
                                    	<c:if test="${sub.subjectStatus eq 'N' or sub.subjectStatus eq ''}">
	                                    	<div class="row">
		                                        <button id="Y" data-msg="승인" class="statusBtn btn btn-default m-b-10 m-l-10" style="width: 70px">등록</button>
		                                        <button id="X" data-msg="반려" class="statusBtn btn btn-danger m-b-10 m-l-10" style="width: 70px">반려</button>
	                                    	</div>
                                    	</c:if>
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
    
   <script type="text/javascript">
	   const days = {1 : '월',2 : '화',3 : '수',4 : '목',5 : '금',6 : '토'};
	   const times = {1: '9:00 - 9:50',2: '10:00 - 10:50',3: '11:00 - 11:50',4: '12:00 - 12:50'
	         ,5: '1:00 - 1:50',6: '2:00 - 2:50',7: '3:00 - 3:50',8: '4:00 - 4:50',9: '5:00 - 5:50'};
	   
	   	$('#subDay').text(days['${sub.subjectDay}']+'요일');
		$('#subTime').text(times['${sub.subjectTime}']);
		
		$('.statusBtn').click(function(){
			let flag = confirm("정말 "+$(this).attr('data-msg')+'하시겠습니까?');
			if(flag){
				$.ajax({
					url:'/univ/admin/subjectStatus.do',
					type:'post',
					data : {
						subjectNo : '${sub.subjectNo}',
						subjectStatus:$(this).attr('id')
					}
				})
				.done(data=>{
					if(data==='Y'){
						location.href="/univ/admin/listAddClass.do";
						alert('성공적으로 처리되었습니다.');
					}else if(data==='N'){
						alert('업데이트 과정중에 오류가 발생하였습니다.');
					}
				})
			}
		})
   </script>
</body>
</html>