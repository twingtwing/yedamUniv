<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
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
      .list-thead tr {
        background-color: #4c5a7d;
        border-color: #4c5a7d;
        color: white;
      }

      .list-table tr {
        height: 65px;
      }

      .list-table tr > td,
      .list-table tr > th {
        vertical-align: middle;
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
          <small class="font-weight-bold">나의 강의실</small>
        </div>
      </div>
      <hr class="mt-1" />
      <div class="col-lg-12 d-flex justify-content-between">
        <div class="mx-4 mt-4 pl-3">
          <div class="row">
            <i class="fa fa-clipboard text-warning" style="font-size: 35px"></i>
            <div class="ml-2 d-flex align-items-center">
              <h3 class="mb-0 font-weight-bold">강의 목록</h3>
            </div>
          </div>
        </div>
      </div>
      <div class="align-items-md-center">
        <div class="row">
          <div class="col-lg-12 m-t-20">
            <div class="ibox">
              <div class="ibox-body" style="background-color: #c5d5eb">
                <div class="row d-flex align-items-center pl-5">
                  <div
                    class="text-center p-2 d-flex justify-content-start align-items-center"
                    style="font-weight: 600"
                  >
                    <div class="col-lg-5 pr-0">
                      <span
                        class="mr-1"
                        style="color: var(--blue); font-size: 20px"
                        >⦁</span
                      >학 기
                    </div>
                    <div class="col-lg-10 pl-0">
                      <select
                        name="subjectSemester"
                        class="form-control text-center"
                      >
                        <c:if test="${!empty subList  }">
                          <c:forEach var="subject" items="${subList }">
                            <option value="${subject.subjectSemester }">
                              ${subject.subjectSemester }
                            </option>
                          </c:forEach>
                        </c:if>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-12">
          <h4 style="font-weight: 600">
            <i
              class="fa fa-chevron-circle-right fa-lg mt-5 mb-3 m-r-10 m-b-10"
              style="color: var(--blue)"
            ></i>
            수강목록 (<span
              class="text-danger ml-1 mr-1"
              style="font-weight: 600"
              >${fn:length(subList) }</span
            >) 건
          </h4>
          <div class="ibox">
            <div class="ibox-body">
              <table class="table list-table mt-4 text-center">
                <thead class="list-thead">
                  <tr>
                    <th class="text-center" width="70">번호</th>
                    <th class="text-center">교과목명</th>
                    <th class="text-center">과목코드</th>
                    <th class="text-center">이수구분</th>
                    <th class="text-center">현원</th>
                    <th class="text-center">정원</th>
                    <th class="text-center">시간표 : 강의실</th>
                    <th class="text-center" width="140">강의평가</th>
                  </tr>
                </thead>
                <tbody class="list-tbody">
                  <c:if test="${!empty subList  }">
                    <c:forEach var="subject" items="${subList }">
                      <tr
                        id="subNo"
                        onclick="location.href='/univ/pro/mySubDetail.do?subNo=${subject.subjectNo}'"
                      >
                        <td>${subject.subjectNo }</td>
                        <td>${subject.subjectName }</td>
                        <td>${subject.subjectNum }</td>
                        <td>${subject.subjectDetail }</td>
                        <td>${subject.subjectCnt }</td>
                        <td>${subject.subjectTotal }</td>
                        <td>${subject.subjectRoom }</td>
                        <td></td>
                      </tr>
                    </c:forEach>
                  </c:if>
                  <!-- 
                                            <tr>
                                                강의가 없을 경우
                                                <td colspan="7" class="text-center font-weight-bold">강의가 없습니다.</td>
                                            </tr>
                                        -->
                </tbody>
              </table>
              <!-- 공간이 남아서 여기에 도움말 같은 거 추가 필요 -->
            </div>
          </div>
        </div>
      </div>
    </div>

    <script type="text/javascript">
      const select = document.querySelector("select[name=subjectSemester]");
      const selectSubjectSemester = ()=>{
    	
    	  /* const option = select.options[select.selectedIndex].value;
         	$.ajax({
              type:"get",
              url:"/univ/pro/mySubListAjax.do",
              data:{semester:option},
              
              dataType:'json',
              async:true,
              cache:false
          }) 
          .done(function(data){
        	  console.log(data)
          }) */
      }
      select.addEventListener("change", selectSubjectSemester);
    </script>
  </body>
</html>
