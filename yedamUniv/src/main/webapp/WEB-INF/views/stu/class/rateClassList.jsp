<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 학사관리</span>  <i class="fa fa-chevron-right"></i> 
                        <span class="m-l-10">수강목록</span>
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
                    강좌평가 대상과목 (<span class="text-danger ml-1 mr-1" style="font-weight: 600;">7</span>) 건</h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                                <th class="text-center">순번</th>
                                <th class="text-center">이수구분</th>
                                <th class="text-center">교과목명</th>
                                <th class="text-center">과목코드</th>
                                <th class="text-center">담당교수</th>
                                <th class="text-center">학점</th>
                                <th class="text-center">비고</th>
                              
                            </thead>
                            <tbdoy>
                               <tr>
                                   <td>1</td>
                                   <td>전공</td>
                                   <td>리눅스</td>
                                   <td>202</td>
                                   <td>서강중</td>
                                   <td>3</td>
                                    
                                   <td class="d-flex justify-content-center"><button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='/univ/stu/rateClass.do'">평가하기</button></td>
                                   
                               </tr>
                               <tr>
                                <td>1</td>
                                <td>전공</td>
                                <td>리눅스</td>
                                <td>202</td>
                                <td>서강중</td>
                                <td>3</td>                               
                                <td>완료</td>
                                
                            </tr>
                               <tr>
                                   <td colspan="11" style="height: 200px;" data-spy="scroll"></td>
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