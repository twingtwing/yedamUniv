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
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">학사 </a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
                            <a class="dropdown-item" href="#">학사공지 </a>
                            <a class="dropdown-item" href="#">학사QnA </a>
                            <a class="dropdown-item" href="#">학사FAQ </a>
                            <a class="dropdown-item" href="haksa_plan.html">학사일정 </a>
                        </div>
                    </li>
                </ul>
                <div class="section-title row text-center">
                    <div class="col-md-8 offset-md-2">
                        <h3>학사 FAQ</h3>
                    </div>
                </div>

                <!-- collapse 테이블 만들기 -->
                <table class="table">
                    <tr>
                        <td data-toggle="collapse" data-target="#answer">
                            <!-- data-target이 faq 순번? -->
                            <i class="fas fa-question-circle" style="color: #eea412;"></i>&nbsp;&nbsp;휴학의 종류를 알려주세요.
                        </td>
                    </tr>
                    <tr>
                        <td id="answer" class="collapse">
                            <i class="fas fa-comment-alt" style="color: #eea412;"></i>&nbsp;&nbsp;일반휴학, 입대휴학, 질병휴학,
                            임신·출산·육아휴학, 창업휴학이 있습니다.
                        </td>
                    </tr>
                    <tr>
                        <td data-toggle="collapse" data-target="#answer2">
                            <i class="fas fa-question-circle" style="color: #eea412;"></i>&nbsp;&nbsp;휴학은 얼마나 할 수 있나요?
                        </td>
                    </tr>
                    <tr>
                        <td id="answer2" class="collapse">
                            <i class="fas fa-comment-alt" style="color: #eea412;"></i>&nbsp;&nbsp;공통사항: 1회 신청시 최대
                            2개학기(1년)까지 가능합니다.(입대휴학 제외)
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <!-- 끝 -->

</body>
</html>