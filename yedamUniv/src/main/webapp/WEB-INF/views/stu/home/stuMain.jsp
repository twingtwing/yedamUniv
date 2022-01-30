<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="page-content fade-in-up">
          <div class="row">
            <div class="col-lg-3">
              <div class="ibox">
                <div class="ibox-head">
                  <div class="ibox-title">날씨</div>
            
                </div>
                  <div class="ibox-body" style="height: 300px;">
                    <div class="row">
                      <div class="col-lg-12">
                        <div id="weather">
                          <span></span>
                          <span></span>
                        </div>
                      </div>
                  
                    </div>
                  
                    
                  </div>
              
                
              </div>
            </div>

            <!--날씨 -->
            <script>
              const weather = document.querySelector("#weather span:first-child")
              const city = document.querySelector("#weather span:last-child")
              const APP_KEY="1dc8057e65913cf0c80b5aaa8c459f68"
              function onGeoOk(position){
                const lat = position.coords.latitude;
                const lon = position.coords.longitude;
                const url="https://api.openweathermap.org/data/2.5/weather?lat="+lat+"&lon="+lon+"&appid="+APP_KEY+"&units=metric"
                fetch(url).then(response=>response.json()).then((data)=>{
                  
                  city.innerText = data.name;
                  weather.innerText =  data.weather[0].main;
                });
                console.log(url)
              }
              function onGeoError(){
                alert("위치를 찾을 수 없습니다")
              }
              navigator.geolocation.getCurrentPosition(onGeoOk,onGeoError)
            </script>
            <!--시간표 CSS-->
            <style>
              ul {
                list-style: none;
                padding: 0;
              
              }
              .date_li{
                border: 1px solid #F1F1F1;
                padding:10px 38px;
              }
              
              .date_li>a{
                color: inherit;
              }
              .date_li:hover{
                background-color: var( --middle-blue); 
                color:white;
              }
              .alt-background{
                background-color: var( --middle-blue); 
                
                
              }
              .alt-background>a{
                color:white;
              }
            </style>
            <!--시간표-->
            <div class="col-lg-5">
              <div class="ibox">
                <div class="ibox-head">
                  <div class="ibox-title">주차별 시간표</div>
                </div>
                <div class="ibox-body" style="height: 300px;">
                    <div class="board_box">
                      <dl class="board_area_box2">
                        <dd class>
                          <ul
                            id="timetable_tab"
                            class="board_tab_area2 li6 d-flex justify-content-between"
                            style="border-bottom: 5px"
                          >
                            <li  class="date_li" onclick="changeWeekDay(this)" data-wd="1">
                              <a href="javascript:void(0)">월</a>
                            </li>
                            <li class="date_li" 
                              onclick="changeWeekDay(this)"
                              data-wd="2"
                              class="on"
                            >
                              <a href="javascript:void(0)">화</a>
                            </li>
                            <li  class="date_li" onclick="changeWeekDay(this)" data-wd="3">
                              <a href="javascript:void(0)">수</a>
                            </li>
                            <li  class="date_li" onclick="changeWeekDay(this)" data-wd="4">
                              <a href="javascript:void(0)">목</a>
                            </li>
                            <li class="date_li"  onclick="changeWeekDay(this)" data-wd="5">
                              <a href="javascript:void(0)">금</a>
                            </li>
                            <li  class="date_li" onclick="changeWeekDay(this)" data-wd="6">
                              <a href="javascript:void(0)">토</a>
                            </li>
                          </ul>
                        </dd>
                        <dd>
                          <div class="lecture_box" style="height: 250px;">
                            <dl
                              class="lecture_list"
                              data-wd="1"
                              style="display: none; border-bottom: 0"
                            >
                              <dd
                                style="
                                  width: 100%;
                                  text-align: center;
                                  color: #777;
                                "
                              >
                                해당 요일의 수업을 찾을 수 없습니다.
                              </dd>
                           
                            </dl>
                          </div>
                        </dd>
                      </dl>
                    </div>
                  </li>
                </div>
              </div>
            </div>
            <!--주차별시간표 js-->
           

            <style>
              .more_text {
                color: var(--gray);
              }
            </style>
            <div class="col-lg-4">
              <div class="ibox">
                <div class="ibox-head">
                  <div class="ibox-title">학사일정</div>
                  <div class="d-flex align-items-center more_text">
                    <div>
                      <a href="#"
                        >더보기<i class="fa fa-chevron-right ml-2"></i
                      ></a>
                    </div>
                  </div>
                </div>
                <div class="ibox-body" style="height: 300px;">
                  <div class="d-flex justify-content-center"  style="background-color: var(--middle-blue); padding:10px; color:white">
                    <h5 style="font-weight: 600;">2022-01</h5>
                  </div>
                  <table class="table mt-2 list_table">
                    <tbdoy>
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
                    </tbdoy>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <style>
            a > img {
              width: 45px;
              transition: all ease-in-out 1s;
            }
            a > img:hover {
              width: 55px;
            }
            .straight_bar {
              border-radius: 6px;
              box-shadow: 0 4px 6px rgba(39, 39, 145, 0.11),
                0 1px 3px rgba(0, 0, 0, 0.08);
            }
          </style>
          <div class="row">
            <div class="col-lg-12">
              <div class="ibox straight_bar">
                <div class="ibox-body">
                  <div id="world-map" style="height: 100px">
                    <div class="row">
                      <div class="col-lg-3" style="text-align: center">
                        <a href="/univ/stu/enrolment.do">
                          <img src="/univ/resources/mypage/myPageImages/수강신청.png" class="m-t-10" />
                          <h4 class="m-t-10 font-strong">수강신청</h4>
                        </a>
                      </div>
                      <div class="col-lg-3" style="text-align: center">
                        <a href="breakSchoolApp.html">
                          <img src="/univ/resources/mypage/myPageImages/휴학.png" class="m-t-10" />
                          <h4 class="m-t-10 font-strong">휴학/자퇴신청</h4></a
                        >
                      </div>
                      <div class="col-lg-3" style="text-align: center">
                        <a href="#"
                          ><img src="/univ/resources/mypage/myPageImages/강의평가.png" class="m-t-10" />
                          <h4 class="m-t-10 font-strong">강의평가</h4></a
                        >
                      </div>
                      <div class="col-lg-3" style="text-align: center">
                        <a href="#"
                          ><img src="/univ/resources/mypage/myPageImages/성적조회.png" class="m-t-10" />
                          <h4 class="m-t-10 font-strong">성적조회</h4></a
                        >
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
                      <a href="#"
                        >더보기<i class="fa fa-chevron-right ml-2"></i
                      ></a>
                    </div>
                  </div>
                </div>
                <div class="ibox-body" style="height: 300px;">
                  
                  <table class="table mt-2 list_table">
                    <tbdoy>
                      <tr>
                        <td width="80%">글제목</td>
                        <td>2021-01-19</td>
                        
                      </tr>
                      <tr>
                        <td>글제목</td>
                        <td>2021-01-19</td>
                       
                      </tr>
                    </tbdoy>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="ibox">
                <div class="ibox-head">
                  <div class="ibox-title">장학 공지</div>
                  <div class="d-flex align-items-center more_text">
                    <div>
                      <a href="#"
                        >더보기<i class="fa fa-chevron-right ml-2"></i
                      ></a>
                    </div>
                  </div>
                </div>
                <div class="ibox-body" style="height: 300px;">
                  
                  <table class="table mt-2 list_table">
                    <tbdoy>
                      <tr>
                        <td width="80%">글제목</td>
                        <td>2021-01-19</td>
                        
                      </tr>
                      <tr>
                        <td>글제목</td>
                        <td>2021-01-19</td>
                       
                      </tr>
                    </tbdoy>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <style>
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
        </div>