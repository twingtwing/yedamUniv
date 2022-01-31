<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title><tiles:getAsString name="title"/></title>
	
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

    <link rel="shortcut icon" href="/univ/resources/main/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="/univ/resources/main/images/apple-touch-icon.png">
    <link rel="stylesheet" href="/univ/resources/main/css/bootstrap.min.css">
    <link rel="stylesheet" href="/univ/resources/main/style.css">
    <link rel="stylesheet" href="/univ/resources/main/css/versions.css">
    <link rel="stylesheet" href="/univ/resources/main/css/responsive.css">
    <link rel="stylesheet" href="/univ/resources/main/css/custom.css">
    
    <script src="/univ/resources/main/js/modernizer.js"></script>
   	<!-- Jquery 없어서 mypage에서 갑고옴 -->
    <script src="/univ/resources/mypage/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <!-- jquery 추가 -->
</head>
<body class="host_version">
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>
	
	<!-- ALL JS FILES -->
    <script src="/univ/resources/main/js/all.js"></script>
    
    <!-- ALL PLUGINS -->
    <script src="/univ/resources/main/js/custom.js"></script>
	<script src="/univ/resources/main/js/timeline.min.js"></script>
	<script>
		timeline(document.querySelectorAll('.timeline'), {
			forceVerticalMode: 700,
			mode: 'horizontal',
			verticalStartPosition: 'left',
			visibleItems: 4
		});
	</script>
</body>
</html>