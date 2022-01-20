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
                <div class="admin-block d-flex">
                    <div>
                        <img src="/univ/resources/mypage/img/admin-avatar.png" width="45px" />
                    </div>
                    <div class="admin-info">
                        <div class="font-strong">James Brown</div><small>Administrator</small>
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