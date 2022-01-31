<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<div class="page-content fade-in-up">
  <div class="row">
    <div
      class="col-lg-12 m-t-8 p-b-10 p-t-10"
      style="border-bottom: 2px solid rgba(119, 119, 121, 0.11)"
    >
      <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span>
      <i class="fa fa-chevron-right"></i>
      <span class="m-l-10 m-r-10">수강목록</span>
      <i class="fa fa-chevron-right"></i>
      <span class="m-l-10 m-r-10">${subName }</span>
      <i class="fa fa-chevron-right"></i>
      <span class="m-l-10 main_bar_span">묻고답하기</span>
    </div>
  </div>

  <div class="row mt-5 pt-2">
    <div class="col-lg-12">
      <div class="ibox">
        <div class="ibox-body">
          <div class="col-lg-12">
            <div class="m-2">
              <div class="row mt-3">
                
                <div class="d-flex align-items-end ml-3">
                  <h4 class="mb-0 font-weight-bold"><i class="fa fa-lg fa-chevron-circle-right m-r-10 m-b-10"
                    style="color: var(--blue)"></i>묻고 답하기</h4>
                </div>
              </div>
              <div class="row mt-4 border">
                <div class="col-lg-12">
                  <div class="row bg-silver-100 py-3">
                    <div class="col-lg-12">
                      <div class="row pt-2 px-4">
                        <h4 class="font-weight-bold"> ${qnaList.sqTitle }</h4>
                      </div>
                      <div
                        class="row border d-flex justify-content-between align-items-end px-4 mt-2"
                      >
                        <!--  작성일자, 작성자, 답변상테 -->
                        <p class="mb-0">
                              <span style="font-weight: 600">작성자</span>
                              <span class="ml-2">${qnaList.stuName } /</span>
                              <span class="ml-1">${qnaList.major }</span>
                            </p>
                        <div class="row">
                         <p class="mb-0 mr-3">
                                <c:out
                                  value="${fn:substring(qnaList.sqDate,0,10) }"
                                ></c:out>
                              </p>
                          <c:if test="${qnaList.sqState eq 'Y'}">
                                <p
                                  class="mb-0 mr-3 text-danger"
                                  style="font-weight: 600"
                                >
                                  답변완료
                                </p>
                              </c:if>
                              <c:if test="${qnaList.sqState eq 'N'}">
                                <p
                                  class="mb-0 mr-3 text-primary"
                                  style="font-weight: 600"
                                >
                                  답변대기
                                </p>
                              </c:if>
                         
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="Q-contents row mt-2 p-4" style="height: 300px">
                    <p>교수님 a 내놔요</p>
                  </div>
                </div>
              </div>

              <c:if test="${qnaList.sqState ne 'Y' }">
                    
                     
                        <div
                          class="row mx-2 mt-5 mb-3 d-flex justify-content-between"
                        >
                          <button
                            onclick="history.back()"
                            class="btn btn-outline-default"
                          >
                            목록 가기
                          </button>
                          <div id="buttons">
                            <button
                              id="modifyBtn"
                              class="btn btn-outline-warning mr-3"
                            >
                              수정
                            </button>
                            <button
                              id="deleteBtn"
                              class="btn btn-outline-primary"
                              onclick="deleteQna()"
                            >
                              삭제
                            </button>
                          </div>
                        </div>
                     
                    </div>
                  </c:if>

                  <c:if test="${qnaList.sqState eq 'Y' }">
                    <div class="row mt-4 pb-2 bg-silver-100">
                      <div class="col-lg-12">
                        <div class="row d-flex mt-3 mb-2 mx-2 pt-3">
                          <i
                            class="ti-pin-alt mr-4 text-warning"
                            style="font-size: 25px"
                          ></i>
                          <h4 class="font-weight-bold">${id }교수님의 답변</h4>
                        </div>
                        <div class="d-flex justify-content-end">
                          <span class="mr-4" style="font-weight: 600"
                            >작성일자</span
                          >
                          <span class="mr-5">${qnaList.saDate }</span>
                        </div>

                        <div class="Q-contents row p-4" style="height: 300px">
                          <div class="col-lg-12">
                            <div class="ibox">
                              <div
                                class="ibox-body d-flex justify-content-center align-items-center"
                                style="height: 300px; border-radius: 10px"
                              >
                                <textarea
                                  id="aContents"
                                  name="saContents"
                                  class="form-control"
                                  rows="15"
                                  disabled
                                >
${qnaList.saContents }</textarea
                                >
                              </div>
                            </div>
                          </div>
                        </div>
                        <div
                          class="row mx-2 mt-5 mb-3 d-flex justify-content-between"
                        >
                          <button
                            onclick="history.back()"
                            class="btn btn-outline-default"
                          >
                            목록 가기
                          </button>
                          <div id="buttons">
                            <button
                              id="modifyBtn"
                              class="btn btn-outline-warning mr-3"
                            >
                              수정
                            </button>
                            <button
                              id="deleteBtn"
                              class="btn btn-outline-primary"
                              onclick="deleteQna()"
                            >
                              삭제
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:if>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script>
    	const modifyBtn = document.querySelector("#modifyBtn");
    	const handleModify=()=>{
    		location.href="/univ/stu/qnaUpdate.do?sqNo="+"${sqNo}"+"&&subNo="+"${subNo}"+"&&subName="+"${subName}";
    	}
    	modifyBtn.addEventListener("click",handleModify);
    	const deleteQna=()=>{
    		if(confirm("삭제하시겠습니까?")){
    			$.ajax({
    				url:"/univ/stu/qnaDelete.do",
    				type:"post",
    				data:{sqNo:${sqNo},stuId:${id}}
    			}).done(function(data){
    				if(data=="Y"){
    					alert("삭제되었습니다.")
    					location.href="/univ/stu/classHome.do?subNo="+"${subNo}"+"&&subName="+"${subName}"
    				}
    			})
    				
    			
    		}
    	}
    </script>
