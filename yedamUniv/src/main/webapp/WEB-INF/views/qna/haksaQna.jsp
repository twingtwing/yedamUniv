<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사 QnA</title>

<!-- font awesome-->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

<style>
    .table tr {
            height: 60px;
        }
</style>
</head>
<body>

<!-- 시작 -->
    <div id="overviews" class="section wb">
        <div class="container">
            <div class="container-fluid">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">학사 </a>
                            <div class="dropdown-menu" aria-labelledby="dropdown-a" style="width: 10vw;">
                                <a class="dropdown-item" href="#">학사공지 </a>
                                <a class="dropdown-item" href="#">학사QnA </a>
                                <a class="dropdown-item" href="#">학사FAQ </a>
                            </div>
                    </li>
                </ul>
                <div class="section-title row text-center m-3">
                    <div class="col-md-8 offset-md-2">
                        <h3>학사 QnA</h3>
                    </div>
                    <div class="row d-flex justify-content-end">
                        <div class="col-lg-3 col-12 right-single">
                            <div class="widget-search">
                                <div class="site-search-area">
                                    <form method="get" id="site-searchform" action="#">
                                        <div>
                                            <input class="input-text form-control" name="search-k" id="search-k" placeholder="Search keywords..." type="text">
                                            <input id="searchsubmit" value="Search" type="submit">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <table class="table table-hover">
                            <thead>
                                <colgroup>
                                    <col width="100">
                                    <col>
                                    <col width="200">
                                    <col width="200">
                                </colgroup>
                                <tr style="background-color: #eea412;;">
                                    <th>글번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                            </thead>
                            <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="haksa_noticeRead.html">제목</a></td>
                                        <td>staff</td>
                                        <td>2022.01.11</td>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row d-flex justify-content-end">
                        <button type="button" class="btn btn-outline-warning m-3" style="background-color: white;"><i class="fas fa-pen"></i>&nbsp; &nbsp;글쓰기</button>
                    </div>
                    <div>
                        <ul class="pagination justify-content-center p-5" style="color: #eea412;;">
                            <li class="page-item"><a class="page-link  text-warning" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link text-warning" href="#">1</a></li>
                            <li class="page-item"><a class="page-link text-warning" href="#">2</a></li>
                            <li class="page-item"><a class="page-link text-warning" href="#">3</a></li>
                            <li class="page-item"><a class="page-link text-warning" href="#">4</a></li>
                            <li class="page-item"><a class="page-link text-warning" href="#">5</a></li>
                            <li class="page-item"><a class="page-link text-warning" href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 끝 -->

</body>
</html>