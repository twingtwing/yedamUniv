<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 학사관리</span>  <i class="fa fa-chevron-right"></i> <span class="m-l-10 main_bar_span">졸업시물레이션</span>
                </div>
            </div>
            <div class="align-items-md-center mt-2">
         <div class="row">
            <div class="col-lg-12 m-t-20">
                 <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:#3498db" ></i>기본학적정보</h4>
                <div class="ibox">
                    <div class="ibox-body">
                        <style>
                            table{
                                table-layout:fixed;
                                word-break: break-all;
                                
                            }
                         
                        </style>
               
                      <table class="table table-bordered mt-3" style="text-align: center;">
                        <thead class="thead-default" >
                        	<tr>
                            	<th class="text-center">학번</th>
	                            <th class="text-center">학과</th>
	                            <th class="text-center">학년</th>
	                            <th class="text-center">이름</th>
	                            <th class="text-center">학적상태</th>
                        	</tr>
                        </thead>
                        <tbody>
                           <tr>
                               <td>${stu.stuId }</td>
                               <td>${stu.major }</td>
                               <td>${stu.grade }</td>
                               <td>${stu.stuName }</td>
                               <td>${stu.stuRec }</td>
                           </tr>
               
                         </tbody>
                </table>
            </div>
        </div>
            </div>
         </div>
        </div>

        <div class="row mt-2">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;">
                    <i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:#3498db" ></i>졸업요건목록</h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center">
                            <thead class="thead-default">
                            	<tr>
	                                <th class="text-center">순번</th>
	                                <th class="text-center">요건</th>
	                                <th class="text-center">기준</th>
	                                <th class="text-center">취득</th>
	                                <th class="text-center">결과</th>
                            	</tr>
                            </thead>
                            <tbody>
                               <tr>
                                   <td>1</td>
                                   <td>졸업학점</td>
                                   <td>90</td>
                                   <td>51</td>
                                   <td><span class="text-danger">불합격</span></td> 
                               </tr>
                                <tr>
                                   <td>2</td>
                                   <td>교양이수학점</td>
                                   <td>10</td>
                                   <td>9</td>
                                   <td><span class="text-danger">불합격</span></td> 
                               </tr>
                               <tr>
                                    <td>3</td>
                                    <td>전공이수학점</td>
                                    <td>0</td>
                                    <td>42</td>
                                    <td><span class="text-primary">합격</span></td> 
                                </tr>
                               <tr>
                                   <td colspan="5" style="height: 120px;"></td>
                               </tr>
                   
                             </tbody>
                             <thead class="thead-default">
                             	<tr>
	                                <th colspan="4">총 건수 : [3] 건</th>
	                                <th>결과 : <span class="text-danger">불합격</span></th>
                             	</tr>
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