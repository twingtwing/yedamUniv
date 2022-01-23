<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<nav class="page-sidebar" id="sidebar">
            <div id="sidebar-collapse">
            	<div class="admin-block d-flex mx-1 mt-2">
		            <div>
		            	<img src="/univ/resources/mypage/myPageImages/스펀지밥.png" width="45px" />
		            </div>
		            <div class="admin-info">
		            	<div class="font-strong">${name }</div>
		            	<div>${major}학과</div>
		            </div>
		        </div>
		        <div class="row d-flex justify-content-center align-items-center">
		            <div class="col-lg-12 d-flex justify-content-center" style="color: white">
		            	<a href="#">
		              		<div class="row">
			              		<div class="d-flex align-items-center"><i class="ti-email mr-2"></i></div>
			              		<p class="mb-0">쪽지함</p>
		              		</div>
		              </a>
		            </div>
		        </div>
                <ul class="side-menu metismenu">
                	<li class="heading">MY ROOM</li>
                    <li>
                        <a href="/univ/pro/mySub.do"><i class="sidebar-item-icon fa fa-calendar"></i>
                            <span class="nav-label">강의 목록</span>
                        </a>
                    </li>
                    <li>
                        <a href="/univ/pro/subApplyList.do"><i class="sidebar-item-icon fa fa-calendar"></i>
                            <span class="nav-label">강의 신청</span>
                        </a>
                    </li>
                    <!-- 총장님만 되도록(총장이면 session에 닫아야함)-->
                    <li>
                        <a href="/univ/pro/leaveDrop.do"><i class="sidebar-item-icon fa fa-calendar"></i>
                            <span class="nav-label">휴학/자퇴</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
</body>
</html>