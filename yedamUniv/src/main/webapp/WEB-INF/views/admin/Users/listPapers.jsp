<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
</head>
<body>
<div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <span>멤버관리 </span>
                                <span class="ti-angle-right"></span>
                                <span> 휴학/복학/자퇴 신청 관리</span>
                                <h1 class="ti-clipboard"> 신청목록</h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <div id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li id="rest" class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#" role="tab">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">휴학</span>
                                            </a>
                                        </li>
                                        <li id="return" class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#" role="tab">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">복학</span>
                                            </a> 
                                        </li>
                                        <li id="drop" class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#" role="tab">
                                                <span class="hidden-sm-up">
                                                    <i class="ti-angle-down"></i>
                                                </span>
                                                <span class="hidden-xs-down">자퇴</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content tabcontent-border" id="restT">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <div class="p-20"><br>
                                                <select class="btn btn-warning dropdown-toggle" style="width: 120px;">
                                                    <option>학과선택</option>
                                                    <option>1강의학</option>
                                                    <option>2강의학</option>
                                                    <option>3강의학</option>
                                                    <option>4강의학</option>
                                                    <option>5강의학</option>
                                                </select>
                                                <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 50px;">
                                                    <select class="btn btn-default dropdown-toggle" style="width: 100px;">
                                                        <option>학번</option>
                                                        <option>이름</option>
                                                        <option>학년</option>
                                                        <option>상태</option>
                                                    </select>
                                                    <input type="text" class="form-control" placeholder="Search">
                                                    <button class="ti-search btn btn-default btn-flat" id=""></button>
                                                </div><br><br><br><br>
                                                <table id="noticeListT" class="display table table-borderd table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>학번</th>
                                                            <th>이름</th>
                                                            <th>학년</th>
                                                            <th>학과</th>
                                                            <th>복학예정</th>
                                                            <th>사유</th>
                                                            <th>세부구분</th>
                                                            <th>신청일자</th>
                                                            <th>상태</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>군입대</td>
                                                            <td>군휴학</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td> 
                                                        </tr>
                                                        <!--승인대기 > 교수승인 > 최종승인(관리자) -->
                                                        <!--관리자에서는 승인대기,교수승인 상태 확인가능-->
                                                        <!--단, 승인대기 상태에서는 관리자가 승인처리 못함-->
                                                        <!--상태가 교수승인일때야 비로소 관리자가 승인처리 가능-->
                                                        <!--그래서 교수승인일때는 font-weight : bold처리해주면 좋을듯-->
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-질병</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-취업준비</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-어학연수</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-경제사정</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-기타</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>군입대</td>
                                                            <td>군휴학</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-질병</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-취업준비</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-어학연수</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-경제사정</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>개인사유-기타</td>
                                                            <td>일반</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                    </tbody>
                                                </table><br><br>
                                                <ul class="pagination">
                                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- <div class="tab-pane  p-20" id="profile" role="tabpanel">2</div>
                                        <div class="tab-pane p-20" id="messages" role="tabpanel">3</div> -->
                                    </div>
                                    <div class="tab-content tabcontent-border" id="returnT" style="display:none">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <div class="p-20"><br>
                                                <select class="btn btn-warning dropdown-toggle" style="width: 120px;">
                                                    <option>학과선택</option>
                                                    <option>1강의학</option>
                                                    <option>2강의학</option>
                                                    <option>3강의학</option>
                                                    <option>4강의학</option>
                                                    <option>5강의학</option>
                                                </select>
                                                <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 50px;">
                                                    <select class="btn btn-default dropdown-toggle" style="width: 100px;">
                                                        <option>학번</option>
                                                        <option>이름</option>
                                                        <option>학년</option>
                                                    </select>
                                                    <input type="text" class="form-control" placeholder="Search">
                                                    <button class="ti-search btn btn-default btn-flat" id=""></button>
                                                </div><br><br><br><br>
                                                <table id="noticeListT" class="display table table-borderd table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>학번</th>
                                                            <th>이름</th>
                                                            <th>학년</th>
                                                            <th>학과</th>
                                                            <th>복학예정</th>
                                                            <th>휴학신청일자</th>
                                                            <th>복학신청일자</th>
                                                            <th>상태</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>2023-1학기</td>
                                                            <td>2019.10.19</td>
                                                            <td>2020.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                    </tbody>
                                                </table><br><br>
                                                <ul class="pagination">
                                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- <div class="tab-pane  p-20" id="profile" role="tabpanel">2</div>
                                        <div class="tab-pane p-20" id="messages" role="tabpanel">3</div> -->
                                    </div>
                                    <div class="tab-content tabcontent-border" id="dropT" style="display:none">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <div class="p-20"><br>
                                                <select class="btn btn-warning dropdown-toggle" style="width: 120px;">
                                                    <option>학과선택</option>
                                                    <option>1강의학</option>
                                                    <option>2강의학</option>
                                                    <option>3강의학</option>
                                                    <option>4강의학</option>
                                                    <option>5강의학</option>
                                                </select>
                                                <div class="input-group" style="width: 40%; position: absolute; right: 0; margin-right: 50px;">
                                                    <select class="btn btn-default dropdown-toggle" style="width: 100px;">
                                                        <option>학번</option>
                                                        <option>이름</option>
                                                        <option>학년</option>
                                                        <option>상태</option>
                                                    </select>
                                                    <input type="text" class="form-control" placeholder="Search">
                                                    <button class="ti-search btn btn-default btn-flat" id=""></button>
                                                </div><br><br><br><br>
                                                <table id="noticeListT" class="display table table-borderd table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>학번</th>
                                                            <th>이름</th>
                                                            <th>학년</th>
                                                            <th>학과</th>
                                                            <th>사유</th>
                                                            <th>신청일자</th>
                                                            <th>상태</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>경제사정</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                            <!--승인대기 > 교수승인 > 최종승인(관리자) -->
                                                            <!--관리자에서는 승인대기,교수승인 상태 확인가능-->
                                                            <!--단, 승인대기 상태에서는 관리자가 승인처리 못함-->
                                                            <!--상태가 교수승인일때야 비로소 관리자가 승인처리 가능-->
                                                            <!--그래서 교수승인일때는 font-weight : bold처리해주면 좋을듯-->
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>취업</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>유학</td>
                                                            <td>2019.10.19</td>
                                                            <td style="font-weight: bold;">교수승인</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>타대학편입</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>경제사정</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>21610011</td>
                                                            <td>김은지</td>
                                                            <td>3</td>
                                                            <td>2강의학</td>
                                                            <td>개인사정</td>
                                                            <td>2019.10.19</td>
                                                            <td>승인대기</td>
                                                        </tr>
                                                    </tbody>
                                                </table><br><br>
                                                <ul class="pagination">
                                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- <div class="tab-pane  p-20" id="profile" role="tabpanel">2</div>
                                        <div class="tab-pane p-20" id="messages" role="tabpanel">3</div> -->
                                    </div>
                            </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </div>
            </div>
        </div>
    </div>
    
    <script>
        document.querySelector("#rest").onclick = function(){
            document.querySelector("#restT").style.display = "block";
            document.querySelector("#returnT").style.display = "none";
            document.querySelector("#dropT").style.display = "none";
        }
        document.querySelector("#return").onclick = function(){
            document.querySelector("#restT").style.display = "none";
            document.querySelector("#returnT").style.display = "block";
            document.querySelector("#dropT").style.display = "none";
        }
        document.querySelector("#drop").onclick = function(){
            document.querySelector("#restT").style.display = "none";
            document.querySelector("#returnT").style.display = "none";
            document.querySelector("#dropT").style.display = "block";
        }
    </script>
    
    <!-- jquery vendor -->
    <script src="assets/js/lib/jquery.min.js"></script>
    <script src="assets/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="assets/js/lib/menubar/sidebar.js"></script>
    <script src="assets/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    
    <!-- bootstrap -->



    <!-- JS Grid Scripts Start-->
    <script src="assets/js/lib/jsgrid/db.js"></script>
    <script src="assets/js/lib/jsgrid/jsgrid.core.js"></script>
    <script src="assets/js/lib/jsgrid/jsgrid.load-indicator.js"></script>
    <script src="assets/js/lib/jsgrid/jsgrid.load-strategies.js"></script>
    <script src="assets/js/lib/jsgrid/jsgrid.sort-strategies.js"></script>
    <script src="assets/js/lib/jsgrid/jsgrid.field.js"></script>
    <script src="assets/js/lib/jsgrid/fields/jsgrid.field.text.js"></script>
    <script src="assets/js/lib/jsgrid/fields/jsgrid.field.number.js"></script>
    <script src="assets/js/lib/jsgrid/fields/jsgrid.field.select.js"></script>
    <script src="assets/js/lib/jsgrid/fields/jsgrid.field.checkbox.js"></script>
    <script src="assets/js/lib/jsgrid/fields/jsgrid.field.control.js"></script>
    <script src="assets/js/lib/jsgrid/jsgrid-init.js"></script>
    <!-- JS Grid Scripts End-->

    <script src="assets/js/lib/bootstrap.min.js"></script><script src="assets/js/scripts.js"></script>
    <!-- scripit init-->
</body>
</html>