<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        .back_link {
            color: #4c5a7d;
        }
        .back_link:hover{
            text-decoration: underline;
        }
        .plan-box{
            border: 2px solid #4c5a7d;
        }
        .plan-table{
            border-top: 2px solid #4c5a7d;
        }
        .plan-table tr{
            height: 50px;
        }
        .plan-table tr>td,.plan-table tr>th{
           vertical-align: middle;
        }
    </style>
</head>
<body>
            <div class="page-content fade-in-up">
                <div class="row">
                    <div class="col-lg-12">
                        <i class="fa fa-home"></i>
                        <a href="/univ/pro/pro.do" alt="my main" class="back_link font-weight-bold">my main</a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <a href="/univ/pro/subApplyList.do" alt="강의 등록" class="back_link"><small class="font-weight-bold">강의 등록</small></a>
                        <i class="fa fa-angle-right mx-1"></i>
                        <small class="font-weight-bold">강의 수정</small>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="col-lg-12 d-flex justify-content-between">
                    <div class="mx-4 mt-4 pb-2 pl-3">
                        <div class="row mb-4">
                            <i class="fa fa-paperclip text-warning" style="font-size: 35px;"></i>
                            <div class="ml-2 d-flex align-items-center">
                                <h3 class="mb-0 font-weight-bold">강의 등록</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <form id="subFrmUp">
                                    <div class="plan-box m-4 p-5">
                                        <div class="row">
                                            <div class="col-lg-12 text-center mt-4">
                                                <h3 class="font-weight-bold">${sub.subjectName}</h3>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <div class="row mb-3">
                                                <div class="row d-flex justify-content-between col-lg-12 mt-3 ml-1">
                                                    <div class="row">
                                                        <div class="d-flex align-items-center">
                                                            <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                        </div>
                                                        <div class="d-flex align-items-center ml-2">
                                                            <h4 class="font-weight-bold mb-0">과목 정보</h4>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div>
                                                            <i class="fa  fa-exclamation-circle text-danger"></i>
                                                        </div>
                                                        <p class="text-danger mx-2 mb-0">수강번호 및 강의 제목 / 시간 / 강의실은 수정 불가능합니다.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <table class="plan-table table text-center mt-2">
                                                    <tbody>
                                                        <tr>
                                                            <th class="text-center bg-silver-100" width='17%'>수강번호</th>
                                                            <td id="subNum" width='32%'></td>
                                                            <th class="text-center bg-silver-100" width='17%'>학점</th>
                                                            <td width='32%'>
                                                                <div class="d-flex justify-content-center">
                                                                    <select id="subjectScore" name="subjectScore" class="form-control input-lg w-75">
                                                                        <option class="text-center" value="1" <c:if test="${sub.subjectScore eq 1}">selected</c:if>>1</option>
                                                                        <option class="text-center" value="2" <c:if test="${sub.subjectScore eq 2}">selected</c:if>>2</option>
                                                                        <option class="text-center" value="3" <c:if test="${sub.subjectScore eq 3}">selected</c:if>>3</option>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th class="text-center bg-silver-100">이수구분</th>
                                                            <td>
                                                                <div class="d-flex justify-content-center">
                                                                    <select id="subjectDetail" name="subjectDetail" class="form-control input-lg w-75">
                                                                        <option class="text-center" value="전공" <c:if test="${sub.subjectDetail eq '전공'}">selected</c:if>>전공</option>
                                                                        <option class="text-center" value="교양" <c:if test="${sub.subjectDetail eq '교양'}">selected</c:if>>교양</option>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                            <th class="text-center bg-silver-100">총 학생</th>
                                                            <td>
                                                                <div class="d-flex justify-content-center">
                                                                    <input id="subjectTotal" name="subjectTotal" class="form-control w-75" type="text" value="${sub.subjectTotal}">
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th class="text-center bg-silver-100">강의실</th>
                                                            <td>${sub.subjectRoom}강의실</td>
                                                            <th class="text-center bg-silver-100">강의시간</th>
                                                            <td id="subTime"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 개요</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectSum" name="subjectSum" class="form-control" rows="7">${sub.subjectSum }</textarea>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 목표</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectGoal" name="subjectGoal" class="form-control" rows="7">${sub.subjectGoal }</textarea>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 자료</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectData" name="subjectData" class="form-control" rows="7">${sub.subjectData }</textarea>
                                            </div>
                                        </div>
                                        <div class="mx-5 mb-4 mt-4 px-5">
                                            <hr>
                                            <div class="row mb-3">
                                                <div class="row col-lg-12 mt-3 ml-1">
                                                    <i class="fa fa-chevron-circle-right" style="font-size: 25px;"></i>
                                                    <div class="d-flex align-items-center ml-2">
                                                        <h4 class="font-weight-bold mb-0">수업 내용</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-1 pt-2">
                                                <textarea id="subjectContents" name="subjectContents" class="form-control" rows="7">${sub.subjectContents }</textarea>
                                            </div>
                                        </div>
                                        <div class="row mx-5 mt-5 pr-5">
                                            <div class="col-lg-12 d-flex justify-content-end ml-4">
                                               	<button id="subBtnUp" class="btn btn-default mr-2" style="width:75px; height: 40px;">수정</button>
                                                <button onclick="history.back()" class="btn btn-default" style="width:100px; height: 40px;">뒤로 가기</button>
                                            </div>
                                        </div>
                                        <input type="hidden" id="subjectNo" name="subjectNo" value="${sub.subjectNo }">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <script>
	    const days = {1 : '월',2 : '화',3 : '수',4 : '목',5 : '금',6 : '토'};
	    const times = {1: '9:00 - 9:50',2: '10:00 - 10:50',3: '11:00 - 11:50',4: '12:00 - 12:50'
	          ,5: '1:00 - 1:50',6: '2:00 - 2:50',7: '3:00 - 3:50',8: '4:00 - 4:50',9: '5:00 - 5:50'};
	    
		$('#subTime').text(days['${sub.subjectDay}']+' '+times['${sub.subjectTime}']);
		$('#subNum').text(('0000'+'${sub.subjectNum }').slice(-4));
    
        //update
        $('#subBtnUp').on('click',function(){
            event.preventDefault();

            if(!/^[0-9]*$/.test($('#subjectTotal').val())){
                alert('학생수는 숫자 입력만 가능합니다.');
                $('#subjectTotal').val('');
                subjectTotal.focus();
            }else if($('#subjectTotal').val() > 22){
                alert('학생수는 22명을 초과하실 수 없습니다.');
                $('#subjectTotal').val('');
                subjectTotal.focus();
            }else if($('#subjectTotal').val() === ''){
                alert('학생수를 입력해주세요.');
                subjectTotal.focus();
            }else if($('#subjectSum').val() === ''){
                alert('수업개요를 입력해주세요.');
                subjectSum.focus();
            }else if($('#subjectGoal').val() === ''){
                alert('수업목표를 입력해주세요.');
                subjectGoal.focus();
            }else if($('#subjectData').val() === ''){
                alert('수업자료를 입력해주세요.');
                subjectData.focus();
            }else if($('#subjectContents').val() === ''){
                alert('수업내용을 입력해주세요.');
                subjectContents.focus();
            }else{
                //아작스 serilize()어쩌고 사용하기
                $.ajax({
                	url:'/univ/pro/subUpdateForm.do',
                	data:$('#subFrmUp').serialize(),
                	type : 'post'
                })
                .done(data=>{
                	if(data ==='Y'){
                		location.href='/univ/pro/subApplySelect.do?subjectNo='+'${sub.subjectNo}';
                		alert('강의 수정이 성공적으로 처리되었습니다.');
                	}else if(data ==='N'){
                		alert('강의 수정 중에 오류가 발생하였습니다.');
                	}
                })
            }
        }); 
    </script>
</body>
</html>