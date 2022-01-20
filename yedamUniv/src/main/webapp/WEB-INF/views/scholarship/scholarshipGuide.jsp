<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

<!-- 시작 -->
    <div id="overviews" class="section wb">
        <div class="container">
            <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">장학 </a>
                            <div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
                                <a class="dropdown-item" href="/univ/board/scholarshipBoardList.do">장학공지 </a>
                                <a class="dropdown-item" href="/univ/scholarship/scholarshipGuide.do">장학안내 </a>
                                <a class="dropdown-item" href="/univ/faq/scholarshipFaq.do">장학FAQ </a>
                                <a class="dropdown-item" href="/univ/qna/scholarshipQna.do">장학QnA </a>
                            </div>
                    </li>
               </ul>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>장학제도</h3>
                </div>
            </div>
            <!-- 탭 메뉴 -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#first">장학주요안내</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#second">재학생장학금</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#third">국가장학금</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#fourth">근로장학금</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#fifth">학자금대출</a>
                </li>
              </ul>
              <!-- 탭 내용 -->
              <div class="tab-content mx-5" style="margin-top: 40px; margin-bottom: 40px;">
                <!-- 장학주요안내 -->
                <div class="tab-pane fade show active" id="first">
                  <h2>장학 주요 안내</h2>
                  <p></p>
                  <h3><i class="fa fa-quote-left" style="color: #eea412;"></i>&nbsp;&nbsp;다음 학기 미등록 휴학 시, 장학금 소멸</h3>
                  <p></p>
                  <ul>
                      <li>등록금고지서 감면 : 정규 등록금 납부기간 전에 장학생으로 선발되는 학생 대상</li>
                      <li>학자금대출상환 : 정규 등록금 납부기간 이후, 장학생으로 선발되는 학생이 해당학기 한국장학재단 학자금대출을 사용한 경우에 
                          학생에게 직접 지급하지 않고 한국장학재단의 대출을 대신 상환하여 지급 처리(단, 생활비성격의 장학금은 제외)</li>
                      <li>계좌이체 : 정규 등록금 납부기간 이후, 장학생으로 선발되는 학생에게 본인 명의의 계좌로 지급</li>
                  </ul>
                  
                  <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;장학금 지급방법</h3>
                  <ul>
                      <li>예시 : 학과성적우수, 저소득층 및 간부장학금 등</li>
                  </ul>

                  <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;장학금대상자 선정시 성적 및 취득학점 기준</h3>
                  <ul>
                      <li>직전학기 성적을 적용하여 장학생 선발(단, 간부장학금 마지막 학기는 해당학기 기준)</li>
                      <li>최저 취득학점 기준 : 12학점(졸업학년의 경우 9학점)</li>
                  </ul>

                  <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>
                    &nbsp;&nbsp;규정에 명시된 사항 외에 아래에 해당하는 자는 장학금 지급 대상에서 제외</h3>
                  <ul>
                      <li>재학생이 아닌 자(휴학생, 학기초과자, 졸업유예자, 졸업자, 자퇴자 등의 학적변동자)</li>
                      <li>성적 및 취득학점이 기준보다 미달인 자</li>
                      <li>입학성적우수 장학생 중 전과를 한 학생(수능성적우수자 제외) 등</li>
                  </ul>

                  <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;
                    자퇴 또는 타교로 전학한자는 장학금 전액 반환</h3>
                  <ul>
                    <li>『장학금지급규정』 제6조(장학금의 반환) 관련 장학금을 받은 후 자퇴 또는 타교로 전학한 자는 
                          해당학기(1학기:3월초-8월말, 2학기:9월초-2월말)에 지급받은 장학금 전액을 반환해야 함</li>
                    <li>수업종료일(해당학기 성적 취득)과 관계없이 위 해당학기를 이수하지 않고 
                          자퇴 및 휴학 후 복학하여 자퇴를 하는 경우 반환금 발생</li>
                    <li>신입우수 장려금(월 생활보조비 등) 및 해외교류, 하와이가천글로벌센터, 학석사통합과정 장학금 등과 같이 자퇴 시, 
                        향후 전액 환수 조건을 전제로 지급하는 장학금의 경우에는 반드시 기지급액 전액 반환</li>
                  </ul>
                </div>
                <!-- 재학생장학금 -->
                <div class="tab-pane fade" id="second">
                    <h2>재학생장학금</h2>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;목적</h3>
                    <p>우리 대학교 학생들의 면학을 권장하고 유능한 인재를 육성하며, 경제적으로 곤란한 학생들에게 
                        학자금을 지원함으로써 장차 국가와 사회발전에 이바지할 수 있는 인재를 양성하기 위해 장학제도를 운영한다.</p>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;장학금의 종류</h3>
                    <table class="table table-bordered">
                        <thead class="text-center font-weight-bold">
                            <tr style="background-color: #eea412;">
                                <td width=30%>종류</td>
                                <td>내용</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center">명예 장학</td>
                                <td>장학금 수혜를 양보한 학생에게 별도의 혜택을 부여</td>
                            </tr>
                            <tr>
                                <td class="text-center">성적우수 장학금</td>
                                <td>성적장학생 선발지침과 배정된 장학금 예산 범위 내에서 
                                    각 단과대학장 주관 하에 해당학과에서 장학종류별로 장학생을 선발하여 지급하는 장학금</td>
                            </tr>
                            <tr>
                                <td class="text-center">특별 장학금</td>
                                <td>장학종류별로 정한 조건 또는 자격기준에 해당하는 자 중에서 
                                    본인의 신청 또는 관련 부서의 추천 등에 의해 선발된 자에게 지급하는 장학금</td>
                            </tr>
                            <tr>
                                <td class="text-center">교외 장학금</td>
                                <td>장학금을 출연하는 장학재단 또는 사회단체, 기업, 개인 등이 따로 정하는 바에 따라 선발하여 지급하는 장학금</td>
                            </tr>
                            <tr>
                                <td class="text-center">국가장학금</td>
                                <td>대학생의 등록금 부담 경감을 위해 정부가지원하는 장학금(소득분위에 따라 차등지급하는 
                                    국가장학금1유형과 대학의 자체노력과 연계하여 지급하는 국가장학금 2유형이 있음)</td>
                            </tr>
                        </tbody>
                    </table>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;장학금의 배정</h3>
                        <p>장학금의 배정은 각 단과대학별 납입등록금 추정액과 고정 장학 및 특별장학생 수를 고려하여 배정한다.<br>
                        교외장학생의 인원배정은 특별한 경우를 제외하고는 대학별 재학생 수에 비례하여 배정함을 원칙으로 한다.</p>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;선발방법</h3>
                    <table class="table table-bordered">
                        <thead class="text-center font-weight-bold">
                            <tr style="background-color: #eea412;">
                                <td width=30%>종류</td>
                                <td>내용</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center">성적우수 장학생</td>
                                <td>성적장학생 선발지침과 배정된 장학금예산 범위 내에서 각 단과대학장 주관하에 해당학과에서 
                                    장학종류별로 선발</td>
                            </tr>
                            <tr>
                                <td class="text-center">특별 장학생</td>
                                <td>장학종류별로 정한 조건 또는 자격기준에 해당하는 자 중에서 본인의 신청 또는 관련 부서의 추천에 의해 선발</td>
                            </tr>
                            <tr>
                                <td class="text-center">교외 장학생</td>
                                <td>장학금을 출연하는 장학재단 또는 사회단체, 기업, 개인 등이 정하는 바에 따라 선발</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 국가장학금 -->
                <div class="tab-pane fade" id="third">
                    <h2>국가장학금(1유형, 2유형)</h2>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;신청기간</h3>
                    <ul>
                        <li style="list-style-type: square;">1학기: 1차 신청(11월 중순 ~ 12월 중순), 2차 신청(2월 중순 ~ 3월 초) - 한국장학재단 홈페이지를 통해 신청</li>
                        <li style="list-style-type: square;">2학기: 1차 신청(5월 중순 ~ 6월 중순), 2차 신청(8월 중순 ~ 9월 초) - 한국장학재단 홈페이지를 통해 신청</li>
                    </ul>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;지원자격</h3>
                    <ol>
                        <li style="list-style-type: square;">국가장학금(1유형)</li>
                            <ul>
                                <li style="list-style-type: none;">- 대한민국 국적을 소지한 국내대학에 재학 중인 학자금 지원 8구간 이하 대학생</li>
                                <li style="list-style-type: none;">- 재학생: 직전학기 12학점 이상 이수자로 평균평점 2.51(F포함)/4.5만점 이상</li>
                                <li style="list-style-type: none;">- 신입생, 편입생, 재입학생: 첫 학기에 한하여 성적 및 이수학점 기준 미적용
                                </li>
                            </ul>
                        <p></p>
                        <li style="list-style-type: square;">국가장학금(2유형)</li>
                            <ul>
                                <li style="list-style-type: none;"> - 국가장학금(1유형) 수혜자 중 소득분위 5분위 이하 정규학기 등록자</li>
                            </ul>
                    </ol>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;국가장학금 제외대상</h3>
                    <ul>
                        <li style="list-style-type: square;">외국국적으로 국내대학에 재학 중인 대학생</li>
                        <li style="list-style-type: square;">대한민국 국적으로 외국대학에 재학 중인 대학생</li>
                        <li style="list-style-type: square;">대학원생 또는 휴학, 자퇴 등 학업활동 중단자(현재 군복무자 포함)</li>
                        <li style="list-style-type: square;">기등록자(기존 국가장학금 수혜자가 등록금 납부 후 휴학하여, 당해학기 복학 예정인 자)는 국가장학금 지원 불가</li>
                        <li style="list-style-type: square;">국가유공자, 보훈대상자, 탈북대학생 등 등록금 전액을 지원 받는 면제대상자는 국가장학금으로 대체 불가</li>
                        <li style="list-style-type: square;">교내 및 교외장학금 수혜로 지급금액이 1만원 미만인 대학생(단, 2유형은 지급금액이 10만원 미만인 경우 지급대상에서 제외)</li>
                    </ul>
                </div>
                <!-- 근로장학금 -->
                <div class="tab-pane fade" id="fourth">
                    <h2>근로장학금</h2>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;신청자격</h3>
                    <ul>
                        <li style="list-style-type: square;">대한민국 국적자 중 대학교에 재학 중인(복학생 포함) 가계곤란 학생</li>
                        <li style="list-style-type: square;">성적기준: 직전학기 성적이 1.51이상(F포함)/4.5만점</li>
                        <li style="list-style-type: square;">소득요건: 학자금지원구간(구, 소득분위) 8구간 이하(기초생활수급자 및 차상위 포함)</li>
                    </ul>

                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;신청기간</h3>
                    <p>별도 공지(장학공지)</p>

                    
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;신청방법</h3>
                        <li style="list-style-type: square;">한국장학재단 홈페이지(<a href="https://www.kosaf.go.kr/ko/main.do">www.kosaf.go.kr</a>)에서 신청</li>
                </div>  
                <!-- 학자금대출 -->
                <div class="tab-pane fade" id="fifth">
                    <h2>학자금대출</h2>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;목적</h3>
                    <p>경제적 여건에 관계없이 누구나 의지와 능력에 따라 고등교육의 기회를 가질 수 있도록 학자금 대출을 지원하여 
                        재단의 설립목적 및 정부 국정과제 달성</p>
                    
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;사업개요</h3>
                    <ul>
                        <li style="list-style-type: square;">대출 대상 : 국내 고등교육기관에 재학 및 입학ㆍ복학 예정인 대한민국 국민</li>
                        <li style="list-style-type: square;">대출 범위 : 등록금대출과 생활비대출로 구성</li>
                        <li style="list-style-type: square;">학자금대출 상품 및 한도</li>
                    </ul>
                    <table class="table table-bordered">
                        <thead class="text-center font-weight-bold">
                            <tr style="background-color: #eea412;">
                                <th>대출상품</th>
                                <th>상품특징</th>
                                <th>소득기준</th>
                                <th>성적기준</th>
                                <th>신용기준</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>취업 후 상환 학자금 대출(이하 "든든 학자금")</td>
                                <td>취업 등 소득이 발생한 시점부터 소득수준에 따라 원리금 상환</td>
                                <td>학자금지원구간 1~5구간<br> *다자녀가구 (3자녀 이상)제외</td>
                                <td rowspan="2">- 직전학기 12학점 이상 이수<br>
                                    - 직전학기 성적 70/100점 이상<br>
                                    * 신입생군 성적ㆍ학점 기준 X<br>
                                    * 장애인ㆍ졸업학년 학점기준 X</td>
                                <td>제한없음</td>
                            </tr>
                            <tr>
                                <td>일반상환 학자금 대출
                                    (이하 "일반 학자금")</td>
                                <td>대출기간(거치기간 및 상환기간)동안 원리금을 분할하여 상환</td>
                                <td>학자금지원구간 0~10구간(전체)</td>
                                <td>기존 학자금 대출 연체자 또는 신용도 판단 정보 보유자 X</td>
                            </tr>
                        </tbody>
                    </table>
                    <h3><i class="fa fa-quote-left py-3" style="color: #eea412;"></i>&nbsp;&nbsp;대출신청</h3>
                        <li style="list-style-type: square;">한국장학재단 홈페이지
                            (<a href="https://www.kosaf.go.kr/ko/main.do">www.kosaf.go.kr</a>)에서 본인이 학자금대출 신청</li>
                </div>
        </div>
    </div>
    <!-- 끝 -->
    
    <script>
	    $(function(){
	        $('ul.nav-tabs a').click(function (e) {
	        e.preventDefault()
	        $(this).tab('show')
	        })
	    })
    </script>

</body>
</html>