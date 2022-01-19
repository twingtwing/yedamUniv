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
	
    <link href="/univ/resources/admin/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="/univ/resources/admin/css/lib/themify-icons.css" rel="stylesheet">
    <link href="/univ/resources/admin/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="/univ/resources/admin/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="/univ/resources/admin/css/lib/helper.css" rel="stylesheet">
    <link href="/univ/resources/admin/css/style.css" rel="stylesheet">
    
    <script src="/univ/resources/admin/js/lib/jquery.min.js"></script>
</head>
<body>
	<tiles:insertAttribute name="side"/>
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="body"/>
	
    <script src="/univ/resources/admin/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="/univ/resources/admin/js/lib/menubar/sidebar.js"></script>
    <script src="/univ/resources/admin/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->

    <script src="/univ/resources/admin/js/lib/bootstrap.min.js"></script>
    <!-- bootstrap -->

</body>
</html>