<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="all-title-box">
		<div class="container text-center">
			<h1>캠퍼스안내</h1>
		</div>
	</div> 

    <div id="overviews" class="section lb">
        <div class="container">
            <ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">대학소개 </a>
						<div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
							<a class="dropdown-item" href="intro.html">인사말 </a>
							<a class="dropdown-item" href="map.html">캠퍼스안내 </a>
							<a class="dropdown-item" href="about.html">대학소개 </a>
						</div>
				</li>
			</ul>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <br> <br>
                    <h3>찾아오시는 길</h3>
                    <div id="map" style="width: 100%; height: 350px;"></div>
                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ebd834bbf55ba97b00c541cb519a9cb"></script>
                    <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                        mapOption = {
                                center : new kakao.maps.LatLng(35.86923, 128.59323), // 지도의 중심좌표
                                level : 3 // 지도의 확대 레벨
                                };
                        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                        // 마커가 표시될 위치입니다
                        var markerPosition = new kakao.maps.LatLng(35.86923, 128.59323);
                        // 마커를 생성합니다
                        var marker = new kakao.maps.Marker({ position : markerPosition });
                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);
                        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
                        // marker.setMap(null);
                    </script>

                    <ul>
                        <li class="infoli"><b>[주소]</b><br>
                            <span>대구광역시 중구 남일동 135-1</span>
                        </li>
                        <li class="infoli"><b>[교통편]</b><br>
                            <span>중앙로역 2번 출구 / 약령시 앞 버스정류장</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end section -->
</body>
</html>