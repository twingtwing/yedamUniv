<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8" />
		<style>
            .main_bar>span,.fa-home{
                color:#7f8c8d;
            }
            .main_bar .fa-chevron-right{
                color:#bdc3c7;
            }
            .main_bar_span{
                color:#34495F;
                font-weight: 600;
            }
           .visitors-table tbody tr td:last-child {
              display: flex;
              align-items: center;
            }

            .visitors-table .progress {
              flex: 1;
            }

            .visitors-table .progress-parcent {
              text-align: right;
              margin-left: 10px;
            }
            table{
            	table-layout:fixed;
            	word-break: break-all;
            }
            th{
            	background-color: #F1F1F1;
			}
        
        </style>
</head>
<body>
      	<div class="page-content fade-in-up">
	      	<div class="row">
		        <div class="col-lg-12">
		          <i class="fa fa-home"></i>
		          <a href="/univ/pro/pro.do" alt="my main" class="back_link font-weight-bold">my main</a>
		          <i class="fa fa-angle-right mx-1"></i>
		          <small class="font-weight-bold">나의 정보</small>
		        </div>
	     	</div>
            <div class="align-items-md-center mt-2">
		         <div class="row">
		             <div class="col-lg-2 m-t-20">
		                   <img src='/univ/resources/mypage/myPageImages/스펀지밥.png' >
		                   <div class="d-flex justify-content-center">
		                    <button type="button" class="btn btn-primary mt-2">수정</button>
		                </div>
		            </div>
		            <div class="col-lg-10 m-t-20">
		                <h4 style="font-weight: 600;"><i class="fa fa-check-circle m-r-10 m-b-10" style="color:#3498db" ></i>기본사항</h4>
		                <div class="ibox">
		                    <div class="ibox-body">
				                 <table class="table table-bordered mt-5">
				                 	<tbody>
					                	<tr>
					                        <th>학과</th>
					                        <td>${pro.major}학과</td>
					                        <th>이름</th>
					                        <td>${pro.proName }</td>
					                    </tr>
					                    <tr>
					                        <th>입사일</th>
					                        <td>${pro.proHire }</td>
					                        <th>상태</th>
					                        <td>${pro.proRec }</td>
					                    </tr>
				                	</tbody>
				                </table>
				            </div>
				        </div>
		            </div>
		         </div>
        	</div>

            <div class="row mt-3">
                <div class="col-lg-12">
                    <h4 style="font-weight: 600;"><i class="fa fa-check-circle m-r-10 m-b-10" style="color:#3498db" ></i>학생정보</h4>
                    <div class="ibox">
                        <div class="ibox-body">
                            <table class="table table-bordered mt-3">
                                <tbody>
                                    <tr>
                                    <th>비밀번호</th>
                                        <td>
                                           <div class="d-flex align-items-center">
                                            
                                                <button class="ml-3 btn btn-outline-secondary" type="button" data-toggle="modal" data-target="#passwordForm">변경하기</button>
                                            </div>
                                          
                                        </td>
                                        <th>핸드폰</th>
                                        <td>
                                           <div class="d-flex align-items-center">
                                            <input type="text" class="form-control" placeholder="" aria-label="Phone Number" >
                                                
                                            </div>
                                          
                                        </td>
                                        <th>이메일</th>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <input type="email" class="form-control" placeholder="" aria-label="email" style="width: 90%;">
                                                    
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>우편번호</th>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <input type="text" class="form-control" id="stuZipcode" placeholder="" aria-label="Phone Number" style="width: 60%;">
                                                    <button class="ml-3 btn btn-outline-secondary" id="address_kakao" type="button">검색</button>
                                            </div>
                                        </td>
                                        <th>주소</th>
                                        <td colspan="3"><input type="text" class="form-control" id="stuAddr" ></td>
                                     </tr>
                                     <tr>
                                     	<th>상세주소</th>
                                     	<td><input type="text" class="form-control" name="stuAddr2"></td>
                                     </tr>
                                 </tbody>
                             </table>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- 비밀번호 모달창 -->
            
	         <div class="modal fade" id="passwordForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	          <div class="modal-dialog modal-lg" role="document">
	            <div class="modal-content">
	              <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalLabel">비밀번호변경</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                  <span aria-hidden="true">&times;</span>
	                </button>
	              </div>
	              <div class="modal-body">
	                <form>
	                  <div class="form-group d-flex justify-content-start">              
	                        <label for="recipient-name" class="col-form-label mr-5">새 비밀번호</label>
	                        <input type="password" class="form-control ml-1" id="recipient-name" value=""  style="width: 40%;">
	                  </div>
	                 
	                  <div class="form-group d-flex justify-content-start">              
	                    <label for="recipient-name" class="col-form-label mr-3">새 비밀번호 확인</label>
	                    <input type="password" class="form-control" id="recipient-name" value="" style="width: 40%;">
	                 </div>
	                 <div class="form-group d-flex justify-content-start">              
	                    <label for="recipient-name" class="col-form-label mr-3  text-danger">
	                       새 비밀번호는 영소문자, 특수문자 조합 n자 이상 설정해주세요. </label>
	                  </div>
	                </form>
	              </div>
	              <div class="modal-footer">
	                <button type="button" class="btn btn-primary">변경확인</button>
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">변경취소</button>               
	              </div>
	            </div>
	          </div>
	        </div>
            <div class="d-flex justify-content-center mt-5">
                <button type="button" id="modifyBtn" class="btn btn-outline-primary btn-lg" style="cursor:pointer">저장</button>
            </div>
        </div>
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script>
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
          
          
              const btn = document.querySelector("#modifyBtn");
              const goToTheModifyPage=()=>{
                  let result=confirm("저장하시겠습니까?")
                  if(result){
                      alert("개인정보를 수정했습니다. (오늘날짜)")
                      location.href="/univ/stu/studentHome.do";
                  }
              }
              btn.addEventListener("click",goToTheModifyPage);
          </script>
</body>
</html>