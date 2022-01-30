<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        
            table{
                 table-layout:fixed;
                 word-break: break-all;
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
                               <td>${stu.major }학과</td>
                               <td>${stu.grade }학년</td>
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
        
            <div class="d-flex justify-content-end mt-4">
            	<c:if test="${count eq 0 }">
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#breakSchoolForm">휴학신청</button>
	                 <div class="ml-2 mr-2">
	                     <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#byeSchoolForm">자퇴신청</button>
	                 </div>  
            	</c:if>
            	<c:if test="${count ne 0 }">
            		<div class="row mb-4">
	            		<div class="mr-2">
	            			<i class="fa fa-exclamation-triangle text-danger"></i>
	            		</div>
	            		<p class="text-danger mb-0 mr-4">이미 휴학/자퇴 신청하신 후이기 때문에 신청 불가능합니다.</p>
            		</div>
            	</c:if>
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
              <form id="leaveFrm">
	              <div class="modal-body">
	                  <div class="form-group d-flex justify-content-start">              
	                        <label for="recipient-name" class="col-form-label mr-5">신청일자</label>
	                        <input type="text" class="form-control recipient-name" disabled style="width: 20%;">
	                  </div>
	                  <div class="form-group d-flex justify-content-start">              
	                    <label for="recipient-name" class="col-form-label mr-3">학적변동구분</label>
	                    <input type="text" class="form-control" id="recipient-name" value="휴학" disabled style="width: 20%;">
	                    <label for="recipient-name" class="col-form-label ml-5">학적세부구분</label>
	                    <select class="form-control ml-2" id="leaveDetail" name="leaveDetail" style="width: 20%;">
	                        <option value="2021">가사</option>
	                        <option value="2020">질병</option>
	                        <option value="2020">군입영</option>
	                        <option value="2020">부적응</option>
	                        <option value="2020">생계곤란</option>
	                    </select>
	                  </div>
	                  <div class="form-group">              
	                    <label for="recipient-name" class="col-form-label mr-5">사&nbsp&nbsp유</label>
	                    <textarea class="form-control" id="leaveReason" name="leaveReason" rows="5"></textarea>
	                 </div>
	
	                 <div class="modal-header mt-5">
	                    <h5 class="modal-title" class="modal-title" id="exampleModalLabel">복학알림정보</h5>
	                </div>   
	                    <div class="form-group d-flex justify-content-start mt-3">              
	                        <label for="recipient-name" class="col-form-label mr-5">복학예정일자</label>
	                        <select class="form-control" name="backSchedule" style="width: 20%;">
	                            <option value="2023-1">2023년 1학기</option>
	                            <option value="2024-1">2022년 1학기</option>
	                        </select>
	                    </div>
	              </div>
	              <div class="modal-footer">
	                <button type="button" id="leaveBtn" class="btn btn-primary">휴학신청</button>
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">신청취소</button>
	              </div>
              </form>
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
                <form id="dropFrm">
                  <div class="form-group d-flex justify-content-start">              
                        <label for="recipient-name" class="col-form-label mr-5">신청일자</label>
                        <input type="text" class="form-control recipient-name" disabled style="width: 20%;">
                  </div>
                  <div class="form-group d-flex justify-content-start">              
                    <label for="recipient-name" class="col-form-label mr-3">학적변동구분</label>
                    <input type="text" class="form-control" id="recipient-name" value="자퇴" disabled style="width: 20%;">
                    <label for="recipient-name" class="col-form-label ml-5">자퇴세부구분</label>
                    <select class="form-control ml-2" id="dropDetail" name="dropDetail" style="width: 20%;">
                        <option value="2021">가사</option>
                        <option value="2020">질병</option>
                        <option value="2020">군입영</option>
                        <option value="2020">부적응</option>
                        <option value="2020">생계곤란</option>
                    </select>
                  </div>
                  <div class="form-group">              
                    <label for="recipient-name" class="col-form-label mr-5">사&nbsp&nbsp유</label>
                    <textarea class="form-control" id="message-text" name="dropReason" rows="5"></textarea>
                 </div>
                </form>
              </div>
              <div class="modal-footer">
                <button id="dropBtn" type="button" class="btn btn-primary">자퇴신청</button>
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
                            	<tr>
	                                <th class="text-center">순번</th>
	                                <th class="text-center">신청서종류</th>
	                                <th class="text-center">세부구분</th>
	                                <th class="text-center">신청일자</th>
	                                <th class="text-center">진행상태</th>
	                                <th class="text-center">사유</th>
                            	</tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${list}" var="ld" varStatus="var">
                            		<tr>
                            			<td>${var.count }</td>
                            			<td>${ld.category }</td>
                            			<td>${ld.detail }</td>
                            			<td class="ldDate">${ld.date }</td>
                            			<td>
                            				<c:if test="${ld.process eq 'N'}">승인대기</c:if>
                            				<c:if test="${ld.process eq 'P'}">교수승인</c:if>
                            				<c:if test="${ld.process eq 'C'}">최종승인</c:if>
                            			</td>
                            			<td>${ld.reason }</td>
                            		</tr>
                            	</c:forEach>
                               <tr>
                                   <td colspan="6" style="height: 200px;"></td>
                               </tr>
                             </tbody>
                             <tfoot class="thead-default">
                             	<tr>
                                	<th colspan="6">총 건수 : [1] 건</th>
                             	</tr>
                             </tfoot>
                         </table>
                    </div>
                </div>
            </div>
        </div>
            
        </div>
        <script type="text/javascript">
        	$('.ldDate').text($('.ldDate').text().substr(0,10));	
        
         	$('.recipient-name').val(new Date().toISOString().substr(0,10));
         	
			$('#leaveBtn').click(function(){
				event.preventDefault();
				if($('#leaveReason').val() == ''){
					alert('사유를 먼저 작성해주세요.');
					$('#leaveReason').focus();
				}else{
					$.ajax({
						url:'/univ/stu/leaveInsert.do',
						type : 'post',
						data: $('#leaveFrm').serialize()
					})
					.done(data=>{
						if(data==='Y'){
							alert('휴학신청을 성공적으로 완료하였습니다.');
							location.href='/univ/stu/breakSchoolApp.do';
						}else if(data==='N'){
							alert('휴학신텅 중 오류가 발생하여 취소되었습니다.');
						}
					})
				}
			});
					
				$('#dropBtn').click(function(){
					event.preventDefault();
					if($('#dropReason').val() == ''){
						alert('사유를 먼저 작성해주세요.');
						$('#dropReason').focus();
					}else{
						$.ajax({
							url:'/univ/stu/dropInsert.do',
							type : 'post',
							data: $('#dropFrm').serialize()
						})
						.done(data=>{
							if(data==='Y'){
								alert('자퇴신청을 성공적으로 완료하였습니다.');
								location.href='/univ/stu/breakSchoolApp.do';
							}else if(data==='N'){
								alert('휴학신텅 중 오류가 발생하여 취소되었습니다.');
							}
						})
					}
				});
		</script>