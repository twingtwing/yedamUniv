<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                        <select class="form-control" id="year">
	                                        <c:set var="stuJoinYear" value="${stuJoinYear}" />
	                                        <c:set var="currentYear" value="${currentYear}" />
	                                        <c:forEach var="i" begin="${fn:substring(stuJoinYear,0,4)}" end="${fn:substring(currentYear,-1,5)}" step="1">
	                                        	<option>${i}</option>
	                                        </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-1 text-center p-2" style="font-weight: 600;">
                                      <span class="mr-1" style="color: var(--blue); font-size: 20px;">⦁</span>학 기
                                    </div>
                                    <div class="col-lg-2 d-flex align-items-start">
                                        <select class="form-control" id="term">
                                            <option>1학기</option>
                                            <option>2학기</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-3"></div>

                                    <div class="col-lg-1 d-flex align-items-start">
                                        <button type="button" class="btn btn-primary" id="classHistory">조회</button>
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
                    수강목록 (<span class="text-danger ml-1 mr-1" style="font-weight: 600;">7</span>) 건 </h4>
                <div class="ibox ">
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                            <tr>
                                <th class="text-center">순번</th>
                                <th class="text-center">이수구분</th>
                                <th class="text-center">교과목명</th>
                                <th class="text-center">과목코드</th>
                                <th class="text-center">학점</th>
                                <th class="text-center">담당교수</th>
                                <th class="text-center">수업시간 및 강의실</th>
                                <th class="text-center">강의실</th>
                            </tr>
                            </thead>
                            <tbody id="showHistory">
                             </tbody>
                            
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
                                        <h3 class="font-weight-bold" id="planTitle"></h3>
                                    </div>
                                </div>
                                <div class="mx-5 mb-4 mt-4 px-5">
                                    <div class="row mb-3">
                                        <div class="row col-lg-12 mt-3 ml-1">
                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                            <div class="d-flex align-items-center ml-2">
                                                <h4 class="font-weight-bold mb-0">강의 정보</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <table class="plan-table table text-center mt-2">
                                            <tbody>
                                                <tr>
                                                    <th class="text-center bg-silver-100" width='17%'>강의번호</th>
                                                    <td width='32%' id="subno"></td>
                                                    <th class="text-center bg-silver-100" width='17%'>학점</th>
                                                    <td width='32%' id="subscore"></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center bg-silver-100">이수구분</th>
                                                    <td id="subdetail"></td>
                                                    <th class="text-center bg-silver-100">총 학생</th>
                                                    <td id="subtotal"></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center bg-silver-100">강의실</th>
                                                    <td id="subroom"></td>
                                                    <th class="text-center bg-silver-100">강의시간</th>
                                                    <td id="subtime"></td>
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
                                        <p id="subsum"></p>
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
                                        <p id="subgoal"></p>
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
                                        <p id="subdata"></p>
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
                                        <p id="subcontents"></p>
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
            #showHistory td{
            	vertical-align : middle;
            }
          </style>
          <script type="text/javascript">
          document.querySelector("#classHistory").onclick=function(){
        	  let year = document.querySelector("#year").value;
        	  let term = document.querySelector("#term").value;
        	  $.ajax({
        		  url : "/univ/stu/AjaxClassListSearch.do",
        		  data : {
        			  year : year,
        			  term : term
        		  },
        		  type : "POST",
        		  dataType : "json",
        		  success : function(datas){
        			  $(".classRow").remove();
        			  
        			  console.log(datas);
        			  let tbody = document.querySelector("#showHistory");
        			  let no = 1;
        			  for(let data of datas){
        				  let tr = document.createElement("tr");
        				  tr.setAttribute("class","classRow");
        				  let num = document.createElement("td");
        				  num.innerHTML = no;
        				  let detail = document.createElement("td");
        				  detail.innerHTML = data.subjectDetail;
        				  let subName = document.createElement("td");
        				  subName.innerHTML = data.subjectName;
        				  let subNo = document.createElement("td");
        				  subNo.innerHTML = data.subjectNum;
        				  let subScore = document.createElement("td");
        				  subScore.innerHTML = data.subjectScore;
        				  let proName = document.createElement("td");
        				  proName.innerHTML = data.proName;
        				  let subTime = document.createElement("td");
        				  let day = "";
        				  if(data.subjectDay == 1){
        					  day = "월";
        				  }else if(data.subjectDay == 2){
        					  day = "화";
        				  }else if(data.subjectDay == 3){
        					  day = "수";
        				  }else if(data.subjectDay == 4){
        					  day = "목";
        				  }else if(data.subjectDay == 5){
        					  day = "금";
        				  }
        				  subTime.innerHTML = day+" "+data.subjectTime+"교시 ("+data.subjectRoom+")";
        				  let buttonTDone = document.createElement("td");
        				  buttonTDone.setAttribute("class","d-flex justify-content-center");
        				  let planBtn = document.createElement("button");
        				  planBtn.setAttribute("type","button");
        				  planBtn.setAttribute("class","btn btn-outline-primary btn-sm");
        				  planBtn.setAttribute("data-toggle","modal");
        				  planBtn.setAttribute("data-target","#classPlanForm");
        				  planBtn.setAttribute("id",data.subjectNo);
        				  planBtn.onclick=function(){
        					  let year = data.subjectSemester.substr(0,4);
        					  let semester = data.subjectSemester.substr(5,7);
        					  document.querySelector("#planTitle").innerHTML = year+"학년도 "+semester+"학기 수업계획서";        					 
        					  document.querySelector("#subno").innerHTML = data.subjectNum;
        					  document.querySelector("#subscore").innerHTML = data.subjectScore;
        					  document.querySelector("#subdetail").innerHTML = data.subjectDetail;
        					  document.querySelector("#subtotal").innerHTML = data.subjectTotal+"명";
        					  document.querySelector("#subroom").innerHTML = data.subjectRoom;
        					  document.querySelector("#subtime").innerHTML = day+" "+data.subjectTime+"교시";
        					  document.querySelector("#subsum").innerHTML = data.subjectSum;
        					  document.querySelector("#subgoal").innerHTML = data.subjectGoal;
        					  document.querySelector("#subdata").innerHTML = data.subjectData;
        					  document.querySelector("#subcontents").innerHTML = data.subjectContents;
        				  }
        				  planBtn.innerHTML = "강의계획서";
        				  buttonTDone.appendChild(planBtn);
        				  
        				  let buttonTDtwo = document.createElement("td");
        				  buttonTDtwo.setAttribute("class","d-flex justify-content-center");
        				  let barogagi = document.createElement("button");
        				  barogagi.setAttribute("type","button");
        				  barogagi.setAttribute("class","btn btn-outline-warning btn-sm");
        				  barogagi.innerHTML = "바로가기"
        				  buttonTDtwo.appendChild(barogagi);
        				  
        				  
        				   //버튼 누르면 해강강의 이동
       		           
      		            function goToTheClassHome() {
      		              location.href ="/univ/stu/classHome.do?subNo=" +data.subjectNo + "&&subName=" +data.subjectName;
      		            }
      		          barogagi.addEventListener("click", goToTheClassHome);
        				  
        		       
        					
        				  tr.appendChild(num);
        				  tr.appendChild(detail);
        				  tr.appendChild(subName);
        				  tr.appendChild(subNo);
        				  tr.appendChild(subScore);
        				  tr.appendChild(proName);
        				  tr.appendChild(subTime);
        				  tr.appendChild(buttonTDone);
        				  tr.appendChild(buttonTDtwo);
        				  
        				  tbody.appendChild(tr);
        				  
        				  no = no+1;
        			  }
        		  },
        		  error : function(){
        			  alert("아작스실패");
        		  }
        	  })
          }
          </script>
        </div>