<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
        <div class="page-brand">
          <a class="link" href="index.html">
            <span class="brand"
              >YD
              <span class="brand-tip">공대</span>
            </span>
            <span class="brand-mini">YD</span>
          </a>
        </div>
        <div class="flexbox flex-1">
          <!-- START TOP-LEFT TOOLBAR-->
          <ul class="nav navbar-toolbar">
            <li>
              <a class="nav-link sidebar-toggler js-sidebar-toggler"
                ><i class="ti-menu"></i
              ></a>
            </li>
            <li>
              <form class="navbar-search" action="javascript:;">
                <div class="rel">
                  <span class="search-icon"><i class="ti-search"></i></span>
                  <input class="form-control" placeholder="Search here..." />
                </div>
              </form>
            </li>
          </ul>
          <!-- END TOP-LEFT TOOLBAR-->
          <!-- START TOP-RIGHT TOOLBAR-->
          <ul class="nav navbar-toolbar">
            <li class="dropdown dropdown-user">
              <a class="nav-link dropdown-toggle link" data-toggle="dropdown">
                <img src="/univ/resources/mypage/myPageImages/스펀지밥.png" />
                <span></span>스펀지밥<i class="fa fa-angle-down m-l-5"></i
              ></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="/univ/stu/studentHome.do"
                  ><i class="fa fa-user"></i>학적정보</a
                >
                <li class="dropdown-d"src/main/webapp/WEB-INF/views/stu/myInfo/breakSchoolApp.jsp"ivider"></li>
                <a class="dropdown-item" href="login.html"
                  ><i class="fa fa-power-off"></i>로그아웃</a
                >
              </ul>
            </li>
          </ul>
          <!-- END TOP-RIGHT TOOLBAR-->
        </div>
      </header>