<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
      <span class="m-l-10 m-r-10">(강의명)</span>
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
                        <h4 class="font-weight-bold">제목</h4>
                      </div>
                      <div
                        class="row border d-flex justify-content-between align-items-end px-4 mt-2"
                      >
                        <!--  작성일자, 작성자, 답변상테 -->
                        <p class="mb-0">
                          <span class="mr-2">학과</span><span class="mr-2">학번</span class="mr-2"
                          ><span>이름</span>
                        </p>
                        <div class="row">
                          <p class="mb-0 mr-3">작성일자</p>
                          <p class="mb-0 mr-3" style="font-weight: 600; color: var(--navy);">답변상태</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="Q-contents row mt-2 p-4" style="height: 300px">
                    <p>교수님 a 내놔요</p>
                  </div>
                </div>
              </div>

              <div class="row mt-4 pb-2 bg-silver-100">
                <div class="col-lg-12">
                  <div class="row d-flex mt-3 mb-2 mx-2 pt-3">
                    <i class="ti-pin-alt mr-4 text-warning" style="font-size: 25px;"></i>
                      <h4 class="font-weight-bold">xx교수님의 답변</h4>
                      
                  </div>
                  <div class="d-flex justify-content-end">
                      <span class="mr-4" style="font-weight: 600;">작성일자</span> <span class="mr-5">2022-01-20 00:00</span>
                  </div>

                  <div class="Q-contents row  p-4" style="height: 300px">
                    <div class="col-lg-12">
                      <div class="ibox">
                        <div class="ibox-body" style="height: 300px; border-radius: 10px;"></div>
                      </div>
                    </div>
                  </div>
                  <div class="row mx-2 mt-5 mb-3 d-flex justify-content-between">
                    <button
                      onclick="history.back()"
                      class="btn btn-outline-default"
                    >
                      목록 가기
                    </button>
                    <button
                      
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
</div>
