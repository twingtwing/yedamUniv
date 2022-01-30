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
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> 
                            <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 학사관리</span>  
                                <i class="fa fa-chevron-right"></i> <span class="m-l-10 main_bar_span">복학신청</span>
                </div>
            </div>
            <div class="align-items-md-center mt-2">
         <div class="row">
            <div class="col-lg-12 m-t-20">
                 <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--navy)" ></i>복학안내</h4>
                <div class="ibox">
                    <div class="ibox-body">
                        <div class="p-3" style="border:1px solid #4c5a7d; border-radius: 4px;">
                            <div class="mt-2">
                                <h6 class="text-secondary" style="font-weight: 600;"><span class="mr-2">⦁</span>복학은 수업일수가 부족하지 않도록 가능한 개강 전에 하시기 바랍니다.</h6></div>
                            <div class="mt-4">
                                <h6 class="text-secondary" style="font-weight: 600;"><span class="mr-2">⦁</span>복학접수가 완료되면 수강신청 및 등록사항 반드시 확인하세요.</h6></div>
                        </div>
                        
                </div>
        </div>
            </div>
         </div>
        </div>
        
            
        

        <div class="row mt-4">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;">
                    <i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:#3498db" ></i>복학신청</h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center">
                            <thead class="thead-default">
                            	<tr>
	                                <th class="text-center"></th>
	                                <th  class="text-center">학적변동구분</th>
	                                <th  class="text-center">휴학신청일자</th>
	                                <th  class="text-center">복학예정일자</th>
	                                <th  class="text-center">학과</th>
	                                <th  class="text-center">학번</th>
	                                <th  class="text-center">처리현황</th>
                            	</tr>
                            </thead>
                            <tbody>
                               <tr>
                                   <td>
                                       <label class="ui-checkbox ui-checkbox-primary">
                                       <input type="checkbox" id="leaveNo"><span class="input-span"></span></label></td>
                                   <td>휴학</td>
                                   <td class="subDate1">${leave.leaveDate }</td>
                                   <td class="subDate2">${leave.backSchedule }</td>
                                   <td>${major }학과</td>
                                   <td>${id }</td>
                                   <td>
                                      <c:if test="${empty leave.backDate}">신청 전</c:if>
                                      <c:if test="${not empty leave.backDate}">신청 완료</c:if>
                                   </td>
                               </tr>
                             </tbody>
                         </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center mt-2">
            <button type="button" id="modifyBtn" class="btn btn-outline-primary btn-lg" style="cursor:pointer">복학신청</button>
        </div>
        </div>
        <script type="text/javascript">
			$('.subDate1').text($('.subDate1').text().substr(0,10));
			$('.subDate2').text($('.subDate2').text().substr(0,7));
        
			$('#modifyBtn').click(function(){
				if(!$('#leaveNo').is(':checked')){
					alert('복학 신청할 항목을 선택해주세요.');
				}else if($('#leaveNo').closest('tr')[0].children[3].innerHTML != '2023-01'){
					alert('현재 복학 가능한 기간이 아닙니다.');
				}else if($('#leaveNo').closest('tr')[0].children[6].innerHTML.replace(/\s*/g, "") === '신청완료'){
					alert('이미 신청 완료하였습니다.');
				}else{
					$.ajax({
						url :'/univ/stu/returnUpBack.do',
						type:'post',
						data : {leaveNo : '${leave.leaveNo}'}
					})
					.done(data=>{
						if(data ==='Y'){
							alert('신청이 완료하였습니다.');
							location.href="/univ/stu/returnSchoolApp.do?stuId="+'${leave.stuId}';
						}else if(data ==='N'){
							alert('신청 중에 오류가 발생하여 중단합니다.');
						}
					});
				}
			})
		</script>