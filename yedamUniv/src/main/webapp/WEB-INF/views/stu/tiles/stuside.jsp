<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="page-sidebar" id="sidebar">
        <div id="sidebar-collapse">
          <div class="admin-block d-flex">
            <div>
              <img src="/univ/resources/mypage/myPageImages/스펀지밥.png" width="45px" />
            </div>
            <div class="admin-info">
              <div class="font-strong">${name }</div>
              <div>${major} ${grade}학년</div>
            </div>
          </div>
          <ul class="side-menu metismenu">
            <li>
              <a class="active" href="/univ/stu/stu.do"
                ><i class="sidebar-item-icon fa fa-th-large"></i>
                <span class="nav-label">HOME</span>
              </a>
            </li>
            <li class="heading">나의 강의실</li>
            <li>
              <a href="javascript:;"
                ><i class="sidebar-item-icon fa fa-user"></i>
                <span class="nav-label">학사관리</span
                ><i class="fa fa-angle-left arrow"></i
              ></a>
              <ul class="nav-2-level collapse">
                <li>
                  <a href="/univ/stu/studentHome.do">학적사항조회</a>
                </li>
                <li>
                  <a href="/univ/stu/breakSchoolApp.do">휴학/자퇴신청</a>
                </li>
                <li>
                  <a href="/univ/stu/returnSchoolApp.do">복학신청</a>
                </li>
                <li>
                  <a href="/univ/stu/canIgraduate.do">졸업시물레이션</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="javascript:;"
                ><i class="sidebar-item-icon fa fa-edit"></i>
                <span class="nav-label">수업</span
                ><i class="fa fa-angle-left arrow"></i
              ></a>
              <ul class="nav-2-level collapse">
                <li>
                  <a href="/univ/stu/enrolment.do">수강신청</a>
                </li>
                <li>
                  <a href="/univ/stu/classList.do">수강목록</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="javascript:;"
                ><i class="sidebar-item-icon fa fa-file-text"></i>
                <span class="nav-label">성적확인</span
                ><i class="fa fa-angle-left arrow"></i
              ></a>
              <ul class="nav-2-level collapse">
                <li>
                  <a href="/univ/stu/lookThisGrade.do">금학기성적조회</a>
                </li>
                <li>
                  <a href="/univ/stu/lookAllGrades.do">전체성적조회</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>