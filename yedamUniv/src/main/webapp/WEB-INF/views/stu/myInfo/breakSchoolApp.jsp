<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        </style>
        <div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 학사관리</span>  <i class="fa fa-chevron-right"></i> <span class="m-l-10 main_bar_span">휴학/자퇴신청</span>
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
                            <th class="text-center">학번</th>
                            <th class="text-center">학과</th>
                            <th class="text-center">학년</th>
                            <th class="text-center">이름</th>
                            <th class="text-center">학적상태</th>
                            
                        </thead>
                        <tbdoy>
                           <tr>
                               <td>202200000</td>
                               <td>데이터베이스학과</td>
                               <td>3</td>
                               <td>스펀지밥</td>
                               <td>재학</td>
                           </tr>
               
                         </tbdoy>
                </table>
            </div>
        </div>
            </div>
         </div>
        </div>
        
            <div class="d-flex justify-content-end mt-5">
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#breakSchoolForm">휴학신청</button>
                <div class="ml-2 mr-2">
                     <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#byeSchoolForm">자퇴신청</button>
                 </div>  
            </div>

        <!--휴학 모달창-->
        <div class="modal fade" id="breakSchoolForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">휴학신청</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form>
                  <div class="form-group d-flex justify-content-start">              
                        <label for="recipient-name" class="col-form-label mr-5">신청일자</label>
                        <input type="text" class="form-control" id="recipient-name" value="오늘날짜" disabled style="width: 20%;">
                  </div>
                  <div class="form-group d-flex justify-content-start">              
                    <label for="recipient-name" class="col-form-label mr-3">학적변동구분</label>
                    <input type="text" class="form-control" id="recipient-name" value="휴학" disabled style="width: 20%;">
                    <label for="recipient-name" class="col-form-label ml-5">학적세부구분</label>
                    <select class="form-control ml-2" style="width: 20%;">
                        <option value="2021">가사</option>
                        <option value="2020">질병</option>
                        <option value="2020">군입영</option>
                        <option value="2020">부적응</option>
                        <option value="2020">생계곤란</option>
                    </select>
                  </div>
                  <div class="form-group">              
                    <label for="recipient-name" class="col-form-label mr-5">사&nbsp&nbsp유</label>
                    <textarea class="form-control" id="message-text" rows="5"></textarea>
                 </div>

                 <div class="modal-header mt-5">
                    <h5 class="modal-title" class="modal-title" id="exampleModalLabel">복학알림정보</h5>
                </div>   
                    <div class="form-group d-flex justify-content-start mt-3">              
                        <label for="recipient-name" class="col-form-label mr-5">복학예정일자</label>
                        <select class="form-control ml-" style="width: 20%;">
                            <option value="2021">2023</option>
                            <option value="2020">2022</option>
                            
                        </select>
                    </div>
                    <div class="form-group d-flex justify-content-start mt-3">              
                        <label for="recipient-name" class="col-form-label mr-5">복학예정학기</label>
                        <select class="form-control ml-" style="width: 20%;">
                            <option value="2021">1학기</option>
                            <option value="2020">2학기</option> 
                        </select>
                    </div>
                    
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary">휴학신청</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">신청취소</button>
                
              </div>
            </div>
          </div>
        </div>

        <!--자퇴 모달창-->
        <div class="modal fade" id="byeSchoolForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">자퇴신청</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form>
                  <div class="form-group d-flex justify-content-start">              
                        <label for="recipient-name" class="col-form-label mr-5">신청일자</label>
                        <input type="text" class="form-control" id="recipient-name" value="오늘날짜" disabled style="width: 20%;">
                  </div>
                  <div class="form-group d-flex justify-content-start">              
                    <label for="recipient-name" class="col-form-label mr-3">학적변동구분</label>
                    <input type="text" class="form-control" id="recipient-name" value="자퇴" disabled style="width: 20%;">
                    <label for="recipient-name" class="col-form-label ml-5">자퇴세부구분</label>
                    <select class="form-control ml-2" style="width: 20%;">
                        <option value="2021">가사</option>
                        <option value="2020">질병</option>
                        <option value="2020">군입영</option>
                        <option value="2020">부적응</option>
                        <option value="2020">생계곤란</option>
                    </select>
                  </div>
                  <div class="form-group d-flex justify-content-start">              
                    <label for="recipient-name" class="col-form-label mr-3">휴대전화번호</label>
                    <input type="text" class="form-control" id="recipient-name" placeholder="010-7345-8888" value="" style="width: 20%;">
                 </div>
                  <div class="form-group">              
                    <label for="recipient-name" class="col-form-label mr-5">사&nbsp&nbsp유</label>
                    <textarea class="form-control" id="message-text" rows="5"></textarea>
                 </div>
                
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary">자퇴신청</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">신청취소</button>
                
              </div>
            </div>
          </div>
        </div>

        <div class="row mt-2">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:#3498db" ></i>학적변동</h4>
                <div class="ibox ">
                    <div class="ibox-body" >
                        <table class="table table-bordered mt-3 text-center" >
                            <thead class="thead-default">
                                <th class="text-center">순번</th>
                                <th class="text-center">신청서종류</th>
                                <th class="text-center">세부구분</th>
                                <th class="text-center">신청일자</th>
                                <th class="text-center">진행상태</th>
                                <th class="text-center">학적변동승인일자</th>
                                <th class="text-center">사유</th>
                            </thead>
                            <tbdoy>
                               <tr>
                                   <td>1</td>
                                   <td>휴학</td>
                                   <td>취직</td>
                                   <td>2022-01-15</td>
                                   <td>승인중</td>
                                   <td>-</td>
                                   <td>집게리차 취직</td>
                               </tr>
                               <tr>
                                   <td colspan="7" style="height: 200px;"></td>
                               </tr>
                   
                             </tbdoy>
                             <thead class="thead-default">
                                <th colspan="7">총 건수 : [1] 건</th>
                                </thead>
                         </table>
                    </div>
                </div>
            </div>
        </div>
            
            <div class="row mt-4 ">
                <div class="col-lg-12 ">
                    <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:#3498db" ></i>진행현황</h4>
                    <div class="ibox ">
                        <div class="ibox-body">
                            <table class="table table-bordered ">
                                <thead class="thead-default">
                                    <th>년도</th>
                                    <th>학기</th>
                                    <th>변동유형</th>
                                    <th>사유</th>
                                    <th>휴학기간</th>
                                    <th>학년</th>
                                    <th>복학예정년도</th>
                                    <th>복학예정학기</th>
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
                                   <tr>
                                    <td colspan="8" style="height: 200px;"></td>
                                </tr>
                       
                                 </tbdoy>

                                 <thead class="thead-default">
                                    <th colspan="8">총 건수 : [1] 건</th>
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