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
                <ul class="side-menu metismenu">
                	<li>
              			<a class="active" href="/univ/pro/pro.do"><i class="sidebar-item-icon fa fa-th-large"></i><span class="nav-label">HOME</span></a>
            		</li>
            		<li class="heading">나의 강의실</li>
                	<li>
                        <a href="/univ/pro/proInfo.do"><i class="sidebar-item-icon fa fa-calendar"></i>
                            <span class="nav-label">나의 정보</span>
                        </a>
                    </li>
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