<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="page-content fade-in-up main_bar">
            <div class="row">
                <div class="col-lg-12 m-t-8 p-b-10 p-t-10" style="border-bottom: 2px solid rgba(119, 119, 121, 0.11);">
                    <i class="fa fa-home fa-lg"></i><span class="m-l-10 m-r-10">메인</span> <i class="fa fa-chevron-right" ></i><span class="m-l-10 m-r-10"> 내가 쓴 글</span> 
                </div>
            </div>
     
            <div class="align-items-md-center mt-2">
                <div class="row">
                   <div class="col-lg-12 m-t-20">
                       <div class="ibox">
                           <div class="ibox-body d-flex justify-content-start" style="border:1px solid var(--navy); border-radius: 4px;"> 
                               <div>
                                  <img src="./images/스펀지밥.png" style="height: 80px;">
                                </div>
                                <div class="user_profile ml-4">
                                    <div>
                                        <strong>
                                            스펀지밥
                                         </strong>
                                    <div class="d-flex justify-content-start mt-2 mb-2">
                                        <div>
                                            데이터학과 
                                        </div>
                                        <div class="ml-2">
                                            3학년
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start align-items-center">
                                        <div class="mr-3">
                                            <!--총 게시글 수: 자유게시글 주소,
                                                총 댓글 수: 자유댓글 주소랑 같이
                                             -->
                                            <a href="myPost.html">총 게시글 수 : <span class="text-danger" style="font-weight: 600;">3</span></a>
                                        </div>
                                        <div class="mr-3"style="height: 13px;  border-right: 3px solid rgb(204, 201, 201)"></div>
                                        <div class="mr-3">
                                            <a href="#">총 댓글 수 : <span class="text-danger" style="font-weight: 600;">3</span></a>
                                        </div>
                                        <div class="mr-3"style="height: 13px;  border-right: 3px solid rgb(204, 201, 201)"></div>
                                        <div>
                                            <a href="#">총 신고 수 : <span class="text-danger" style="font-weight: 600;">3</span></a>
                                        </div>
                                    </div>
                                    </div>
                                    
                                </div>
                               
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>

           
            <div class="row mt-5">
                <div class="col-lg-12">
                    <h4 style="font-weight: 600;"><i class="fa fa-chevron-circle-right m-r-10 m-b-10" style="color:var(--blue)" ></i>게시글관리</h4>
                </div>
            </div>
           
            <div class="row ">
                <div class="col-lg-12 ">          
                    <div class="ibox" style="height: 100vh;">
                        <div class="ibox">
                           
                            <div class="ibox-body">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/univ/stu/myPost.do" >자유게시글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/univ/stu/myComment.do">자유댓글</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link active" href="/univ/stu/myQna.do" >묻고답하기</a>
                                       
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="row">
                                        <div class="col-lg-12">
                                          <div class="ibox"style="height:100vh">
                                            <div class="ibox-body">
                                                <div class="d-flex justify-content-between">
                                                <div>
                                                     <button type="button" class="btn btn-outline-warning">삭제</button>
                                                 </div>
                                                 <div class="row">
                                                    <div class="mr-2">
                                                      <select id="" name="" class="form-control">
                                                        <option value="?">제목</option>
                                                        <option value="?">교과목명</option>
                                                        
                                                      </select>
                                                    </div>
                                                    <div class="mr-2">
                                                      <input
                                                        id=""
                                                        name=""
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="내용을 입력해주세요"
                                                      />
                                                    </div>
                                                    <div class="mr-2">
                                                      <a id="search" class="btn btn-outline-default" data-id="2"
                                                        >검색</a
                                                      >
                                                    </div>
                                                  </div>
                                                </div>
                                                
                                              <table class="table list-table mt-4 text-center">
                                                <thead class="list-thead">
                                                  <tr>
                                                    <th class="text-center">선택</th>
                                                    <th class="text-center">번호</th>
                                                    <th class="text-center" width="10%">교과목명</th>
                                                    
                                                    <th class="text-center" width="50%">제목</th>
                                                    <th class="text-center">작성자</th>
                                                    <th class="text-center">작성일</th>
                                                    <th class="text-center">교수답변</th>
                                                  
                                                  </tr>
                                                </thead>
                                                <tbody class="list-tbody">
                                                  <!-- 10줄 -->
                                            
                                                  <tr id="2">
                                                    <td>
                                                        <label class="ui-checkbox ui-checkbox-primary">
                                                            <input type="checkbox"><span class="input-span"></span>
                                                        </label>
                                                    </td>
                                                    <td>2</td>
                                                    <td>리눅스</td>
                                                    <td>
                                                      첨부파일⭕
                                                      <i class="fa ti-file ml-1 text-warning"></i>
                                                    </td>
                                                    <td>스펀지밥</td>
                                                    <td>2022-01-17</td>
                                                    <td>답변준비중</td>
                                                    
                                                  </tr>
                                                  <tr id="1">
                                                    <td>
                                                        <label class="ui-checkbox ui-checkbox-primary">
                                                            <input type="checkbox"><span class="input-span"></span>
                                                        </label>
                                                    </td>
                                                    <td>1</td>
                                                    <td>스프링</td>
                                                    <td>첨부파일❌</td>
                                                    <td>스펀지밥</td>
                                                    <td>2022-01-17</td>
                                                    <td>답변완료</td>
                                                    
                                                  </tr>
                                                  
                                                </tbody>
                                              </table>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                </div><br></div>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="justify-content-center d-flex">
                <ul class="pagination">
                    <li class="page-item">
                        <a href="#" class="page-link" aria-label="Previous">
                            <span aria-hidden="true">
                                <span class="ti-angle-double-left"></span>
                            </span>
                        </a>
                    </li>
                    <li class="page-item"><a href="#" class="page-link">01</a></li>
                    <li class="page-item active"><a href="#" class="page-link">02</a>
                    </li>
                    <li class="page-item"><a href="#" class="page-link">03</a></li>
                    <li class="page-item"><a href="#" class="page-link">04</a></li>
                    <li class="page-item"><a href="#" class="page-link">09</a></li>
                    <li class="page-item">
                        <a href="#" class="page-link" aria-label="Next">
                            <span aria-hidden="true">
                                <span class="ti-angle-double-right"></span>
                            </span>
                        </a>
                    </li>
                </ul>
            </nav>
     
      
          
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