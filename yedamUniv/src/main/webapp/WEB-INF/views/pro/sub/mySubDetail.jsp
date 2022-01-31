<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
prefix="fn"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <style>
      .back_link {
        color: #4c5a7d;
      }
      .back_link:hover {
        text-decoration: underline;
      }
      .subject-box {
        position: relative;
      }
      .subject-i-1 {
        position: absolute;
        font-size: 120px;
        top: 7px;
        right: 10px;
        color: #eea412;
      }
      .subject-i-2 {
        position: absolute;
        font-size: 120px;
        top: 10px;
        right: 30px;
        color: #eea412;
      }

      tr {
        cursor: pointer;
      }
    </style>
  </head>
  <body>
    <div class="page-content fade-in-up">
      <div class="row">
        <div class="col-lg-12">
          <i class="fa fa-home"></i>
          <a
            href="/univ/pro/pro.do"
            alt="my main"
            class="back_link font-weight-bold"
            >my main</a
          >
          <i class="fa fa-angle-right mx-1"></i>
          <a href="/univ/pro/mySub.do" alt="my room" class="back_link"
            ><small class="font-weight-bold">나의 강의실</small></a
          >
          <i class="fa fa-angle-right mx-1"></i>
          <small class="font-weight-bold">${subName }</small>
        </div>
      </div>
      <hr class="mt-1" />
      <div class="col-lg-4">
        <div class="row mt-4 ml-1">
          <i class="ti-book text-warning" style="font-size: 30px"></i>
          <div class="ml-4 d-flex align-items-center">
            <h4 class="mb-0 font-weight-bold">${subName }| ${subNo }</h4>
          </div>
        </div>
      </div>
      <hr class="mt-2 mb-4" />
      <div class="row mb-2">
        <div class="col-lg-12">
          <div class="ibox">
            <div class="ibox-body py-3">
              <div class="row col-lg-12">
                <i
                  class="fa fa-chevron-circle-right"
                  style="font-size: 22px"
                ></i>
                <a
                  href="/univ/pro/subPlan.do?subNo="
                  alt="수업계획서"
                  class="back_link ml-2"
                  ><h5 class="mb-0 mt-1 font-weight-bold">수업 계획서</h5></a
                >
                <div class="ml-2">
                  <h5 class="mb-0 font-weight-bold">|</h5>
                </div>
                <a
                  href="/univ/pro/RegGradeInsert.do?subNo="
                  alt="성적 등록"
                  class="back_link ml-2"
                  ><h5 class="mb-0 mt-1 font-weight-bold">성적 등록</h5></a
                >

                
               
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mb-2">
        <div class="col-lg-12">
          <div class="ibox subject-box">
            <div class="ibox-body py-3">
              <div class="row col-lg-12">
                <i
                  class="fa fa-chevron-circle-right"
                  style="font-size: 22px"
                ></i>
                <a
                  href="/univ/pro/subBoardList.do?subNo=${subNo }&&subName=${subName}"
                  alt="공지 사항"
                  class="back_link ml-2"
                  ><h5 class="mb-0 mt-1 font-weight-bold">공지 사항</h5></a
                >
              </div>
              <hr />
              <div class="col-lg-12 mt-4 px-4">
                <!-- 5~7개 -->
                <c:if test="${not empty postLists }">
                <table class="table table-hover">
                  <tbody>
                    <c:forEach var="postList" items="${postLists }">
                      <tr
                        onclick="location.href='/univ/pro/subBoardSelect.do?bsNo=${postList.bsNo }&&subName=${subName}&&subNo=${subNo}'"
                      >
                        <td width="30px">⦁</td>
                        <td width="85%">${postList.bsTitle }</td>
                        <td class="pl-2">
                          [
                          <c:out
                            value="${fn:substring(postList.bsDate,0,10) }"
                          ></c:out>
                          ]
                        </td>
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
                </c:if>
                <c:if test="${empty postLists }">
                	<table class="text-center" style="height:250px">
                		
                		
                			<td>조회된 공지사항이 없습니다</td>
                		
                		
                	</table>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="ibox subject-box">
            <div class="ibox-body py-3">
              <div class="row col-lg-12">
                <i
                  class="fa fa-chevron-circle-right"
                  style="font-size: 22px"
                ></i>
                <a
                  href="/univ/pro/subQnaList.do?subNo=${subNo }&&subName=${subName}"
                  alt="묻고 답하기"
                  class="back_link ml-2"
                  ><h5 class="mb-0 mt-1 font-weight-bold">묻고 답하기</h5></a
                >
              </div>
              <hr />
              <div class="col-lg-12 mt-4 px-4">
                <!-- 5~7개 -->
                <c:if test="${not empty qnaLists }">
                <table class="table table-hover">
                  <tbody>
                    <c:forEach var="qnaList" items="${qnaLists }">
                      <tr
                        onclick="location.href='/univ/pro/subQnaSelect.do?sqNo=${qnaList.sqNo }&&subNo=${subNo }&&subName=${subName }'"
                      >
                        <td width="30px">⦁</td>
                        <td width="50%">${qnaList.sqTitle }</td>
                        <td>${qnaList.stuName}</td>
                        <td>${qnaList.major}</td>
                        <td class="pl-2">
                          [
                          <c:out
                            value="${fn:substring(qnaList.sqDate,0,10) }"
                          ></c:out>
                          ]
                        </td>

                        <c:if test="${qnaList.sqState ne 'Y' }">
                          <td>답변대기</td>
                        </c:if>
                        <c:if test="${qnaList.sqState eq 'Y' }">
                          <td class="text-primary">답변완료</td>
                        </c:if>

                        <c:if test="${ not empty qnaList.saDate}">
                          <td>
                            <c:out
                              value="${fn:substring(qnaList.saDate,0,10) }"
                            ></c:out>
                          </td>
                        </c:if>
                        <c:if test="${ empty qnaList.saDate}">
                          <td>-</td>
                        </c:if>
                       
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
                </c:if>
                <c:if test="${empty qnaLists }">
                	<table class="text-center" style="height:250px">
                		
                		
                			<td>조회된 묻고답하기가 없습니다</td>
                		
                		
                	</table>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
