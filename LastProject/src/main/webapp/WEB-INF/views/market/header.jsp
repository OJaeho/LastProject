<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<!-- google font -->
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
/*로그인팝업  */
.btnn {<!--모든 버튼에대한 css설정 --> text-decoration:none;
	font-size: 50px;
	color: white;
	padding: 10px 20px 10px 20px;
	margin: 20px;
	display: inline-block;
	border-radius: 10px;
	transition: all 0.1s;
	text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
	font-family: 'Lobster', cursive;
	
	
}

.btnn:active {
	transform: translateY(3px);
}

.btnn.red {
	background-color: green;
	border-bottom: 5px solid darkgreen;
}

.btnn.red:active {
	border-bottom: 2px solid #c1370e;
}
/*로그인팝업  */
.log_out {
	font-family: Poppins-Regular;
	font-size: 14px;
	font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Arial, Helvetica,
		sans-serif, Lucida, Grande, 'Microsoft YaHei', 'Hiragino Sans GB',
		SimSun, Meiryo;
	line-height: 1.8;
	height: 100%;
	color: #FFF;
	border-right: 1px solid rgba(255, 255, 255, 0.3);
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: rgba(255, 255, 255, 0.3);
	background-color: transparent;
}
</style>

<script type="text/javascript">
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {
		if (!event.target.matches('.dropbtn')) {

			var dropdowns = document.getElementsByClassName("dropdown-content");
			var i;
			for (i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
					openDropdown.classList.remove('show');
				}
			}
		}
	}
</script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="./resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<!--===============================================================================================-->
</head>

<body class="animsition">

	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">전통시장의 정을 온라인으로 느껴보세요!</div>

					<div class="right-top-bar flex-w h-full">

						<sec:authorize access="isAuthenticated()">
							<form:form action="${pageContext.request.contextPath}/logout"
								method="POST" class="flex-c-m trans-04 p-lr-25" >
								<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search" style="">
									<img
										style="width: 40px; border-radius: 30px; -moz-border-radius: 30px; -khtml-border-radius: 30px; -webkit-border-radius: 30px;"
										src="./resources/images/profile.jpg">
								</div>
								<a style="color: white;" class="flex-c-m trans-04 p-lr-25">
								<%=request.getRemoteUser() %>님 환영합니다.</a>
								<input type="submit" value="로그아웃" class="flex-c-m trans-04 p-lr-25"
									style="background-color: transparent; color: white;" />
							</form:form>
						</sec:authorize>
						
						<sec:authorize access="isAnonymous()">
							<a href="memberRegist.user" class="flex-c-m trans-04 p-lr-25">
								회원가입 </a>
							<a href="logincheck.checking" class="flex-c-m trans-04 p-lr-25">로그인
							</a>
						</sec:authorize>

						<a href="mypage.checking" class="flex-c-m trans-04 p-lr-25">
							마이페이지 </a>
						
					<a href="shopping.checking" class="flex-c-m trans-04 p-lr-25">
							장바구니 </a>
					</div>
				</div>
			</div>
			<!-- Topbar end -->
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="folliumtest.user" class="logo"> <img
						style="width: 200px; height: 60px;"
						src="./resources/images/logo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li><a href="#">우리 시장엔</a>
								<ul class="sub-menu">
									<li><a href="introMarket.user">시장소개</a></li>
									<li><a href="waytoMarket.user">오시는길</a></li>
									<li><a href="storelist.user">업종별상점</a></li>
									<li><a href="marketIssue.user">시장이슈</a></li>
								</ul></li>

							<li><a href="tourHome.user">거리마다</a>
							<li class="label1" data-label1="hot"><a
								href="getproduct.user">우리 것이</a></li>
							<li><a href="#">있어요</a>
								<ul class="sub-menu">
									<li><a href="getNoticeList.user">공지사항</a></li>
									<li><a href="getQnAList.user">Q&A</a></li>
								</ul></li>
						</ul>
					</div>

					<!-- Header desktop END -->
				</nav>
			</div>
		</div>
		<!-- Header END -->

		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="./resources/images/icons/icon-close2.png" alt="CLOSE">
				</button>
				
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a class="btnn red"	href="insertMarket.master">시장등록</a>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_MARKET')">
				<a class="btnn red"	href="insertstore.market">상점등록</a>
				<a class="btnn red"	href="insertTour.user">관광지등록</a>
				<a class="btnn red"	href="insertNotice.market">공지등록</a>
				<a class="btnn red"	href="insertIssue.market">이슈등록</a>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_SELLER')">
				<a class="btnn red" href="insertproduct.seller" >상품등록</a> 
				
				</sec:authorize>
				
			
			</div>
		</div>


	</header>

</body>
</html>