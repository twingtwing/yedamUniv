<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                                        <input id="year" type="text" class="form-control text-center" disabled>
                                        <input id="semester" type="text" class="form-control ml-2 text-center" disabled>
                                    </div>
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                        학번
                                    </div>
                                    <div class="col-lg-2 d-flex align-items-start">
                                        <input id="stuno" type="text" class="form-control text-center" value="${student.stuId}" disabled>
                                        <input id="stuname" type="text" class="form-control ml-2 text-center" value="${student.stuName}" disabled>
                                    </div>
                                </div>
                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="row mt-2">
            <div class="col-lg-12">
                <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>
                    개설강좌조회</h4>
                <div class="ibox ">
                <div class="ibox-body"> 
                             <div class="row d-flex align-items-center pl-5">    
                                 <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                     학과
                                 </div>
                                 <div class="col-lg-2 d-flex align-items-start">
                                 	<select id="major" class="form-control text-center" style="width: 300px;">
                                 	<c:forEach items="${majorList}" var="majorlist">
                                 		<option>${majorlist.major}</option>
                                 	</c:forEach>
                                 	</select>
                                 </div>
                                 <div class="col-lg-1" style="margin : 2%;">
                                    <button type="button" class="btn btn-primary" id="majorSearch">조회</button>
                                </div>
                             </div>
                             <div class="row d-flex align-items-center pl-5">    
                                 <div class="col-lg-1 text-center p-2" style="background-color: var(--navy); color: white; border-radius: 4px;">
                                     과목명
                                 </div>
                                 <div class="col-lg-2 d-flex align-items-start">
                                 	<input id="subname" type="text" class="form-control text-center" style="width: 400px;">
                                 </div>
                                 <div class="col-lg-1" style="margin : 2%;">
                                    <button type="button" class="btn btn-primary" id="SubnameSearch">조회</button>
                                </div>
                             </div>
                         </div>
                    <div class="ibox-body">
                        <table class="table table-bordered mt-3 text-center list_table">
                            <thead class="thead-default">
                            <tr>
                                <th class="text-center">순번</th>
                                <th class="text-center">이수구분</th>
                                <th class="text-center">과목코드</th>
                                <th class="text-center">과목명</th>
                                <th class="text-center">학점</th>
                                <th class="text-center">학과</th>
                                <th class="text-center">수강인원</th>
                                <th class="text-center">담당교수</th>
                                <th class="text-center">요일</th>
                                <th class="text-center">교시</th>
                                <th class="text-center"></th>
                            </tr>
                            </thead>
                            <tbody id="showSubList">
                             </tbody>
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
	                                <tr>
	                                    <th class="text-center">순번</th>
	                                    <th class="text-center">이수구분</th>
	                                    <th class="text-center">과목코드</th>
	                                    <th class="text-center">과목명</th>
	                                    <th class="text-center">학점</th>
	                                    <th class="text-center">학과</th>
	                                    <th class="text-center">담당교수</th>
	                                    <th class="text-center">요일</th>
	                                    <th class="text-center">교시</th>
	                                </tr>
                                </thead>
                                <tbody id="showRegister">
                                <c:forEach items="${register}" var="reg">
                                <c:set var="i" value="${i+1}"/>
                                   <tr>
                                       <td>${i}</td>
                                       <td>${reg.subjectDetail}</td>
                                       <td>${reg.subjectNum}</td>
                                       <td>${reg.subjectName}</td>
                                       <td>${reg.subjectScore}</td>
                                       <td>${reg.subjectMajor}</td>
                                       <td>${reg.proName}</td>
                                       <c:if test="${reg.subjectDay eq 1}">
                                       	 <td>월</td>
                                       </c:if>
                                       <c:if test="${reg.subjectDay eq 2}">
                                       	 <td>화</td>
                                       </c:if>
                                       <c:if test="${reg.subjectDay eq 3}">
                                       	 <td>수</td>
                                       </c:if>
                                       <c:if test="${reg.subjectDay eq 4}">
                                       	 <td>목</td>
                                       </c:if>
                                       <c:if test="${reg.subjectDay eq 5}">
                                       	 <td>금</td>
                                       </c:if>
                                       <td>${reg.subjectTime}</td>
                                   </tr>
                                </c:forEach>
                                 </tbody>
                                 <thead class="thead-default">
                                 <tr>
                                    <th colspan="10">총 건수 : [${countReg}] 건</th>
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
            
            button,select,option{
            	cursor:pointer;
            }
          </style>
          <script type="text/javascript">
          	window.onload = function(){
          		var today = new Date();
          		console.log("today.toISOString() >>>"+today.toISOString()); //현재 타임스탬프
          		var year = today.toISOString().slice(0,4);
          		console.log("year >>>>"+year);
          		document.querySelector("#year").value=year; //현재년도
          		var month = today.toISOString().slice(6,7);
          		console.log("month >>>>"+month); //현재 월
          		var semester = "1학기";
          		if(month > 8){	// 9월부터는 2학기로 침
          			semester = "2학기";
          		}
          		document.querySelector("#semester").value=semester;
          		
          	}
          	document.querySelector("#majorSearch").onclick=function(){
          		let searchVal = document.querySelector("#major").value;
          		$.ajax({
          			url : "/univ/stu/AjaxSearchClass.do",
          			data : {
          				jogeon : "학과",
          				searchVal : searchVal
          			},
          			type : "POST",
          			dataType : "json",
          			success : function(datas){
          				$(".classRow").remove();
          				let tbody = document.querySelector("#showSubList");
          				let num = 1;
          				for(let data of datas){
          					//태그 만들기
          					let tr = document.createElement("tr");
          					tr.setAttribute("class","classRow");
          					let no = document.createElement("td"); //순번
          					let subDetail = document.createElement("td"); //이수구분
          					let subNum = document.createElement("td"); //과목코드
          					let subName = document.createElement("td"); //과목명
          					let subScore = document.createElement("td"); //학점
          					let subMajor = document.createElement("td"); //학과
          					let subTotal = document.createElement("td"); //정원
          					let proName = document.createElement("td"); //담당교수
          					let subDay = document.createElement("td"); //요일
          					let subTime = document.createElement("td"); //교시
          					let selectTd = document.createElement("td"); //신청버튼담길td
          					let selectBtn = document.createElement("button"); //신청버튼
          					selectBtn.setAttribute("id",data.subjectNo);
							
          					//태그에 값 넣기
          					no.innerText = num;
          					subDetail.innerHTML = data.subjectDetail;
          					subNum.innerHTML = data.subjectNum;
          					subName.innerHTML = data.subjectName;
          					subScore.innerHTML = data.subjectScore;
          					subMajor.innerHTML = data.subjectMajor;
          					subTotal.innerHTML = data.subjectTotal;
          					proName.innerHTML = data.proName;
          					let day = "";
          					if(data.subjectDay == "1"){
          						day = "월";
          					}else if(data.subjectDay == "2"){
          						day = "화";
          					}else if(data.subjectDay == "3"){
          						day = "수";
          					}else if(data.subjectDay == "4"){
          						day = "목";
          					}else if(data.subjectDay == "5"){
          						day = "금";
          					}
          					subDay.innerHTML = day;
          					subTime.innerHTML = data.subjectTime;
          					selectTd.setAttribute("id",data.subjectNo);
          					selectTd.setAttribute("class","selectTD");
          					selectBtn.setAttribute("type","button");
          					selectBtn.setAttribute("class","btn btn-outline-primary btn-sm");
          					selectBtn.innerHTML = "신청";
          					
          					//태그 연결하기
          					tr.appendChild(no);
          					tr.appendChild(subDetail);
          					tr.appendChild(subNum);
          					tr.appendChild(subName);
          					tr.appendChild(subScore);
          					tr.appendChild(subMajor);
          					tr.appendChild(subTotal);
          					tr.appendChild(proName);
          					tr.appendChild(subDay);
          					tr.appendChild(subTime);
          					selectTd.appendChild(selectBtn);
          					tr.appendChild(selectTd);
          					tbody.appendChild(tr);
          					
          					//수강신청 버튼 클릭시
          					selectTd.onclick = function(){
          						let subNo = event.target.getAttribute("id");
          						if(event.target.nodeName == "BUTTON"){
          							$.ajax({
          								url : "/univ/stu/AjaxRegisterClass.do",
          								data : {
          									subNo : subNo,
          									day : data.subjectDay,
          									time : data.subjectTime
          								},
          								type : "POST",
          								dataType : "text",
          								success : function(text){
          									if(text=="이미담아둠"){
          										alert("이미 수강 중인 강의입니다.");
          									}else if(text=="수강학점초과"){
          										alert("수강가능학점을 초과했습니다.");
          									}else if(text=="시간표겹침"){
          										alert("이미 수강중인 강의와 수업시간이 중복됩니다.");
          									}else if(text=="여석없음"){
          										alert("수강여석이 없습니다.");
          									}else if(text=="수강신청가능"){
          										$.ajax({
          											url : "/univ/stu/insertRegister.do",
          											data : {
          												subNo : subNo
          											},
          											type : "POST",
          											dataType : "text",
          											success : function(text){
          												if(text=="NO"){
          													alert("수강신청실패\n관리자에게 문의하세요[010-1234-1234]");
          												}else if(text=="YES"){
          													alert("수강신청이 완료되었습니다.");
          													location.href="/univ/stu/enrolment.do";
          												}
          											},
          											error : function(){
          												console.log("insert 실패")
          											}
          										})
          									}
          								},
          								error : function(){
          									console.log("수강가능여부 아작스 실패");
          								}
          							})
          						}
          					}
          					
          					num = num+1;
          				}
          			},
          			error : function(){
          				alert("리스트를 불러오는 데 실패했습니다.\n관리자에게 문의하세요.[010-1234-1234]");
          			}
          		})
          	}
          	document.querySelector("#SubnameSearch").onclick=function(){
          		let searchVal = document.querySelector("#subname").value;
          		$.ajax({
          			url : "/univ/stu/AjaxSearchClass.do",
          			data : {
          				jogeon : "과목명",
          				searchVal : searchVal
          			},
          			type : "POST",
          			dataType : "json",
          			success : function(datas){
          				$(".classRow").remove();
          				let tbody = document.querySelector("#showSubList");
          				let num = 1;
          				for(let data of datas){
          					//태그 만들기
          					let tr = document.createElement("tr");
          					tr.setAttribute("class","classRow");
          					let no = document.createElement("td"); //순번
          					let subDetail = document.createElement("td"); //이수구분
          					let subNum = document.createElement("td"); //과목코드
          					let subName = document.createElement("td"); //과목명
          					let subScore = document.createElement("td"); //학점
          					let subMajor = document.createElement("td"); //학과
          					let subTotal = document.createElement("td"); //정원
          					let proName = document.createElement("td"); //담당교수
          					let subDay = document.createElement("td"); //요일
          					let subTime = document.createElement("td"); //교시
          					let selectTd = document.createElement("td"); //신청버튼담길td
          					let selectBtn = document.createElement("button"); //신청버튼
							
          					//태그에 값 넣기
          					no.innerText = num;
          					subDetail.innerHTML = data.subjectDetail;
          					subNum.innerHTML = data.subjectNum;
          					subName.innerHTML = data.subjectName;
          					subScore.innerHTML = data.subjectScore;
          					subMajor.innerHTML = data.subjectMajor;
          					subTotal.innerHTML = data.subjectTotal;
          					proName.innerHTML = data.proName;
          					let day = "";
          					if(data.subjectDay == "1"){
          						day = "월";
          					}else if(data.subjectDay == "2"){
          						day = "화";
          					}else if(data.subjectDay == "3"){
          						day = "수";
          					}else if(data.subjectDay == "4"){
          						day = "목";
          					}else if(data.subjectDay == "5"){
          						day = "금";
          					}
          					subDay.innerHTML = day;
          					subTime.innerHTML = data.subjectTime;
          					selectTd.setAttribute("id",data.subjectNo);
          					selectTd.setAttribute("class","d-flex justify-content-center");
          					selectBtn.setAttribute("type","button");
          					selectBtn.setAttribute("class","btn btn-outline-primary btn-sm");
          					selectBtn.onclick=function(){console.log("ff");};
          					selectBtn.innerHTML = "신청";
          					
          					//태그 연결하기
          					tr.appendChild(no);
          					tr.appendChild(subDetail);
          					tr.appendChild(subNum);
          					tr.appendChild(subName);
          					tr.appendChild(subScore);
          					tr.appendChild(subMajor);
          					tr.appendChild(subTotal);
          					tr.appendChild(proName);
          					tr.appendChild(subDay);
          					tr.appendChild(subTime);
          					selectTd.appendChild(selectBtn);
          					tr.appendChild(selectTd);
          					tbody.appendChild(tr);
          					
          					num = num+1;
          				}
          			},
          			error : function(){
          				alert("리스트를 불러오는 데 실패했습니다.\n관리자에게 문의하세요.[010-1234-1234]");
          			}
          		})
          	}
          	document.querySelector(".d-flex justify-content-center").onclick=function(){
          		console.log("ff");
          	}
          </script>
        </div>