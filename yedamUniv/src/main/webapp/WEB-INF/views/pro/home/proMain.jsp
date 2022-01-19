<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	ul:not(ul.board-ul) {
		list-style: none;
		padding: 0;
	}
	
	.date_li {
		border: 1px solid #F1F1F1;
		padding: 10px 20px;
		text-align: center;
	}
	
	.date_li>a {
		color: inherit;
	}
	
	.alt-background {
		background-color: var(- -middle-blue);
	}
	
	.alt-background>a {
		color: white;
	}
	
	.more_text {
		color: var(- -gray);
	}
	
	a>img {
		width: 45px;
		transition: all ease-in-out 1s;
	}
	
	a>img:hover {
		width: 55px;
	}
	
	.straight_bar {
		border-radius: 6px;
		box-shadow: 0 4px 6px rgba(39, 39, 145, 0.11), 0 1px 3px
			rgba(0, 0, 0, 0.08);
	}
	
	.back_link {
		color: #4c5a7d;
	}
	
	.back_link:hover {
		text-decoration: underline;
	}
	
	ul.board-ul>li {
		padding: 11px 11px 11px 0px;
	}
	
	.visitors-table tbody tr td:last-child {
		display: flex;
		align-items: center;
	}
	
	.visitors-table .progress {
		flex: 1;
	}
	
	.visitors-table .progress-parcent {
		text-align: right;
		margin-left: 10px;
	}
</style>
</head>
<body>
	<div class="page-content fade-in-up">
		<div class="row">
			<div class="col-lg-3">
				<div class="ibox">
					<div class="ibox-head d-flex justify-content-center">
						<div class="ibox-title">날씨</div>
					</div>
					<div class="ibox-body" style="height: 300px;">
					<!--시간표-->
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="ibox">
					<div class="ibox-head d-flex justify-content-center">
						<div class="ibox-title">시간표</div>
					</div>
					<div class="ibox-body" style="height: 300px;">
						<div class="board_box">
							<dl class="board_area_box2">
								<dd>
									<ul id="timetable_tab"
										class="board_tab_area2 li6 d-flex justify-content-between"
										style="border-bottom: 5px">
										<li class="date_li w-100" onclick="changeWeekDay(this)"
											data-wd="1"><a href="javascript:void(0)">월</a></li>
										<li class="date_li w-100" onclick="changeWeekDay(this)"
											data-wd="2" class="on"><a href="javascript:void(0)">화</a>
										</li>
										<li class="date_li w-100" onclick="changeWeekDay(this)"
											data-wd="3"><a href="javascript:void(0)">수</a></li>
										<li class="date_li w-100" onclick="changeWeekDay(this)"
											data-wd="4"><a href="javascript:void(0)">목</a></li>
										<li class="date_li w-100" onclick="changeWeekDay(this)"
											data-wd="5"><a href="javascript:void(0)">금</a></li>
										<li class="date_li w-100" onclick="changeWeekDay(this)"
											data-wd="6"><a href="javascript:void(0)">토</a></li>
									</ul>
								</dd>
								<dd>
									<div class="lecture_box" style="height: 250px;">
										<dl class="lecture_list" data-wd="1"
											style="display: none; border-bottom: 0">
											<dd style="width: 100%; text-align: center; color: #777;">
												해당 요일의 수업을 찾을 수 없습니다.</dd>
										</dl>
										<dl class="lecture_list" data-wd="2"
											style="border-bottom: 0px">
											<dd style="width: 100%; text-align: center; color: #777;">
												해당 요일의 수업을 찾을 수 없습니다.</dd>
										</dl>
										<dl class="lecture_list" data-wd="3"
											style="display: none; border-bottom: 0">
											<dd style="width: 100%; text-align: center; color: #777;">
												해당 요일의 수업을 찾을 수 없습니다.</dd>
										</dl>
										<dl class="lecture_list" data-wd="4"
											style="display: none; border-bottom: 0">
											<dd style="width: 100%; text-align: center; color: #777;">
												해당 요일의 수업을 찾을 수 없습니다.</dd>
										</dl>
										<dl class="lecture_list" data-wd="5"
											style="display: none; border-bottom: 0">
											<dd style="width: 100%; text-align: center; color: #777;">
												해당 요일의 수업을 찾을 수 없습니다.</dd>
										</dl>
										<dl class="lecture_list" data-wd="6"
											style="display: none; border-bottom: 0">
											<dd style="width: 100%; text-align: center; color: #777;">
												해당 요일의 수업을 찾을 수 없습니다.</dd>
										</dl>
									</div>
								</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-4">
				<div class="ibox">
					<div class="ibox-head">
						<div class="ibox-title">학사일정</div>
						<div class="d-flex align-items-center more_text">
							<div>
								<a href="#">더보기<i
									class="fa fa-chevron-right ml-2"></i></a>
							</div>
						</div>
					</div>
					<div class="ibox-body" style="height: 300px;">
						<div class="d-flex justify-content-center"
							style="background-color: var(- -middle-blue);">
							<h5 style="font-weight: 600;">2022-01</h5>
						</div>
						<table class="table mt-2 list_table">
							<tbody>
								<tr>
									<td>⦁</td>
									<td>01-18</td>
									<td>리눅스 중간평가</td>
								</tr>
								<tr>
									<td>⦁</td>
									<td>01-29 ~ 02-01</td>
									<td>설 연휴</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="ibox straight_bar">
					<div class="ibox-body">
						<div id="world-map" style="height: 100px">
							<div class="row">
								<div class="col-lg-4" style="text-align: center">
									<a href="/univ/pro/mySub.do"> 
										<img src="./images/수강신청.png" class="m-t-10" />
										<h5 class="m-t-10 font-strong">강의목록</h5>
									</a>
								</div>
								<div class="col-lg-4" style="text-align: center">
									<a href="/univ/pro/subApplyList.do"><img src="./images/강의평가.png" class="m-t-10" />
										<h5 class="m-t-10 font-strong">강의등록</h5></a>
								</div>
								<div class="col-lg-4" style="text-align: center">
									<a href="/univ/pro/leaveDrop.do"> 
										<img src="./images/휴학.png"	class="m-t-10" />
										<h5 class="m-t-10 font-strong">휴학/자퇴신청</h5>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="ibox">
					<div class="ibox-head">
						<div class="ibox-title">학사 공지</div>
						<div class="d-flex align-items-center more_text">
							<div>
								<a href="#">더보기<i
									class="fa fa-chevron-right ml-2"></i></a>
							</div>
						</div>
					</div>
					<div class="ibox-body pl-0" style="height: 300px;">
						<div class="col-lg-12">
							<ul class="board-ul">
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="ibox">
					<div class="ibox-head">
						<div class="ibox-title">장학 공지</div>
						<div class="d-flex align-items-center more_text">
							<div>
								<a href="#">더보기<i
									class="fa fa-chevron-right ml-2"></i></a>
							</div>
						</div>
					</div>
					<div class="ibox-body pl-0" style="height: 300px;">
						<div class="col-lg-12">
							<ul class="board-ul">
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
								<li class="mb-2"><a href="#" class="back_link">
										<div class="row pr-5 pl-3">
											<h6>글 제목</h6>
											<h6 class="pl-2">[ 2021-01-01 ]</h6>
										</div>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		<!--시간표 js-->
                 	const listItems = document.querySelectorAll('.date_li');
                    listItems.forEach(li => {
                      li.addEventListener('click', () => {
                        li.classList.toggle('alt-background');
                      });
                    });
      
                    document.addEventListener("DOMContentLoaded",function(){
                      getTimetableData();
                      // $('.date_li').click(function(e){
                      // $(e.target).css({'backgroundColor': '#305DAE', 'color':'white'});
                      // });
                      
                    })
              
      
                    function getTimetableData(){
                      $.ajax({
                        type:"get"
                      , url : ""
                      , dataType : "json"
                      , cache : false
                      , success : function(data) {
                          $("dd>div.lecture_box").html("");
                          if(data && data.wdList){
                            var list = data.wdList;
                            for(var i=0; i<list.length; i++){
                              $("#timetable_tab li").eq(i).find("a").text(list[i]);
                            }
                          }
                          if(data && data.studTimetableList){
                            if(data.studTimetableList.length>0){
                              var list = data.studTimetableList;
                              for(var i in list){
                                var dl =$("<dl />", {"class":"lecture_list", "data-wd":list[i].lt_day_gbn-1}).hide();
                                dl.append($("<dt />", {text:list[i].lectm_gbn_nm}));
                                dl.append($("<dd />", {html:$("<a />", {href:"javascript:void(0)", onclick:"goNxTimeTable()", text:list[i].ssc_nm})}));
                                dl.append($("<dd />", {"class":"dd2", text:list[i].setp_room_nm, title:list[i].setp_room_nm}));
                                $("dd>div.lecture_box").append(dl);
                              }
                              for(var i=1; i<=6; i++){
                                if($("dl.lecture_list[data-wd="+i+"]").length==0){
                                  var nodata_dl = $("<dl />", {"class":"lecture_list", "data-wd":i, style:"display:none; border-bottom:0"});
                                  nodata_dl.append($("<dd />", {text:"해당 요일의 수업을 찾을 수 없습니다.", style:"width:100%; text-align:center; color:#777"}));
                                  $("dd>div.lecture_box").append(nodata_dl);
                                }
                              }
                            }else{
                              for(var i=1; i<=6; i++){
                                var nodata_dl = $("<dl />", {"class":"lecture_list", "data-wd":i, style:"display:none; border-bottom:0"});
                                nodata_dl.append($("<dd />", {text:"해당 요일의 수업을 찾을 수 없습니다.", style:"width:100%; text-align:center; color:#777"}));
                                $("dd>div.lecture_box").append(nodata_dl);
                              }
                            }
                          }else{
                            var nodata_dt = $("<dt />", {text:"데이터를 불러오는데 실패했습니다."}).css({"width":"100%", "text-align":"center","color":"#777"});
                            $("dd>div.lecture_box").html(nodata_dt);
                          }
                          
                          var wd = new Date().getDay();
                          if(wd==0){wd=1} //일요일일 경우에는 월요일 시간표 표시.
                          $("ul#timetable_tab>li[data-wd="+wd+"]").addClass("on");
                          $("dl.lecture_list[data-wd="+wd+"]").show();
                        }
                      , error : function(error){
                          var nodata_dt = $("<dt />", {text:"데이터를 불러오는데 실패했습니다."}).css({"width":"100%", "text-align":"center","color":"#777"});
                          $("dd>div.lecture_box").html(nodata_dt);
                        }
                      });
                    }
      
                            function changeWeekDay(e){
                              if($(e).hasClass("on")) return;
                              $("ul#timetable_tab>li.on").removeClass("on");
                              $(e).addClass("on");
                              $("dl.lecture_list[data-wd!="+$(e).attr("data-wd")+"]").hide();
                              $("dl.lecture_list[data-wd="+$(e).attr("data-wd")+"]").show();
                            }
      
                            function goNxTimeTable(){
                              window.open("");
                            }
                  </script>
</body>
</html>