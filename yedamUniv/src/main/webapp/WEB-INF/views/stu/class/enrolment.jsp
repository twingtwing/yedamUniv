<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 학사관리</span>  <i class="fa fa-chevron-right"></i> 
                        <span class="m-l-10 main_bar_span">수강신청</span>
                </div>
            </div>
     
            <div class="align-items-md-center mt-2">
                <div class="row">
                   <div class="col-lg-12 m-t-20">
                        <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>기본학적정보</h4>
                       <div class="ibox">
                           <div class="ibox-body"> 
                                <div class="row d-flex align-items-center pl-5">
                                    
                                    <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                        학년도/학기
                                    </div>
                                    <div class="col-lg-2 d-flex align-items-start">
                                        <input type="text" class="form-control text-center" value="2022" disabled>
                                        <input type="text" class="form-control ml-2 text-center" value="2학기" disabled>
                                    </div>
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                        학번
                                    </div>
                                    <div class="col-lg-2 d-flex align-items-start">
                                        <input type="text" class="form-control text-center" value="2012121" disabled>
                                        <input type="text" class="form-control ml-2 text-center"  value="이정은" disabled>
                                    </div>
                                    
                                    
                                </div>
                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 m-t-20">
                     <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                        개설정보</h4>
                    <div class="ibox">
                        <div class="ibox-body"> 
                             <div class="row d-flex align-items-center pl-5">    
                                 <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                     학과
                                 </div>
                                 <div class="col-lg-2 d-flex align-items-start">
                                     <input type="text" class="form-control text-center" value="데이터학과" disabled>
                                 </div>
                             </div>
                             <div class="row d-flex align-items-center mt-2 pl-5">    
                                <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                    학년
                                </div>
                                <div class="col-lg-2 d-flex align-items-start">
                                    <input type="text" class="form-control text-center" value="3" disabled>
                                </div>
                                <div class="col-lg-8"></div>
                                <div class="col-lg-1">
                                    <button type="button" class="btn btn-primary">조회</button>
                                </div>
                                
                                
                                
                                
                            </div>
                    
                         </div>
                     </div>
                 </div>
             </div>
        
            
        

        <div class="row mt-2">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                    개설강좌</h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                                <th class="text-center">순번</th>
                                <th class="text-center">이수구분</th>
                                <th class="text-center">과목코드</th>
                                <th class="text-center">과목명</th>
                                <th class="text-center">학점</th>
                                <th class="text-center">학과</th>
                                <th  class="text-center">학년</th>
                                <th class="text-center">담당교수</th>
                                <th class="text-center">요일</th>
                                <th class="text-center">교시</th>
                                <th class="text-center"></th>
                            </thead>
                            <tbdoy>
                               <tr>
                                   <td>1</td>
                                   <td>전공</td>
                                   <td>202</td>
                                   <td>리눅스</td>
                                   <td>3</td>
                                   <td>데이터학과</td>
                                   <td>1</td>
                                   <td>서강중</td>
                                   <td>화요일</td>
                                   <td>7-8교시</td>
                                   <th class="d-flex justify-content-center"><button type="button" class="btn btn-outline-primary btn-sm">신청</button></th>
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
            
            <div class="row mt-4 ">
                <div class="col-lg-12 ">
                    <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                        수강신청내역</h4>
                    <div class="ibox ">
                        <div class="ibox-body">
                            <table class="table table-bordered mt-4 text-center">
                                <thead class="thead-default">
                                    <th class="text-center">순번</th>
                                    <th class="text-center">이수구분</th>
                                    <th class="text-center">과목코드</th>
                                    <th class="text-center">과목명</th>
                                    <th class="text-center">학점</th>
                                    <th class="text-center">학과</th>
                                    <th class="text-center">학년</th>
                                    <th class="text-center">담당교수</th>
                                    <th class="text-center">요일</th>
                                    <th class="text-center">교시</th>
                                </thead>
                                <tbdoy>
                                   <tr>
                                       <td>1</td>
                                       <td>전공</td>
                                       <td>202</td>
                                       <td>리눅스</td>
                                       <td>3</td>
                                       <td>데이터학과</td>
                                       <td>1</td>
                                       <td>서강중</td>
                                       <td>화요일</td>
                                       <td>7-8교시</td>
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