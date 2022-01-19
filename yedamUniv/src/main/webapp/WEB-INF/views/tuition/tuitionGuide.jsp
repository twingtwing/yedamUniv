<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<!-- font awesome-->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

</head>
<body>

<!-- 시작 -->
    <div id="overviews" class="section wb">
        <div class="container">
            <ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">등록금 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
							<a class="dropdown-item" href="/univ/tuition/tuitionGuide.do">등록금 수납안내 </a>
							<a class="dropdown-item" href="/univ/tuition/tuitionPlan.do">등록금 수납일정 </a>
						</div>
				</li>
			</ul>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>등록금 수납안내</h3>
                </div>
            </div>
            <!-- 탭 메뉴 -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#first">등록금 납부안내</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#second">분할납부안내</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#third">학기초과자</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#fourth">계절학기</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#fifth">등록금반환</a>
                </li>
            </ul>
            <!-- 탭 내용 -->
            <div class="tab-content mx-5" style="margin-top: 40px; margin-bottom: 40px;">
                <!-- 등록금 납부 안내 -->
                <div class="tab-pane fade show active" id="first">
                    <h2>등록금 납부 안내</h2>
                    <p></p>
                    <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;납부기간</h3>
                    <p></p>
                    <ul>
                        <li style="list-style-type: square;">1학기: 2월 중순경</li>
                        <li style="list-style-type: square;">2학기: 8월 중순경</li>
                        <li style="list-style-type: none;"><i class="fas fa-exclamation"></i>&nbsp;&nbsp;상세일정은 공지사항 참조</li>
                    </ul>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;납부은행</h3>
                    <ul>
                        <li style="list-style-type: square;">대구은행, 농협 및 기업은행 전 영업점</li>
                    </ul>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;납부대상</h3>
                    <ul>
                        <li style="list-style-type: square;">재학생(분납대상자 포함)</li>
                        <li style="list-style-type: square;">해당학기 복학예정자 및 재입학예정자</li>
                        <li style="list-style-type: square;">학점등록대상자</li>
                    </ul>
                </div>
                <!-- 분할납부안내 -->
                <div class="tab-pane fade" id="second">
                    <h2>분할납부안내</h2>
                    <p></p>
                    <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;분할납부란?</h3>
                    <p></p>
                    <ul>
                        <li style="list-style-type: square;">재학생 중 경제적 어려움을 겪고 있는 당해학기 등록 대상자에게 2~4회로 등록금을 분할하여 납부할 수 있도록 하는 제도</li>
                    </ul>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;신청대상자</h3>
                    <ol>
                        <li style="list-style-type: none;">다음 학생을 제외한 모든 재학생은 분할납부 신청 가능</li>
                        <ul>
                            <li style="list-style-type: square;">신입생, 재입학생 및 편입학생의 첫 학기 해당자</li>
                            <li style="list-style-type: square;">계절학기 대상자</li>
                            <li style="list-style-type: square;">학자금 융자 대상자</li>
                            <li style="list-style-type: square;">졸업유예자</li>
                            <li style="list-style-type: square;">등록금 실 납부금액이 1,000,000원 이하인 자</li>
                            <li style="list-style-type: square;">종전 분할납부 기간에 미납한 자</li>
                       </ul>
                    </ol>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;신청기간</h3>
                    <ul>
                        <li style="list-style-type: square;">1학기: 2월 중순(등록금 납부기간 1주일 전)</li>
                        <li style="list-style-type: square;">2학기: 8월 중순(등록금 납부기간 1주일 전)</li>
                        <li style="list-style-type: none;"><i class="fas fa-exclamation"></i>&nbsp;&nbsp;상세일정은 공지사항 참조</li>
                    </ul>
                </div>
                <!-- 학기초과자 -->
                <div class="tab-pane fade" id="third">
                    <h2>학기초과자</h2>
                    <p></p>
                    <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;학기초과자</h3>
                    <p></p>
                    <ul>
                        <li style="list-style-type: square;">학점미달로 졸업탈락된 학생은 수강신청한 학점에 따라 등록금을 수납하여야 한다.</li>
                    </ul>

                    <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;대상자</h3>
                    <table class="table table-bordered">
                        <thead class="text-center font-weight-bold">
                            <tr style="background-color: #eea412;">
                                <td colspan="2">학부</td>
                                <td colspan="2">대학원</td>
                            </tr>
                            <tr style="background-color: #eea412;">
                                <td>수강학점</td>
                                <td>등록금</td>
                                <td>수강학점</td>
                                <td>등록금</td>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <tr>
                                <td>1 ~ 3 학점</td>
                                <td>등록금의 6 분의 1</td>
                                <td>1 ~ 3 학점</td>
                                <td>등록금의 2 분의 1</td>
                            </tr>
                            <tr>
                                <td>4 ~ 6 학점</td>
                                <td>등록금의 3 분의 1</td>
                                <td>4학점 이상</td>
                                <td>등록금 전액</td>
                            </tr>
                            <tr>
                                <td>7 ~ 9 학점</td>
                                <td>등록금의 2 분의 1</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>10학점 이상</td>
                                <td>등록금의 전액</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;유의사항</h3>
                    <ul>
                        <li>수강정정기간까지 최종 수강신청한 학점으로 등록금이 산정되며, 수강정정기간 이후 수강포기를 통한 학점변경은 등록금 정정 및 환불이 불가능 함.</li>
                    </ul>
                </div>
                <!-- 계절학기 -->
                <div class="tab-pane fade" id="fourth">
                    <h2>계절학기</h2>
                    <p></p>
                    <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;계절학기</h3>
                    <p></p>
                    <ul>
                        <li>계절학기는 복학, 재수강 등의 사유로 정규학기 이외의 수강이 필요한 재학생에게 수업기회를 부여하고, 
                            조기졸업 및 복수전공이수 학생의 편의를 제공코자 하계 방학이나 동계 방학중에 개설되는 수업을 말한다.</li>
                    </ul>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;수업료</h3>
                    <ul>
                        <li>1학점 당 79,000원 (최대 6학점)</li>
                    </ul>
                </div>
                <!-- 등록금반환 -->
                <div class="tab-pane fade" id="fifth">
                    <h2>등록금반환</h2>
                    <p></p>
                    <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;등록금반환</h3>
                    <p></p>
                    <p>대학등록금에 관한 규칙 제6조 제2항 및 예담공과대학교 학칙 제33조<br>
                        일단 납부한 등록금은 자퇴(퇴학), 미등록제적, 미복학제적 등으로 인하여 학업을 중단하는 경우 외에는 반환하지 아니한다. 반환하는 경우 그 사유가 발생한 일자를 기준으로 납부한 등록금을 반환한다.</p>
                        
                        <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;등록금 반환 기준일</h3>    
                        <table class="table table-bordered">
                            <thead class="text-center font-weight-bold">
                                <tr style="background-color: #eea412;">
                                    <td width="70%">반환사유 발생일</td>
                                    <td>반환금액</td>
                                </tr>
                            </thead>
                            <tbody class="text-center">
                                <tr>
                                    <td>해당학기 개시일(입학생의 경우에는 입학일)전일까지</td>
                                    <td>전액</td>
                                </tr>
                                <tr>
                                    <td>학기 개시일부터 30일까지</td>
                                    <td>등록금의 6분의 5 해당액</td>
                                </tr>
                                <tr>
                                    <td>학기 개시일에서 30일이 지난 날부터 60일까지</td>
                                    <td>등록금의 3분의 2 해당액</td>
                                </tr>
                                <tr>
                                    <td>학기 개시일에서 60일이 지난 날부터 90일까지</td>
                                    <td>등록금의 2분의 1 해당액</td>
                                </tr>
                                <tr>
                                    <td>학기 개시일에서 90일이 지난 날</td>
                                    <td>반환하지 아니함</td>
                                </tr>
                            </tbody>
                        </table>

                </div>
            </div>
        </div>
        <!-- 끝 -->
        
        <script type="text/javascript">
	        $(function () {
	            $('ul.nav-tabs a').click(function (e) {
	                e.preventDefault()
	                $(this).tab('show')
	            })
	        })
        </script>

</body>
</html>