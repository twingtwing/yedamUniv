<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i>
                    <span class="m-l-10 m-r-10">성적확인</span>  <i class="fa fa-chevron-right"></i> 
                        <span class="m-l-10">전체성적조회</span>
                </div>
            </div>


            <div class="row mt-5">
                <div class="col-md-12">
                    <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                        학기별성적평균 </h4>
                    <div class="ibox">
                        <div class="ibox-body">
                            <div>
                                <div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                                    <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                        <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                            <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                                        </div>
                                    </div>
                                    <canvas id="line_chart" style="height: 200px; display: block; width: 321px;" width="401" height="250" class="chartjs-render-monitor"></canvas>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
     
            <div class="align-items-md-center mt-2">
                <div class="row">
                   <div class="col-lg-12 m-t-20">
                       <div class="ibox">
                           <div class="ibox-body" style="background-color: #c5d5eb;"> 
                                <div class="row d-flex align-items-center pl-5">
                                    
                                    <div class="col-lg-1 text-center p-2" style="font-weight: 600;">
                                        <span class="mr-2" style="color: var(--blue); font-size: 20px;">⦁</span>학년도
                                    </div>
                                    <div class="col-lg-1 d-flex align-items-start">
                                        <select class="form-control">
                                            <option value="2021">2021</option>
                                            <option value="2020">2020</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-1 text-center p-2" style="font-weight: 600;">
                                        <span class="mr-2" style="color: var(--blue); font-size: 20px;">⦁</span>학 기
                                    </div>
                                    <div class="col-lg-1 d-flex align-items-start">
                                        <select class="form-control">
                                            <option value="1">1학기</option>
                                            <option value="2">2학기</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6"></div>
                                    <div class="col-lg-1 d-flex align-items-start">
                                        <button type="button" class="btn btn-primary">조회</button>
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
                        취득성적 </h4>
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
                                    <th class="text-center">등수</th>
                                </thead>
                                <tbdoy>
                                   <tr>
                                       <td>7</td>
                                       <td>7</td>
                                       <td>20</td>
                                       <td>20</td>
                                       <td>90</td>
                                       <td>4.1</td>                 
                                       <td>1 / 25</td>                 
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
                        학기별 성적 (<span class="text-danger ml-1 mr-1" style="font-weight: 600;">7</span>) 건</h4>
                    <div class="ibox ">
                        <div class="ibox-body">
                            <table class="table table-bordered mt-3 text-center list_table">
                                <thead class="thead-default">
                                    <th class="text-center">순번</th>
                                    <th class="text-center">년도학기</th>
                                    <th class="text-center">과목코드</th>
                                    <th class="text-center">보험과사회</th>
                                    <th class="text-center">담당교수</th>
                                    <th class="text-center">이수구분</th>
                                    <th class="text-center">학점</th>
                                    <th class="text-center">취득점수</th>
                                    <th class="text-center">등급</th>
                                    <th class="text-center">평점</th>
                                    <th class="text-center">상세내역</th>
                                </thead>
                                <tbdoy>
                                <tr>
                                    <td>1</td>
                                    <td>2021/2</td>
                                    <td>05246</td>
                                    <td>보험과사회</td>
                                    <td>서강중</td>
                                    <td>교양필수</td>                 
                                    <td>3</td>                 
                                    <td>100</td>                 
                                    <td>A+</td>                 
                                    <td>4.5</td>                 
                                    <td class="d-flex justify-content-center"><button type="button" class="btn btn-outline-primary btn-sm">보기</button></td>                 
                                </tr>
                                <tr>
                                        <td>2</td>
                                        <td>2021/2</td>
                                        <td>01555</td>
                                        <td>리눅스</td>
                                        <td>서강중</td>
                                        <td>전공</td>                 
                                        <td>2</td>                 
                                        <td>90</td>                 
                                        <td>A</td>                 
                                        <td>4.0</td>                 
                                        <td class="d-flex justify-content-center"><button type="button" class="btn btn-outline-primary btn-sm">보기</button></td>                 
                                    </tr>
                                <tr>
                                    <td colspan="11" style="height: 200px;"></td>
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