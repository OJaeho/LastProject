<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<p style="display: inline-flex;">
						<a href="<c:url value="/i18n.do?lang=ko" />" style="color: white; font-size: 15px;">한국어</a>
						<a href="<c:url value="/i18n.do?lang=en" />" style="color: white; font-size: 15px;">/
							English</a>
					</p>

					<div class="left-top-bar">
						<spring:message code="header.ment" arguments="${header}"
							text="default text" />

					</div>

					<div class="right-top-bar flex-w h-full">

						<sec:authorize access="isAuthenticated()">
							<form:form action="${pageContext.request.contextPath}/logout"
								method="POST" class="flex-c-m trans-04 p-lr-25">
								<div
									class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search"
									style="">
									<img
										style="width: 40px; border-radius: 30px; -moz-border-radius: 30px; -khtml-border-radius: 30px; -webkit-border-radius: 30px;"
										src="./resources/images/profile.jpg">
								</div>
								<a style="color: white;" class="flex-c-m trans-04 p-lr-25">
									<%=request.getRemoteUser()%> <spring:message
										code="header.welcome" arguments="${header}"
										text="default text" />
								</a>
								<input type="submit"
									value="<spring:message code="header.logout" arguments="${header}" text="default text" />"
									class="flex-c-m trans-04 p-lr-25"
									style="background-color: transparent; color: white;" />
							</form:form>
						</sec:authorize>

						<sec:authorize access="isAnonymous()">
							<a href="memberRegist.user" class="flex-c-m trans-04 p-lr-25">
								<spring:message code="header.join" arguments="${header}"
									text="default text" />
							</a>
							<a href="logincheck.checking" class="flex-c-m trans-04 p-lr-25"><spring:message
									code="header.login" arguments="${header}" text="default text" />
							</a>
						</sec:authorize>

						<a href="mypage.checking" class="flex-c-m trans-04 p-lr-25"> <spring:message
								code="header.mypage" arguments="${header}" text="default text" />
						</a> <a href="shopping.checking" class="flex-c-m trans-04 p-lr-25">
							<spring:message code="header.cart" arguments="${header}"
								text="default text" />
						</a>
					</div>
				</div>
			</div>



			<!-- Topbar end -->
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="index2.user?mkId=${sessionScope.mkId }" class="logo"> <img
						style="width: 200px; height: 60px;"
						src="./resources/images/logo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li><a href="#"><spring:message code="header.market"
										arguments="${header}" text="default text" /></a>
								<ul class="sub-menu">
									<li><a href="introMarket.user"><spring:message
												code="header.intromarket" arguments="${header}"
												text="default text" /></a></li>
									<li><a href="waytoMarket.user"><spring:message
												code="header.way" arguments="${header}" text="default text" /></a></li>
									<li><a href="storelist.user"><spring:message
												code="header.storecategory" arguments="${header}"
												text="default text" /></a></li>
									<li><a href="marketIssue.user"><spring:message
												code="header.issue" arguments="${header}"
												text="default text" /></a></li>
								</ul></li>

							<li><a href="tourHome.user"><spring:message
										code="header.street" arguments="${header}" text="default text" /></a>
							<li class="label1" data-label1="hot"><a
								href="getproduct.user"><spring:message code="header.our"
										arguments="${header}" text="default text" /></a></li>
							<li><a href="#"><spring:message code="header.have"
										arguments="${header}" text="default text" /></a>
								<ul class="sub-menu">
									<li><a href="getNoticeList.user"><spring:message
												code="header.notice" arguments="${header}"
												text="default text" /></a></li>
									<li><a href="getQnAList.user"><spring:message
												code="header.qna" arguments="${header}" text="default text" /></a></li>
								</ul></li>
						</ul>
					</div>

					<!-- Header desktop END -->
				</nav>
			</div>
		</div>
	</header>
	<!-- Header END -->

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="./resources/images/icons/icon-close2.png" alt="CLOSE">
			</button>

			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a class="btnn red" href="insertMarket.master"><spring:message
						code="header.insertmarket" arguments="${header}"
						text="default text" /></a>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_MARKET')">
				<a class="btnn red" href="insertstore.market"><spring:message
						code="header.insertstore" arguments="${header}"
						text="default text" /></a>
				<a class="btnn red" href="insertTour.user"><spring:message
						code="header.inserttour" arguments="${header}" text="default text" /></a>
				<a class="btnn red" href="insertNotice.market"><spring:message
						code="header.insertnotice" arguments="${header}"
						text="default text" /></a>
				<a class="btnn red" href="insertIssue.market"><spring:message
						code="header.insertissue" arguments="${header}"
						text="default text" /></a>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_SELLER')">
				<a class="btnn red" href="insertproduct.seller"><spring:message
						code="header.insertproduct" arguments="${header}"
						text="default text" /></a>

			</sec:authorize>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">

		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="folliumtest.user"><img src="./resources/images/logo.png"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">
			<div
				class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0">
				<p>
					<a href="<c:url value="/i18n.do?lang=ko" />"
						style="color: green; font-size: 13px;">한국어</a> <a
						href="<c:url value="/i18n.do?lang=en" />"
						style="color: green; font-size: 13px;">/ English</a>
				</p>
			</div>

			<sec:authorize access="isAuthenticated()">
				<form:form action="${pageContext.request.contextPath}/logout"
					method="POST">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart">
						<input type="submit" value="Logout"
							class="cl2 theme_color cart-main-font cart-title-border"
							style="font-size: 13px; font-weight: 800; letter-spacing: 7px; color: #009a45 !important; font-family: 'Nanum Gothic'; background: #fff0; padding: 10px 0 10px 0;">
					</div>
				</form:form>
			</sec:authorize>


			<sec:authorize access="isAnonymous()">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
					data-notify="2">
					<a href="logincheck.checking" style="color: black;"><i
						class="zmdi zmdi-face"></i></a>
				</div>
			</sec:authorize>

			<div
				class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0">
				<a href="mypage.checking" style="color: black;"><i
					class="zmdi zmdi-library"></i></a>
			</div>

			<div
				class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0">
				<a href="shopping.checking" style="color: black;"><i
					class="zmdi zmdi-shopping-cart"></i></a>
			</div>

		</div>
		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">

		<ul class="main-menu-m">
			<li><a href="#"><spring:message code="header.market"
						arguments="${header}" text="default text" /></a>
				<ul class="sub-menu-m">
					<li><a href="introMarket.user"><spring:message
								code="header.intromarket" arguments="${header}"
								text="default text" /></a></li>
					<li><a href="waytoMarket.user"><spring:message
								code="header.way" arguments="${header}" text="default text" /></a></li>
					<li><a href="storelist.user"><spring:message
								code="header.storecategory" arguments="${header}"
								text="default text" /></a></li>
					<li><a href="marketIssue.user"><spring:message
								code="header.issue" arguments="${header}" text="default text" /></a></li>
				</ul> <span class="arrow-main-menu-m"> <i
					class="fa fa-angle-right" aria-hidden="true"></i>
			</span></li>

			<li><a href="tourHome.user"><spring:message
						code="header.street" arguments="${header}" text="default text" /></a></li>

			<li><a href="getproduct.user" class="label1 rs1"
				data-label1="hot"><spring:message code="header.our"
						arguments="${header}" text="default text" /></a></li>

			<li><a href="#"><spring:message code="header.have"
						arguments="${header}" text="default text" /></a>
				<ul class="sub-menu-m">
					<li><a href="getNoticeList.user"><spring:message
								code="header.notice" arguments="${header}" text="default text" /></a></li>
					<li><a href="getQnAList.user"><spring:message
								code="header.qna" arguments="${header}" text="default text" /></a></li>
				</ul> <span class="arrow-main-menu-m"> <i
					class="fa fa-angle-right" aria-hidden="true"></i>
			</span></li>

		</ul>
	</div>

	</header>

</body>
</html>