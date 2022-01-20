<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .container-fluid {
        padding-right: 100px;
        padding-left: 100px;
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
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown-a"
						data-toggle="dropdown">학사 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a"
							style="width: 10vw;">
							<a class="dropdown-item" href="/univ/board/haksaBoardList.do">학사공지 </a> 
							<a class="dropdown-item" href="/univ/qna/haksaQna.do">학사QnA </a> 
							<a class="dropdown-item" href="/univ/faq/haksaFaq.do">학사FAQ </a>
							<a class="dropdown-item" href="/univ/schedule/schedule.do">학사일정 </a>
						</div></li>
				</ul>
                <div class="section-title row text-center">
                    <div class="col-md-8 offset-md-2">
                        <h3>학사일정</h3>
                    </div>
                </div>
                <!-- end title -->

                <!-- contents -->

                <div id='calendar'></div>

            </div>
        </div>
    </div>
    
    <!-- fullcalendar CDN -->
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
    
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth'
            });
            calendar.render();
        });
    </script>

</body>
</html>