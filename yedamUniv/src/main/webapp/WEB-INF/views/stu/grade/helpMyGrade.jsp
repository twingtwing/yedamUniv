<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div class="page-content fade-in-up main_bar">
  <div class="row">
    <div
      class="col-lg-12 m-t-8 p-b-10 p-t-10"
      style="border-bottom: 2px solid rgba(119, 119, 121, 0.11)"
    >
      <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span>
      <i class="fa fa-chevron-right"></i>
      <span class="m-l-10 m-r-10">성적확인</span>
      <i class="fa fa-chevron-right"></i>
      <span class="m-l-10">금학기성적조회</span>
    </div>
  </div>

  <div class="align-items-md-center mt-2">
    <div class="row">
      <div class="col-lg-12 m-t-20">
        <div class="ibox">
          <div class="ibox-body" style="background-color: #c5d5eb">
            <div class="row d-flex align-items-center pl-5">
              <div
                class="text-center p-2 d-flex justify-content-start align-items-center"
                style="font-weight: 600"
              >
                <div class="col-lg-2">
                  <span class="mr-1" style="color: var(--blue); font-size: 20px"
                    >⦁</span
                  >
                  학년도
                </div>
                <input
                  type="text"
                  class="form-control text-center mr-5"
                  value="2022"
                  disabled
                />
                <div class="col-lg-2">
                  <span class="mr-1" style="color: var(--blue); font-size: 20px"
                    >⦁</span
                  >학 기
                </div>
                <input
                  type="text"
                  class="form-control text-center"
                  value="2학기"
                  disabled
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="row mt-5">
    <div class="col-lg-12">
      <h4 style="font-weight: 600">
        <i
          class="fa fa-chevron-circle-right m-r-10 m-b-10"
          style="color: var(--blue)"
        ></i>
        학기별 성적 (<span
          class="text-danger ml-1 mr-1"
          style="font-weight: 600"
          >7</span
        >) 건
      </h4>
      <div class="ibox">
        <div class="ibox-body">
          <table class="table table-bordered mt-3 text-center list_table">
            <thead class="thead-default">
              <th class="text-center">순번</th>
              <th class="text-center" width="120">년도학기</th>
              <th class="text-center" width="120">과목코드</th>
              <th class="text-center" width="250">교과목명</th>
              <th class="text-center">담당교수</th>
              <th class="text-center">이수구분</th>
              <th class="text-center" width="100">학점</th>
              <th class="text-center" width="100">취득점수</th>
              <th class="text-center">등급</th>
              <th class="text-center">평점</th>
              <th class="text-center">상세내역</th>
            </thead>
            <tbdoy>
              <tr>
                <td>1</td>
                <td>2021/2</td>
                <td>05246</td>
                <td>보험과사회</td>
                <td>서강중</td>
                <td>교양필수</td>
                <td>3</td>
                <td>100</td>
                <td>A+</td>
                <td>4.5</td>
                <td class="d-flex justify-content-center">
                  <button
                    type="button"
                    class="btn btn-outline-warning btn-sm"
                    data-toggle="modal"
                    data-target="#helpProfessorForm"
                  >
                    신청하기
                  </button>
                </td>
              </tr>
              <tr>
                <td>2</td>
                <td>2021/2</td>
                <td>01555</td>
                <td>리눅스</td>
                <td>서강중</td>
                <td>전공</td>
                <td>2</td>
                <td>90</td>
                <td>A</td>
                <td>4.0</td>
                <td class="d-flex justify-content-center">
                  <button
                    type="button"
                    class="btn btn-outline-warning btn-sm"
                    data-toggle="modal"
                    data-target="#helpProfessorForm"
                  >
                    신청하기
                  </button>
                </td>
              </tr>
              <tr>
                <td colspan="11" style="height: 200px"></td>
              </tr>
            </tbdoy>
          </table>
        </div>
      </div>
    </div>
  </div>

  <!--이의신청 모달-->
  <div
    class="modal fade"
    id="helpProfessorForm"
    tabindex="-1"
    role="dialog"
    aria-labelledby="exampleModalLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">성적이의신청</h5>
          <button
            type="button"
            class="close"
            data-dismiss="modal"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group d-flex justify-content-start">
              <label for="recipient-name" class="col-form-label mr-3"
                >년도/학기</label
              >
              <input
                type="text"
                class="form-control"
                id="recipient-name"
                value="20221/1"
                style="width: 20%"
                disabled
              />
              <label for="recipient-name" class="col-form-label ml-5"
                >과목코드</label
              >
              <input
                type="text"
                class="form-control ml-4"
                id="recipient-name"
                value="2222"
                style="width: 20%"
                disabled
              />
            </div>
            <div class="form-group d-flex justify-content-start">
              <label for="recipient-name" class="col-form-label mr-4"
                >교과목명</label
              >
              <input
                type="text"
                class="form-control"
                id="recipient-name"
                value=""
                disabled
                style="width: 20%"
              />
              <label for="recipient-name" class="col-form-label ml-5"
                >학&nbsp&nbsp점</label
              >
              <input
                type="text"
                class="form-control ml-5"
                id="recipient-name"
                value=""
                disabled
                style="width: 20%"
              />
            </div>
            <div class="form-group d-flex justify-content-start">
              <label for="recipient-name" class="col-form-label mr-4"
                >담당교수</label
              >
              <input
                type="text"
                class="form-control"
                id="recipient-name"
                value=""
                disabled
                style="width: 20%"
              />
              <label for="recipient-name" class="col-form-label ml-5"
                >등&nbsp&nbsp급</label
              >
              <input
                type="text"
                class="form-control ml-5"
                id="recipient-name"
                value=""
                disabled
                style="width: 20%"
              />
            </div>
            <div class="form-group d-flex justify-content-start">
              <label for="recipient-name" class="col-form-label mr-5"
                >제목</label
              >
              <input
                type="text"
                class="form-control ml-1"
                id="recipient-name"
                value=""
                style="width: 80%"
              />
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label mr-5"
                >사&nbsp&nbsp유</label
              >
              <textarea
                class="form-control mt-2"
                id="message-text"
                rows="20"
              ></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary">이의신청</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">
            신청취소
          </button>
        </div>
      </div>
    </div>
  </div>

  <div class="row mt-5">
    <div class="col-lg-12">
      <h4 style="font-weight: 600">
        <i
          class="fa fa-chevron-circle-right m-r-10 m-b-10"
          style="color: var(--blue)"
        ></i>
        성적이의신청 내역 (<span
          class="text-danger ml-1 mr-1"
          style="font-weight: 600"
          >2</span
        >) 건
      </h4>
      <div class="ibox">
        <div class="ibox-body">
          <table class="table table-bordered mt-3 text-center list_table">
            <thead class="thead-default">
              <th class="text-center" width="80">순번</th>
              <th class="text-center" width="50%">제목</th>
              <th class="text-center">신청일시</th>
              <th class="text-center">수신일시</th>
              <th class="text-center">교수</th>
              <th class="text-center">답변여부</th>
            </thead>
            <tbdoy>
              <tr>
                <td>1</td>
                <td>A+ 내놔요</td>
                <td>2022-01-16</td>
                <td>2022-01-17</td>
                <td>서강중</td>
                <td class="d-flex justify-content-center">
                  <button
                    type="button"
                    class="btn btn-outline-primary btn-sm"
                    onclick="lookAnswer()"
                  >
                    답변보기
                  </button>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>A+ 내놔요</td>
                <td>2022-01-16</td>
                <td>2022-01-17</td>
                <td>서강중</td>
                <td class="">준비중</td>
              </tr>
              <tr>
                <td colspan="11" style="height: 200px"></td>
              </tr>
            </tbdoy>
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
  </style>
</div>
<script>
  function lookAnswer() {
    location.href = "/univ/stu/canIhelpYourGrade.do";
  }
</script>
