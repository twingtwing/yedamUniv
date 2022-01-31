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
                                <span> 학생</span>
                                <h1 class="ti-user"> 학생상세조회</h1>
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
		                                                <td>${stu.stuId }</td>
		                                                <th>전화번호</th>
		                                                <td>
		                                                    <input type="text" value="${stu.stuTel }" name="tel" style="width:100%">
		                                                    </td>
		                                            </tr>
		                                            <tr>
		                                                <th>이름</th>
		                                                <td>
		                                                    <input type="text" value="${stu.stuName }" name="name" style="width:100%">
		                                                    </td>
		                                                <th>이메일</th>
		                                                <td>
		                                                    <input type="text" value="${stu.stuEmail }" name="email" style="width:100%">
		                                                    </td>
		                                            </tr>
		                                            <tr>
		                                                <th>생년월일</th>
		                                                <td class="subDate">${sub.stuBrith }</td>
		                                                <th>권한</th>
		                                                <td>학생</td>
		                                            </tr>
		                                            </tbody>
		                                        </table>
		                                        <table class="display table table-borderd">
		                                            <tbody>
		                                            	<tr>
					                                        <th>우편번호</th>
					                                        <td>
					                                            <div class="d-flex align-items-center">
					                                                <input type="text" name="zipcode" class="form-control" id="stuZipcode" value="${stu.stuZipcode }" placeholder="" aria-label="Phone Number" style="width: 60%;">
					                                                    <button class="ml-3 btn btn-outline-secondary" id="address_kakao" type="button">검색</button>
					                                            </div>
					                                        </td>
					                                        <th>주소</th>
					                                        <td><input type="text" class="form-control" id="stuAddr" name="addr" value="${stu.stuAddr }"></td>
					                                     	<th>상세주소</th>
					                                     	<td><input type="text" class="form-control" id="stuAddr2" name="addr2" value="${stu.stuAddr2 }"></td>
		                                                </tr>
		                                                <tr>
		                                                    <th>입학일</th>
		                                                    <td colspan="3" class="subDate">${stu.stuJoin }</td>
		                                                    <th>상태</th>
		                                                    <td>
		                                                    	<select name="rec" class="btn btn-default dropdown-toggle mr-1" style="width: 100px; height: 38px;">
							                                        <option value="재학" <c:if test="${stu.stuRec eq '재학'}">selected</c:if>>재학</option>
							                                        <option value="휴학" <c:if test="${stu.stuRec eq '휴학'}">selected</c:if>>휴학</option>
		                                                        </select>
		                                                    </td>
		                                                </tr>
		                                            </tbody>
		                                        </table>
		                                        <br><br><br>
		                                        <h5 class="ti-arrow-circle-right"> 학적조회</h5><br>
		                                        <table id="" class="display table table-borderd">
		                                            <tbody>
		                                            <tr>
		                                                <th>학과</th>
		                                                <td>${stu.major }학과</td>
		                                                <th>학년</th>
		                                                <td>${stu.grade }학년</td>
		                                                <th>학점</th>
		                                                <td>${list[0].avg }</td>
		                                            </tr>
		                                            <tr>
		                                                <th>졸업학점</th>
		                                                <td>${stu.graduateNum }점</td>
		                                                <th>교양이수학점</th>
		                                                <td>${stu.liberalNum }점</td>
		                                                <th>전공이수학점</th>
		                                                <td>${stu.majorNum }점</td>
		                                                <th>취득학점</th>
		                                                <td>${(reg[0].score + reg[1].score) }점</td>
		                                            </tr>
		                                            </tbody>
		                                        </table>
		                                        <br><br><br>
		                                        <h5 class="ti-arrow-circle-right"> 성적조회</h5><br>
		                                        <table class="display table table-borderd">
		                                            <tbody>
		                                            	<c:forEach items="${list }" var="one">
				                                            <tr>
				                                                <th>과목코드</th>
				                                                <td>${one.subjectNum }</td>
				                                                <th>교수명</th>
				                                                <td>${one.proId }</td>
				                                                <th>중간</th>
				                                                <td>${one.midExam }/100</td>
			                                                    <th>기말</th>
			                                                    <td>${one.finalExam }/100</td>
			                                                </tr>
			                                                <tr>
			                                                    <th>과목명</th>
			                                                    <td>${one.subjectName }</td>
			                                                    <th>이수구분</th>
			                                                    <td>${one.subjectDetail}</td>
				                                                <th>성적</th>
				                                                <td>${one.grade }</td>
			                                                    <th>수강학기</th>
			                                                    <td>${one.registerSemester }</td>
			                                            	</tr>
		                                            	</c:forEach>
		                                            </tbody>
		                                        </table><br>
		                                    </div>
		                                </div>
		                                <input type="hidden" name="id" value="${stu.stuId}">
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
			})()
		
			$('#upBtn').click(function(){
				for ( var input of $('#updateFrm input') ) {
					if(input.value===''){
						alert('값을 모두 채워주세요.');
						input.focus();
						return;
					}
				}
				$.ajax({
					url :'/univ/admin/updateStu.do',
					data : $('#updateFrm').serialize(),
					type:'post'
				})
				.done(data=>{
					if(data==='Y'){
						alert('해당 직원정보가 수정이 정상적으로 완료되었습니다.');
						location.href='/univ/admin/selectStu.do?stuId='+'${stu.stuId}';
					}else if(data==='N'){
						laert('정보 수정 중에 오류가 발생하였습니다.');
					}
				})
				
			})				
		
    
    </script>
</body>
</html>