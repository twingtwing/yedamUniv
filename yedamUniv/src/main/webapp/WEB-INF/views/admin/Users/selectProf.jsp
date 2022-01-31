<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                                <span>멤버관리 </span>
                                <span class="ti-angle-right"></span>
                                <span> 교수</span>
                                <h1 class="ti-user"> 교수상세조회</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                            	<div class="row">
                            		<form id="updateFrm">
		                                <div class="row mx-5 mb-5">
		                                    <div class="col-lg-12">
		                                        <h5 class="ti-arrow-circle-right"> 인적사항</h5><br>
		                                        <table id="" class="display table table-borderd">
				                                    <tbody>
				                                       <tr>
				                                           <th>아이디</th>
				                                           <td>${pro.id }</td>
				                                           <th>전화번호</th>
				                                           <td>
				                                               <input type="text" value="${pro.tel }" name="tel" style="width:100%">
				                                            </td>
				                                       </tr>
				                                       <tr>
				                                           <th>이름</th>
				                                           <td>
				                                            	<input type="text" value="${pro.name }" name="name" style="width:100%">
				                                            </td>
				                                           <th>이메일</th>
				                                           <td>
				                                            	<input type="text" value="${pro.email }" name="email" style="width:100%">
				                                           </td>
				                                       </tr>
				                                       <tr>
				                                           <th>생년월일</th>
				                                           <td class="subDate">${pro.birthdate }</td>
				                                           <th>권한</th>
				                                           <td>교수</td>
				                                       </tr>
				                                    </tbody>
		                                        </table>
		                                        <table class="display table table-borderd">
		                                            <tbody>
		                                                <tr>
		                                                    <th>학과</th>
		                                                    <td colspan="2">${pro.major }</td>
		                                                    <th>입사일</th>
		                                                    <td colspan="2" class="subDate">${pro.hiredate }</td>
		                                                </tr>
		                                                <tr>
					                                        <th>우편번호</th>
					                                        <td>
					                                            <div class="d-flex align-items-center">
					                                                <input type="text" name="zipcode" class="form-control" id="stuZipcode" value="${pro.zipcode }" placeholder="" aria-label="Phone Number" style="width: 60%;">
					                                                    <button class="ml-3 btn btn-outline-secondary" id="address_kakao" type="button">검색</button>
					                                            </div>
					                                        </td>
					                                        <th>주소</th>
					                                        <td><input type="text" class="form-control" id="stuAddr" name="addr" value="${pro.addr }"></td>
					                                     	<th>상세주소</th>
					                                     	<td><input type="text" class="form-control" id="stuAddr2" name="addr2" value="${pro.addr2 }"></td>
		                                                </tr>
		                                            </tbody>
		                                        </table>
		                                        <br><br><br>
		                                        <h5 class="ti-arrow-circle-right mb-2"> 강의목록</h5><br>
			                                        <table id="" class="display table table-borderd">
			                                            <tbody>
			                                            	<c:forEach items="${list }" var="sub">
				                                            	<tr>
					                                                <th>과목코드</th>
					                                                <td>${sub.subjectNum }</td>
					                                                <th>이수구분</th>
					                                                <td>${sub.subjectDetail }</td>
					                                                <th>강의실</th>
					                                                <td>${sub.subjectRoom }강의장</td>
					                                                <th>인원</th>
					                                                <td>${sub.subjectTotal } 명</td>
				                                                </tr>
				                                                <tr>
				                                                    <th>과목명</th>
				                                                    <td>${sub.subjectName }</td>
				                                                    <th>학점</th>
				                                                    <td>${sub.subjectScore } 학점</td>
				                                                    <th>강의시간</th>
				                                                    <td class="subTime" data-day="${sub.subjectDay }" data-time="${sub.subjectTime }"></td>
				                                                    <th>학기</th>
				                                                    <td>${sub.subjectSemester }</td>
				                                            	</tr>
			                                            	</c:forEach>
			                                            </tbody>
			                                        </table>
		                                    </div>
		                                </div>
		                                <input type="hidden" name="id" value="${pro.id }">
                            		</form>
                            	</div>
		                        <div class="row"> 
		               	        	<div class="col-lg-12">
			                          	<div class="d-flex justify-content-end">
				                            <button id="upBtn" class="btn btn-default m-b-30 m-l-5 m-r-50" style="width:80px;">저장</button>
				               	        </div>
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
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
		const days = {1 : '월',2 : '화',3 : '수',4 : '목',5 : '금',6 : '토'};
	    const times = {1: '9:00 - 9:50',2: '10:00 - 10:50',3: '11:00 - 11:50',4: '12:00 - 12:50'
	          ,5: '1:00 - 1:50',6: '2:00 - 2:50',7: '3:00 - 3:50',8: '4:00 - 4:50',9: '5:00 - 5:50'};
	    
	    (function(){
	    	for (let sub of $('.subTime')) {
				sub.innerHTML = days[$(sub).attr('data-day')]+' / '+times[$(sub).attr('data-time')]
			}
	    })();
	
	    window.onload = function () {
	        document
	          .getElementById("address_kakao")
	          .addEventListener("click", function () {
	            //주소입력칸을 클릭하면
	            //카카오 지도 발생
	            new daum.Postcode({
	              oncomplete: function (data) {
	                //선택시 입력값 세팅
	                document.getElementById("stuZipcode").value = data.zonecode;
	                document.getElementById("stuAddr").value = data.roadAddress; // 주소 넣기
	                document.querySelector("input[name=stuAddr2]").focus(); //상세입력 포커싱
	              },
	            }).open();
	          });
	      };
	      
			(function(){
				const dateList =  $('.subDate');
				for(date of dateList){
					date.innerHTML = (date.innerHTML).slice(0,10);
				}
			})();
			
			$('#upBtn').click(function(){
				for ( var input of $('#updateFrm input') ) {
					if(input.value===''){
						alert('값을 모두 채워주세요.');
						input.focus();
						return;
					}
				}
				$.ajax({
					url :'/univ/admin/updatePro.do',
					data : $('#updateFrm').serialize(),
					type:'post'
				})
				.done(data=>{
					if(data==='Y'){
						alert('해당 직원정보가 수정이 정상적으로 완료되었습니다.');
						location.href='/univ/admin/selectProf.do?id='+'${pro.id}';
					}else if(data==='N'){
						laert('정보 수정 중에 오류가 발생하였습니다.');
					}
				})
				
			})
	</script>
    
</body>
</html>