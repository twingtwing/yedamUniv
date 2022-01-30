<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
        <div class="page-brand">
          <a class="link" href="/univ/all/home.do">
            <span class="brand">YD
              <span class="brand-tip">공대</span>
            </span>
            <span class="brand-mini">YD</span>
          </a>
        </div>
        <div class="flexbox flex-1">
          <!-- START TOP-RIGHT TOOLBAR-->
          <ul class="nav navbar-toolbar">
            <li class="dropdown dropdown-user">
              <a class="nav-link dropdown-toggle link" data-toggle="dropdown">
                <img src="/univ/resources/mypage/myPageImages/스펀지밥.png" />
                <span></span>스펀지밥<i class="fa fa-angle-down m-l-5"></i
              ></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="/univ/stu/studentHome.do"><i class="fa fa-user"></i>학적정보</a>
                <li class="dropdown-d"></li>
                <a class="dropdown-item" id="logoutStu"><i class="fa fa-power-off"></i>로그아웃</a>
              </ul>
            </li>
          </ul>
          <!-- END TOP-RIGHT TOOLBAR-->
        </div>
      </header>
      <script type="text/javascript">
		$('#logoutStu').click(function(){
			let name = '${name}';
			$.ajax({
				url : '/univ/all/logout.do',
				type: 'post',
				data : {name:name}
			})
			.done(data=>{
				console.log(data);
				if(data !=''){
					alert(data+'님 안녕히가세요.')
					location.href='/univ/all/home.do';
				}
			});	
		});
	</script>