<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
<div class="page-content fade-in-up">
  <div class="row">
    <div
      class="col-lg-12 m-t-8 p-b-10 p-t-10"
      style="border-bottom: 2px solid rgba(119, 119, 121, 0.11)"
    >
      <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span>
      <i class="fa fa-chevron-right"></i
      ><span class="m-l-10 m-r-10"> 수강목록</span>
      <i class="fa fa-chevron-right"></i>
      <span class="m-l-10 main_bar_span">(수업이름) 공지사항</span>
    </div>
  </div>
  <hr class="mt-1" />
  <div class="col-lg-4">
    <div class="row mt-4 ml-1">
      <i class="ti-book text-warning" style="font-size: 30px"></i>
      <div class="ml-2 d-flex align-items-center">
        <a href="#" alt="my subject" class="back_link">
          <h4 class="mb-0 font-weight-bold">강의이름 | 강의번호</h4>
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
                  <h6>제목 : 제목</h6>
                </div>
                <div
                  class="row d-flex justify-content-between bg-silver-100 pt-2 pb-1 pl-2 pr-2"
                >
                  <h6>글쓴이 : 글쓴이</h6>
                  <div class="row">
                    <h6 class="mr-3">등록일 : 등록일</h6>
                    <h6 class="mr-4">조회 : 조회</h6>
                  </div>
                </div>
                <div class="row pt-3 pb-1 px-2">
                  <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                    Tenetur a minima cupiditate ullam veniam officiis doloribus
                    possimus, nobis porro quam eligendi ipsam, vel nostrum
                    corrupti adipisci amet ea maiores neque. Lorem, ipsum dolor
                    sit amet consectetur adipisicing elit. Tenetur a minima
                    cupiditate ullam veniam officiis doloribus possimus, nobis
                    porro quam eligendi ipsam, vel nostrum corrupti adipisci
                    amet ea maiores neque. Lorem, ipsum dolor sit amet
                    consectetur adipisicing elit. Tenetur a minima cupiditate
                    ullam veniam officiis doloribus possimus, nobis porro quam
                    eligendi ipsam, vel nostrum corrupti adipisci amet ea
                    maiores neque.
                  </p>
                </div>
                <!-- 첨부파일이 있을 경우에만 -->
                <div class="row bg-silver-100 pt-2">
                  <ul class="board-ul mb-0 pl-0 text-muted">
                    <li>
                      <div class="row ml-4 pr-2">
                        <i class="ti-download"></i>
                        <div>
                          <h6>첨부파일1</h6>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="row ml-4 pr-2">
                        <i class="ti-download"></i>
                        <div>
                          <h6>첨부파일2</h6>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="row ml-4 pr-2">
                        <i class="ti-download"></i>
                        <div>
                          <h6>첨부파일3</h6>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="row d-flex justify-content-between mt-3">
              <button
                class="btn btn-default"
                style="width: 70px"
                onclick="history.back()"
              >
                목록
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
