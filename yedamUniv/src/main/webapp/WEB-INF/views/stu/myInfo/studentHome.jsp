<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- START PAGE CONTENT-->
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
            .list-thead tr{
            background-color: #4c5a7d;
            border-color: #4c5a7d;
            color: white;
       		}
        
        </style>
        
        
        <div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 학사관리</span>  <i class="fa fa-chevron-right"></i> <span class="m-l-10 main_bar_span">학적조회사항</span>
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

                   
                        <style>
                            table{
                                table-layout:fixed;
                                word-break: break-all;
                                
                            }
                            
                        </style>
                 <table class="table table-bordered mt-3 text-center ">
                     <tbdoy>
                    <tr>
                        <th class="text-center bg-silver-100">학과</th>
                        <td>${stu.major }학과</td>
                        <th class="text-center bg-silver-100">학년</th>
                        <td>${stu.grade }학년</td>
                    </tr>
                    <tr>
                        <th class="text-center bg-silver-100">이름</th>
                        <td>${stu.stuName }</td>
                        <th class="text-center bg-silver-100">학적상태</th>
                        <td>${stu.stuRec }</td>
                    </tr>
                    <tr>
                        <th class="text-center bg-silver-100">입학일자</th>
                        <td>${stu.stuJoin }</td>
                        <th class="text-center bg-silver-100">최종학적변동</th>
                        <td>${stu.stuChg }</td>
                    </tr>
                </tbdoy>
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
                                <tbdoy>
                                    <tr>
                                        <th class="text-center bg-silver-100">핸드폰</th>
                                        <td>${stu.stuTel }</td>
                                        <th class="text-center bg-silver-100">이메일</th>
                                        <td>${stu.stuEmail }</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-silver-100" >우편번호</th>
                                        <td width="32%">${stu.stuZipcode }</td>
                                        <th class="text-center bg-silver-100">주소</th>
                                        <td>${stu.stuAddr } ${stu.stuAddr2 }</td>
                                     </tr>
                       
                                 </tbdoy>
                             </table>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row mt-3">
                <div class="col-lg-12">
                    <h4 style="font-weight: 600;"><i class="fa fa-check-circle m-r-10 m-b-10" style="color:#3498db" ></i>학적변동</h4>
                    <div class="ibox ">
                        <div class="ibox-body">
                            <table class="table table-bordered mt-4 text-center">
                                <thead class="list-thead">
                                    <th class="text-center" width='100'>년도</th>
                                    <th class="text-center" width='120'>학기</th>
                                    <th class="text-center" width='120'>변동유형</th>
                                    <th class="text-center" >사유</th>
                                    <th class="text-center" width='120'>휴학기간</th>
                                    <th class="text-center" width='120'>학년</th>
                                    <th class="text-center" width='120'>복학예정년도</th>
                                    <th class="text-center" width='120'>복학예정학기</th>
                                </thead>
                                <tbdoy>
                                   <tr>
                                       <td>2022</td>
                                       <td>2학기</td>
                                       <td>휴학</td>
                                       <td>집게리아 취직</td>
                                       <td>1년</td>
                                       <td>2학년</td>
                                       <td>2023</td>
                                       <td>2학기</td>
                                   </tr>
                       
                                 </tbdoy>
                             </table>
                        </div>
                    </div>
                </div>
            </div>
          
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
          </style> 
        </div>
        <!-- END PAGE CONTENT-->
        
     
   
</html>