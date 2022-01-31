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
      <span class="m-l-10 m-r-10"><a href="/univ/stu/classHome.do?subName=${subName }&&subNo=${subNo}">${subName }</a></span>
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
                <div class="col-lg-12 pb-2">
                  <div class="row bg-silver-100 py-3">
                    <div class="col-lg-12">
                      <div class="row pt-2 px-4 d-flex align-items-center">
                        <h4 class="font-weight-bold mr-3">제목 </h4>
                        <input type="text" name="sqTitle" style="width:90%; position:relative; bottom:3px;"class="form-control" value="${qnaList.sqTitle }">
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
                 
                    
                        <textarea
                          id="content"
                          name="sqContents"
                          class="form-control mt-3"
                          rows="16"
                        >${qnaList.sqContents }</textarea>
                      
                  
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
                              등록
                            </button>
                            <button
                              id="deleteBtn"
                              class="btn btn-outline-primary"
                            >
                              삭제
                            </button>
                          </div>
                        </div>

             
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script>
    	const sqTitle=document.querySelector("input[name='sqTitle']");
    	const initializationTitle=()=>{
    		sqTitle.value="";
    	}
    	sqTitle.addEventListener("click",initializationTitle);
    	const content = document.querySelector("#content");
    	const initializationTextArea=()=>{
    		content.value="";
    	}
    	content.addEventListener("click",initializationTextArea);
    	
    	const modifyBtn = document.querySelector("#modifyBtn");
    	const handleModify=()=>{
    		if(confirm("수정하시겠습니까?")){
    			const title=document.querySelector("input[name='sqTitle']").value;
    			const content=document.querySelector("textarea[name='sqContents']").value;
    			
    			$.ajax({
    				url:"/univ/stu/qnaUpdateAjax.do",
    				type:"post",
    				data:{sqTitle:title,sqContents:content,sqNo:${sqNo}}
    			})
    			.done(function(data){
    				if(data=="Y")
    					alert("수정되었습니다")
    					location.reload();
    					
    			})
    		}
    	}
    	modifyBtn.addEventListener("click",handleModify);
    
    </script>
