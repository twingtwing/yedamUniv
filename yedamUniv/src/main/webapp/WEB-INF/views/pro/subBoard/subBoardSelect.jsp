<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%> <%@taglib uri="http://java.sun.com/jsp/jstl/functions"
prefix="fn"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
  </head>
  <body>
    <style>
      .back_link {
        color: #4c5a7d;
      }
      .back_link:hover {
        text-decoration: underline;
      }
      .board-div > div {
        border-top: 1px solid #4c5a7d;
      }
      .board-div > div:nth-of-type(3) {
        height: 50vh;
      }
      .board-div > div:last-of-type {
        border-bottom: 1px solid #4c5a7d;
      }
      .board-ul li {
        list-style-type: none;
        float: left;
      }
    </style>
  </body>
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
        <a
          href="/univ/pro/mySubDetail.do?subNo=${subNo }&&subName=${subName}"
          alt="my subject"
          class="back_link"
          ><small class="font-weight-bold">${subName }</small></a
        >
        <i class="fa fa-angle-right mx-1"></i>
        <small class="font-weight-bold">공지사항</small>
      </div>
    </div>
    <hr class="mt-1" />
    <div class="col-lg-4">
      <div class="row mt-4 ml-1">
        <i class="ti-book text-warning" style="font-size: 30px"></i>
        <div class="ml-2 d-flex align-items-center">
          <a
            href="/univ/pro/mySubDetail.do?subNo=${subNo }&&subName=${subName}"
            alt="my subject"
            class="back_link"
          >
            <h4 class="mb-0 font-weight-bold">${subName } | ${subNo }</h4>
          </a>
        </div>
      </div>
    </div>
    <hr class="mt-2" />
    <div class="row">
      <div class="col-lg-12">
        <div class="ibox">
          <div class="ibox-body">
            <div class="mx-4 mt-3 pl-2">
              <div class="row">
                <i class="fa fa-clipboard" style="font-size: 25px"></i>
                <div class="ml-2 d-flex align-items-center">
                  <h4 class="mb-0 font-weight-bold">공지사항</h4>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-lg-12 board-div">
                  <div class="row bg-silver-100 pt-2 pb-1 pl-2">
                    <h6>제목 : ${board.bsTitle }</h6>
                  </div>
                  <div
                    class="row d-flex justify-content-between bg-silver-100 pt-2 pb-1 pl-2 pr-2"
                  >
                    <h6>글쓴이 : ${name }</h6>
                    <div class="row">
                      <h6 class="mr-3">
                        등록일 :
                        <c:out
                          value="${fn:substring(board.bsDate,0,10) }"
                        ></c:out>
                      </h6>
                      <h6 class="mr-4">조회 : ${board.boardHits }</h6>
                    </div>
                  </div>
                  <div class="row pt-3 pb-1 px-2">
                    <p>${board.bsContents }</p>
                  </div>
                  <!-- 첨부파일이 있을 경우에만 -->
                  <div class="row bg-silver-100 pt-2">
                    <ul class="board-ul mb-0 pl-0 text-muted">
                      <c:forEach var="file" items="${board.bsfile }">
                        <li>
                          <div class="row ml-4 pr-2">
                            <i class="ti-download"></i>
                            <div>
                              <h6>${file }</h6>
                            </div>
                          </div>
                        </li>
                      </c:forEach>
                    </ul>
                  </div>
                </div>
              </div>

              <div class="row d-flex justify-content-between mt-3">
                <button class="btn btn-default" style="width: 70px">
                  목록
                </button>
                <div>
                  <button
                    onclick="location.href='/univ/pro/subBoardUp.do?bsNo=${bsNo}&&subNo=${subNo }&&subName=${subName }'"
                    class="btn btn-default mr-2"
                    style="width: 70px"
                  >
                    수정
                  </button>
                  <button
                    class="btn btn-default"
                    onclick="deleteBoard()"
                    style="width: 70px"
                  >
                    삭제
                  </button>
                  <input type="hidden" id="hiddenBsNo" value="${bsNo}" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script type="text/javascript">
    const deleteBoard = () => {
      const bsNo = document.querySelector("#hiddenBsNo").value;
      if (confirm("삭제하시겠습니까?")) {
        $.ajax({
          url: "/univ/pro/deleteBoard.do",
          type: "post",
          data: { bsNo: bsNo },
          success: function (result) {
            if (result == "Y") {
              alert("삭제되었습니다.");
              location.href =
                "/univ/pro/mySubDetail.do?subNo=${subNo }&&subName=${subName}";
            }else{
            	alert("삭제를 실패했습니다. 관리자에게 문의 바랍니다.")
            }
          },
        });
      }
    };
  </script>
</html>
