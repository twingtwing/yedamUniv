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
                                    
                                    <div class="col-lg-1 text-center p-2" style="font-weight: 600;">
                                      <span class="mr-1" style="color: var(--blue); font-size: 20px;">⦁</span>학년도
                                    </div>
                                    <div class="col-lg-2 d-flex align-items-start">
                                        <select class="form-control">
                                            <option value="2021">2021</option>
                                            <option value="2020">2020</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-1 text-center p-2" style="font-weight: 600;">
                                      <span class="mr-1" style="color: var(--blue); font-size: 20px;">⦁</span>학 기
                                    </div>
                                    <div class="col-lg-2 d-flex align-items-start">
                                        <select class="form-control">
                                            <option value="2021">1학기</option>
                                            <option value="2020">2학기</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-3"></div>

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
                    수강목록 (<span class="text-danger ml-1 mr-1" style="font-weight: 600;">7</span>) 건</h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                                <th class="text-center">순번</th>
                                <th class="text-center">이수구분</th>
                                <th class="text-center">교과목명</th>
                                <th class="text-center">과목코드</th>
                                <th class="text-center">학점</th>
                                <th class="text-center">담당교수</th>
                                <th class="text-center">수업시간 및 강의실</th>
                                <th class="text-center">강의실</th>
                              
                            </thead>
                            <tbdoy>
                               <tr >
                                   <td style="vertical-align:middle">1</td>
                                   <td style="vertical-align:middle">전공</td>
                                   <td style="vertical-align:middle">리눅스</td>
                                   <td style="vertical-align:middle">202</td>
                                   <td style="vertical-align:middle">3</td>
                                   <td style="vertical-align:middle">서강중</td>
                                   <td style="vertical-align:middle">수 17-18 (1강의실)</td>   
                                   <td class="d-flex justify-content-center"><button type="button"   data-toggle="modal" data-target="#classPlanForm" class="btn btn-outline-primary btn-sm">강의계획서</button></td>
                                   <td class="d-flex justify-content-center"><button type="button" class="btn btn-outline-warning btn-sm" onclick="goStraightHome()">바로가기</button></td>
                                   
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
            
        <script>
          const goStraightHome=()=>{
            location.href='/univ/stu/classHome.do'
          }
        </script>

        <!--강의계획서 css-->
        <style>
        .back_link {
            color: #4c5a7d;
        }
        .back_link:hover{
            text-decoration: underline;
        }
        .plan-box{
            border: 2px solid #4c5a7d;
        }
        .plan-table{
            border-top: 2px solid #4c5a7d;
        }
        .plan-table tr{
            height: 50px;
        }
        .plan-table tr>td,.plan-table tr>th{
           vertical-align: middle;
        }
    </style>
        
           <!--강의 계획서 모달-->
           <div class="modal fade" id="classPlanForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
              <div class="modal-header d-flex justify-content-end">
               
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="row mb-2">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-body py-3">
                            <div class="plan-box m-4 p-5">
                                <div class="row">
                                    <div class="col-lg-12 text-center mt-4">
                                        <h3 class="font-weight-bold">????학년도 ??학기 수업계획서</h3>
                                    </div>
                                </div>
                                <div class="mx-5 mb-4 mt-4 px-5">
                                    <div class="row mb-3">
                                        <div class="row col-lg-12 mt-3 ml-1">
                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                            <div class="d-flex align-items-center ml-2">
                                                <h4 class="font-weight-bold mb-0">과목 정보</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <table class="plan-table table text-center mt-2">
                                            <tbody>
                                                <tr>
                                                    <th class="text-center bg-silver-100" width='17%'>수강번호</th>
                                                    <td width='32%'>1111</td>
                                                    <th class="text-center bg-silver-100" width='17%'>학점</th>
                                                    <td width='32%'>3</td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center bg-silver-100">이수구분</th>
                                                    <td>전공</td>
                                                    <th class="text-center bg-silver-100">총 학생</th>
                                                    <td>22명</td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center bg-silver-100">강의실</th>
                                                    <td>1강의실</td>
                                                    <th class="text-center bg-silver-100">강의시간</th>
                                                    <td>화12:00-13:15</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="mx-5 mb-4 mt-4 px-5">
                                    <hr>
                                    <div class="row mb-3">
                                        <div class="row col-lg-12 mt-3 ml-1">
                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                            <div class="d-flex align-items-center ml-2">
                                                <h4 class="font-weight-bold mb-0">수업 개요</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row m-1 pt-2">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                             Officia quod provident reiciendis. Ipsa, molestias, 
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!</p>
                                    </div>
                                </div>
                                <div class="mx-5 mb-4 mt-4 px-5">
                                    <hr>
                                    <div class="row mb-3">
                                        <div class="row col-lg-12 mt-3 ml-1">
                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                            <div class="d-flex align-items-center ml-2">
                                                <h4 class="font-weight-bold mb-0">수업 목표</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row m-1 pt-2">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                             Officia quod provident reiciendis. Ipsa, molestias, 
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!</p>
                                    </div>
                                </div>
                                <div class="mx-5 mb-4 mt-4 px-5">
                                    <hr>
                                    <div class="row mb-3">
                                        <div class="row col-lg-12 mt-3 ml-1">
                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                            <div class="d-flex align-items-center ml-2">
                                                <h4 class="font-weight-bold mb-0">수업 자료</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row m-1 pt-2">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                             Officia quod provident reiciendis. Ipsa, molestias, 
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!</p>
                                    </div>
                                </div>
                                <div class="mx-5 mb-4 mt-4 px-5">
                                    <hr>
                                    <div class="row mb-3">
                                        <div class="row col-lg-12 mt-3 ml-1">
                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                            <div class="d-flex align-items-center ml-2">
                                                <h4 class="font-weight-bold mb-0">수업 내용</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row m-1 pt-2">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                             Officia quod provident reiciendis. Ipsa, molestias, 
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!
                                             perferendis quam dignissimos et nemo aperiam eaque cupiditate beatae,
                                             ipsum neque? Voluptates quo eaque et sapiente!</p>
                                    </div>
                                </div>
                                <div class="row mx-5 mt-5 pr-5 modal-footer">
                                    <div class="col-lg-12 d-flex justify-content-center ml-4">
                                        
                                        <button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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