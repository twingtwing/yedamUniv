<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i>
                    <span class="m-l-10 m-r-10">성적확인</span>  <i class="fa fa-chevron-right"></i> 
                        <span class="m-l-10">금학기성적조회</span>
                </div>
            </div>
     
            <div class="align-items-md-center mt-2">
                <div class="row">
                   <div class="col-lg-12 m-t-20">
                       <div class="ibox">
                           <div class="ibox-body" style="background-color: #c5d5eb;"> 
                                <div class="row d-flex align-items-center pl-5">
                                    <div class=" text-center p-2 d-flex justify-content-start align-items-center" style="font-weight: 600;">
                                        <div class="col-lg-2"><span class="mr-1" style="color: var(--blue); font-size: 20px;">⦁</span> 학년도</div>
                                        <input type="text" class="form-control text-center mr-5" value="2022" disabled>
                                        <div class="col-lg-2"><span class="mr-1" style="color: var(--blue); font-size: 20px;">⦁</span>학 기</div>
                                        <input type="text" class="form-control text-center" value="2학기" disabled>
                                    </div>   
                                </div>
                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <div class="row mt-5">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                    금학기성적 </h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                                <th class="text-center">신청과목수</th>
                                <th class="text-center">취득과목수</th>
                                <th class="text-center">신청학점</th>
                                <th class="text-center">취득학점</th>
                                <th class="text-center">점수평균</th>
                                <th class="text-center">평점평균</th>
                            </thead>
                            <tbdoy>
                               <tr>
                                   <td>7</td>
                                   <td>7</td>
                                   <td>20</td>
                                   <td>20</td>
                                   <td>90</td>
                                   <td>4.1</td>                 
                               </tr>
                             </tbdoy>
                            
                         </table>
                    </div>
                </div>
            </div>
        </div>
            


        <div class="row mt-5">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                    금학기성적목록 </h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                                <th class="text-center" width="130">순번</th>
                                <th class="text-center" width="160">이수구분</th>
                                <th class="text-center">과목명</th>
                                <th class="text-center" width="130">학점</th>
                                <th class="text-center" width="130">점수</th>
                                <th class="text-center" width="130">등급</th>
                                <th class="text-center" width="160">담당교수</th>
                            </thead>
                            <tbdoy>
                               <tr>
                                   <td>1</td>
                                   <td>교양</td>
                                   <td>리눅스</td>
                                   <td>3</td>
                                   <td>90</td>
                                   <td>4.1</td>    
                                   <td>서강중</td>             
                               </tr>
                               <tr>
                                <td colspan="10" style="height: 200px;"></td>
                                </tr>
                             </tbdoy>
                             <thead class="thead-default">
                                <th colspan="10">총 건수 : [1] 건</th>
                            </thead>
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