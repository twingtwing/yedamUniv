<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<title><tiles:getAsString name="title" /></title>

<link
	href="/univ/resources/mypage/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="/univ/resources/mypage/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="/univ/resources/mypage/vendors/themify-icons/css/themify-icons.css"
	rel="stylesheet" />
<link
	href="/univ/resources/mypage/vendors/jvectormap/jquery-jvectormap-2.0.3.css"
	rel="stylesheet" />
<link href="/univ/resources/mypage/css/main.min.css" rel="stylesheet" />

<script src="/univ/resources/mypage/vendors/jquery/dist/jquery.min.js"
	type="text/javascript"></script>
<style>
:root { 
        --gray: #7f8c8d;
        --navy: #4c5a7d;
        --blue: #3498db;
        --middle-blue:#305DAE; 
		}

.list-thead tr {
	background-color: #4c5a7d;
	border-color: #4c5a7d;
	color: white;
}

.main_bar>span, .fa-home {
	color: #7f8c8d;
}

.main_bar .fa-chevron-right {
	color: #bdc3c7;
}

.main_bar_span {
	color: #34495F;
	font-weight: 600;
}

 .back_link {
            color: #4c5a7d;
        }
        .back_link:hover{
            text-decoration: underline;
        }
        .Q-contents{
            height: 50vh;
        }
        .A-contents{
            height: 20vh;
        }
</style>

</head>
<body class="fixed-navbar">
	<div class="page-wrapper">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="side" />
		<div class="content-wrapper">
			<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" />
		</div>
	</div>

	<script
		src="/univ/resources/mypage/vendors/popper.js/dist/umd/popper.min.js"
		type="text/javascript"></script>
	<script
		src="/univ/resources/mypage/vendors/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="/univ/resources/mypage/vendors/metisMenu/dist/metisMenu.min.js"
		type="text/javascript"></script>
	<script
		src="/univ/resources/mypage/vendors/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- CORE SCRIPTS-->
	<script src="/univ/resources/mypage/js/app.min.js"
		type="text/javascript"></script>
	<!-- PAGE LEVEL SCRIPTS-->
	<script src="/univ/resources/mypage/js/scripts/dashboard_1_demo.js"
		type="text/javascript"></script>
	<script src="/univ/resources/mypage/vendors/chart.js/dist/Chart.min.js"
      type="text/javascript"
    ></script>
</body>
</html>