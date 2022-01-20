<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <div class="logo"><a href="/univ/admin/admin.do"><!-- <img src="assets/images/logo.png" alt="" /> --><span>YDU</span></a></div>
                <ul>
                    <li><a class="sidebar-sub-toggle"><i class="ti-announcement"></i>공지사항<span class="badge badge-primary">2</span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="/univ/admin/admin.do">학사공지</a></li>
                            <li><a href="/univ/admin/listJangHaksa.do">장학사공지</a></li>
                            <li><a href="/univ/admin/listQnA.do">QnA(학사/장학사)</a></li>
                            <li><a href="/univ/admin/listFAQ.do">FAQ(학사/장학사)</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-user"></i>멤버관리<span class="badge badge-primary"></span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="/univ/admin/listEmp.do">교직원</a></li>
                            <li><a href="/univ/admin/listProf.do">교수</a></li>
                            <li><a href="/univ/admin/listStu.do">학생</a></li>
                            <li><a href="/univ/admin/listPapers.do">휴·복학/자퇴 신청 관리</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-heart"></i>자유게시판<span class="badge badge-primary"></span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="/univ/admin/listBoard.do">자유게시판 관리</a></li>
                            <li><a href="/univ/admin/listIllegal.do">신고게시글 관리</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-stamp"></i>강의등록<span class="badge badge-primary"></span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="/univ/admin/listAddClass.do">강의등록처리</a></li>
                        </ul>
                    </li>
                    <li><a><i class="ti-close"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>