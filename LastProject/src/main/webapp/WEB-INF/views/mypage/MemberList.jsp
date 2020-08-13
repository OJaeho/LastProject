<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>시스템 관리자 페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="./resources/images/icons/favicon.png" />
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
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" type="text/css" href="./resources/css/hover.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->
<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-t-92"
		style="background-image: url('images/bg-01.jpg');"></section>
	<!-- header끝 -->
	<!-- Content page -->
	<section class="bg0 p-b-120">
		<div class="container">
			<!-- 좌우측의 공간 확보 -->
			<h2>** 관리자 - 전체 회원 관리 **</h2>

			<div class="flex-w flex-l-m filter-tope-group m-tb-10"
				style="padding-left: 0.5em;">

				<div
					class="flex-c-m stext-106 cl6 size-105 bor4 pointer product-hov trans-04 m-tb-4 js-show-search">
					<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
					<i
						class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
					ID 검색
				</div>
				<form action="membergetpage.market" method="get">
					<div class="button">
						<input type="submit" class="btn btn-link" style="color: #009a45;"
							name="order" value="전체보기">
					</div>
				</form>
				<form action="marketsearch.market" method="get">
					<div class="button">
						<input type="submit" class="btn btn-link" style="color: #009a45;"
							name="order" value="시장관리자">
					</div>
				</form>
				<form action="sellersearch.market" method="get">
					<div class="button">
						<input type="submit" class="btn btn-link" style="color: #009a45;"
							name="order" value="판매자">
					</div>
				</form>
				<form action="usersearch.market" method="get">
					<div class="button">
						<input type="submit" class="btn btn-link" style="color: #009a45;"
							name="order" value="고객">
					</div>
				</form>

			</div>

			<!-- Search id -->
			<div class="dis-none panel-search w-full p-t-10 p-b-15">
				<div class="border-pro dis-flex p-l-15"
					style="width: 20rem; height: 5rem;">
					<form action="searchuser.market" method="get" value="검색">
						<input class="pro-text cl2 size-114 plh2 p-r-15" type="text"
							name="keyword" placeholder="키워드를 입력하시오."> <input
							class="btn-addr" type="hidden" value="검색">
					</form>
				</div>
			</div>

			<table style="width: 100%">

				<tr style="background-color: #009a45; color: white; ">

					<th style="text-align: center;">아이디</th>
					<th style="text-align: center;">회원명</th>
					<th style="text-align: center;">이메일</th>
					<th style="text-align: center;">전화번호</th>
					<th style="text-align: center;">생년월일</th>
					<th style="text-align: center;">주소</th>
				</tr>
			<c:forEach items="${memberget}" var="member">
				<tr>
					<td style="border: solid 1px lightgrey; padding: 5px;">
					<a href="memberdetail2.user?userName=${member.userName}" style="font-size: 15px;color: #009a45;">
					${member.userName}</a>
					</td>
					<td style="border: solid 1px lightgrey; padding: 5px;">${member.mName}</td>
					<td style="border: solid 1px lightgrey; padding: 5px;">${member.mEmail}</td>
					<td style="border: solid 1px lightgrey; padding: 5px;">${member.mTel}</td>
					<td style="border: solid 1px lightgrey; padding: 5px;">${member.mBirth}</td>
					<td style="border: solid 1px lightgrey; padding: 5px;">${member.addr}</td>
				</tr>
				</c:forEach>
			</table>

		</div>
	</section>
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />

	<!-- script    -->


	<!-- 유효성 체크  -->
	<!--===============================================================================================-->

	<!--===============================================================================================-->
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->

	<!--===============================================================================================-->
	<!-- <script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script> -->
	<script type="text/javascript" src="resources/js/nh.js"></script>
	<!-- <script src='resources/js/jquery.validate.min.js' type="text/javascript"></script> -->
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/js_userinput.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="./resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/slick/slick.min.js"></script>
	<script src="./resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script
		src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="./resources/js/main.js"></script>


</body>
</html>