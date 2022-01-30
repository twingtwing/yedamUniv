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
      .Q-contents {
        height: 50vh;
      }
      .A-contents {
        height: 20vh;
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
          <a
            href="/univ/pro/mySubDetail.do?subNo=${subNo }&&subName=${subName}"
            alt="my subject"
            class="back_link"
            ><small class="font-weight-bold">${subName }</small></a
          >
          <i class="fa fa-angle-right mx-1"></i>
          <small class="font-weight-bold">묻고 답하기</small>
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
      <hr class="mt-2 mb-2" />
      <div class="row pt-2">
        <div class="col-lg-12">
          <div class="ibox">
            <div class="ibox-body">
              <div class="col-lg-12">
                <div class="m-2">
                  <div class="row mt-3">
                    <i class="fa fa-question-circle fa-2x"></i>
                    <div class="d-flex align-items-end ml-3">
                      <h4 class="mb-0 font-weight-bold">묻고 답하기</h4>
                    </div>
                  </div>
                  <div class="row mt-4 border">
                    <div class="col-lg-12">
                      <div class="row bg-silver-100 py-3">
                        <div class="col-lg-12">
                          <div class="row pt-2 px-4">
                            <h4 class="font-weight-bold">
                              ${qnaList.sqTitle }
                            </h4>
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
                      <div class="Q-contents row mt-2 p-4">
                        <p>${qnaList.sqContents }</p>
                      </div>
                    </div>
                  </div>
                  <c:if test="${qnaList.sqState ne 'Y' }">
                    <div class="row mt-4 pb-2 bg-silver-100">
                      <div class="col-lg-12">
                        <div class="row d-flex mt-3 mb-2 mx-2 pt-3">
                          <i
                            class="ti-pin-alt mr-4 text-warning"
                            style="font-size: 25px"
                          ></i>
                          <h4 class="font-weight-bold">
                            ${qnaList.proId }교수님의 답변
                          </h4>
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
                                ></textarea>
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
                              id="aBtn"
                              class="btn btn-outline-primary mr-3"
                            >
                              등록
                            </button>
                          </div>
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
      const id = "${id}";
      const sqNo = "${sqNo}";
      const subNo = "${subNo}";
      $("#aBtn").on("click", function () {
        if ($("#aContents").val() === "") {
          alert("답변 내용을 입력해주세요.");
          aContents.focus();
        } else {
          const contentValue = textArea.value;
          $.ajax({
            url: "/univ/pro/qnaAnswerInsert.do",
            type: "post",
            data: {
              saContents: contentValue,
              proId: id,
              sqNo: sqNo,
              subNo: subNo,
            },
          })
            .done(function (data) {
              if (data == "Y") {
                alert("답변이 등록되었습니다");
                location.reload();
              } else {
                alert("에러");
              }
            })
            .fail(function (data) {
              alert("관리자에게 문의해주세요.");
            });
        }
      });

      //수정
      const modifyBtn = document.querySelector("#modifyBtn");
      const deleteBtn = document.querySelector("#deleteBtn");
      const textArea = document.querySelector("#aContents");
      const buttons = document.querySelector("#buttons");
      const handleModify = () => {
        textArea.disabled = false;
        textArea.value="";
        modifyBtn.style.display = "none";
        deleteBtn.style.display = "none";

        //버튼 만들기
        const confirmBtn = document.createElement("button");
        confirmBtn.className = "btn btn-outline-warning mr-3";
        confirmBtn.innerText = "확인";
        buttons.append(confirmBtn);

        const cancel = document.createElement("button");
        cancel.className = "btn btn-outline-primary";
        cancel.innerText = "취소";
        buttons.append(cancel);

        const handleUpdate = () => {
          if (confirm("수정하시겠습니까?")) {
            const contentValue = textArea.value;
            $.ajax({
              url: "/univ/pro/qnaAnswerUpdate.do",
              type: "post",
              data: { saContents: contentValue, proId: id, sqNo: sqNo },
            })
              .done(function (result) {
                if (result == "Y") {
                  alert("수정되었습니다.");
                  location.reload();
                } else {
                  alert("에러.");
                }
              })
              .fail(function (error) {
                alert("관리자에게 문의하세요");
              });
          }
        };
        confirmBtn.addEventListener("click", handleUpdate);

        const goToTheBack = () => {
          location.reload();
        };
        cancel.addEventListener("click", goToTheBack);
      };
      modifyBtn.addEventListener("click", handleModify);

      //삭제

      const handleDelete = () => {
        if (confirm("답변을 삭제하시겠습니까?")) {
          $.ajax({
            url: "/univ/pro/qnaAnswerDelete.do",
            type: "post",
            data: {
              sqNo: sqNo,
              subNo: subNo,
            },
          })
            .done(function (data) {
              if (data == "Y") {
                alert("답변이 삭제되었습니다");
                location.reload();
              } else {
                alert("에러");
              }
            })
            .fail(function (data) {
              alert("관리자에게 문의해주세요.");
            });
        }
      };
      deleteBtn.addEventListener("click", handleDelete);
    </script>
  </body>
</html>
