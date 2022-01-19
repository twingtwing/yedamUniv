<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- font awesome-->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

<style>
    .container-fluid {
        padding-right: 70px;
        padding-left: 70px;
        margin-right: auto;
        margin-left: auto;
    }
</style>
</head>
<body>

<!-- 시작 -->
    <div id="overviews" class="section wb">
        <div class="container">
            <div class="container-fluid">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">장학 </a>
                            <div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
                                <a class="dropdown-item" href="#">장학공지 </a>
                                <a class="dropdown-item" href="#">장학안내 </a>
                                <a class="dropdown-item" href="#">장학FAQ </a>
                                <a class="dropdown-item" href="#">장학QnA </a>
                            </div>
                    </li>
                </ul>
                <div class="section-title row text-center">
                    <div class="col-md-8 offset-md-2">
                        <h3>장학 FAQ</h3>
                    </div>
                </div>

                <!-- collapse 테이블 만들기 -->
                <table class="table">
                    <tr>
                        <td data-toggle="collapse" data-target="#answer">
                            <!-- data-target이 faq 순번? -->
                            <i class="fas fa-question-circle" style="color: #eea412;"></i>&nbsp;&nbsp;국가근로장학사업이란 무엇인가요?
                        </td>
                    </tr>
                    <tr>
                        <td id="answer" class="collapse">
                            <i class="fas fa-comment-alt" style="color: #eea412;"></i>&nbsp;&nbsp;국가근로장학사업은 저소득층 대학생의 등록금과 생활비를 지원하여 안정적인 학업여건을 조성하고, 직업체험 기회를 제공하여 취업 역량을 제고하는 사업입니다.
                        </td>
                    </tr>
                    <tr>
                        <td data-toggle="collapse" data-target="#answer2">
                            <i class="fas fa-question-circle" style="color: #eea412;"></i>&nbsp;&nbsp;정부에서 실시하는 학자금 대출의 종류는?
                        </td>
                    </tr>
                    <tr>
                        <td id="answer2" class="collapse">
                            <i class="fas fa-comment-alt" style="color: #eea412;"></i>&nbsp;&nbsp;취업 후 상환(든든)학자금대출, 일반상환학자금대출, 농어촌출신대학생학자금 융자
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <!-- 끝 -->


</body>
</html>