<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8" />
 <style>
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
            .list-thead tr{
            background-color: #4c5a7d;
            border-color: #4c5a7d;
            color: white;
       		}
       		table{
               table-layout:fixed;
               word-break: break-all;
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
	             </div>
	             <div class="col-lg-10 m-t-20">
	                 <h4 style="font-weight: 600;"><i class="fa fa-check-circle m-r-10 m-b-10" style="color:#3498db" ></i>기본사항</h4>
	                 <div class="ibox">
	                    <div class="ibox-body">
			                 <table class="table table-bordered mt-3 text-center ">
			                    <tbody>
				                    <tr>
				                        <th class="text-center bg-silver-100">학과</th>
				                        <td>${pro.major}학과</td>
				                        <th class="text-center bg-silver-100">이름</th>
				                        <td>${pro.proName }</td>
				                    </tr>
				                    <tr>
				                        <th class="text-center bg-silver-100">입사일</th>
				                        <td>${pro.proHire }</td>
				                        <th class="text-center bg-silver-100">상태</th>
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
                            <table class="table table-bordered mt-3 text-center">
                                <tbody>
                                    <tr>
                                        <th class="text-center bg-silver-100">핸드폰</th>
                                        <td>${pro.proTel }</td>
                                        <th class="text-center bg-silver-100">이메일</th>
                                        <td>${pro.proEmail }</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-silver-100" >우편번호</th>
                                        <td width="32%">${pro.proZipcode }</td>
                                        <th class="text-center bg-silver-100">주소</th>
                                        <td>${pro.proAddr } ${pro.proAddr2 }</td>
                                     </tr>
                                 </tbody>
                             </table>
                        </div>
                    </div>
                </div>
           </div>
            <div class="d-flex justify-content-center mt-5">
                <button type="button" id="modifyBtn" class="btn btn-outline-primary btn-lg" style="cursor:pointer">수정</button>
            </div>
        </div>
        <!-- END PAGE CONTENT-->
          <script>
              const btn = document.querySelector("#modifyBtn");
              const goToTheModifyPage=()=>{
                  let result=confirm("개인 정보를 수정하시겠습니까?")
                  if(result){
                      location.href="/univ/pro/proInfoUpdate.do";
                  }
              }
              btn.addEventListener("click",goToTheModifyPage);
          </script>
</body>
</html>