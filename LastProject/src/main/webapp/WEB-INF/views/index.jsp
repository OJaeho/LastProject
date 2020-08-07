<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>	
<%@page import="com.vo.NoticeVO"%>
<%@page import="com.vo.QnaVO"%>
<%@page import="com.vo.IssueVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
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
<!-- <link rel="stylesheet" type="text/css" href="./resources/css/hover.css"> -->
<!--===============================================================================================-->

</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<hr />
	<br />
	<br />
	<br />
	<br />

	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1"
					style="background-image: url(./resources/images/5_dr.png); width: 1000px; height: 600px; padding-top: 50px;">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInDown" data-delay="0">
								<span class="cl2 respon2" style="color: #FFF; font-weight: 800;">
									핫플레이스로 떠오르는 전통시장 </span>
<!-- 								<div class="animated-title"> -->
<!-- 								  <div class="text-top"> -->
<!-- 								    <div> -->
<!-- 								      <span>Welcome</span> -->
<!-- 								      <span>Market</span> -->
<!-- 								    </div> -->
<!-- 								  </div> -->
<!-- 								  <div class="text-bottom"> -->
<!-- 								    <div>SSAK 3!</div> -->
<!-- 								  </div> -->
<!-- 								</div> -->
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInUp" data-delay="800">
								<h2 class="cl2 p-t-19 p-b-43 respon1"
									style="color: #FFF; font-weight: 800;">08:00 ~ 20:00</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="zoomIn" data-delay="1600">
								<a href="product.html" style="color: white"
									class="flex-c-m cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									오늘도 활기찬 망원시장 </a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1"
					style="background-image: url(./resources/images/a11.png); width: 1000px; height: 600px; padding-top: 50px;">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rollIn" data-delay="0">
								<span class="ltext-101 cl2 respon2" style="color: lightgrey">
									먹방의 시대 </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1"
									style="color: white">즐거운 먹부림</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="slideInUp" data-delay="1600">
								<a href="product.html" style="color: white"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									전통시장 속으로 </a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1"
					style="background-image: url(./resources/images/a6.png); width: 1000px; height: 600px; padding-top: 50px;">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-101 cl2 respon2" style="color: red">
									전국 전통시장 다 모였다! </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1"
									style="color: maroon;">야! 너두 올수있어</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateIn" data-delay="1600">
								<a href="product.html" style="color: white"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									마켓싹쓰리 </a>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>

		<!-- Banner -->
		<div class="sec-banner bg0"
			style="padding-bottom: 110px; margin: auto;">
			<div class="flex-w flex-c-m" style="margin: auto;">


				<div class="size-202 m-lr-auto respon4" style="margin: auto;">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w" style="margin: auto;">

						<a href="storelist.user"
							class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l" style="margin: auto;">
								<span class="block1-name ltext-102 trans-04 p-b-8"> 상점 보러<img
									src="./resources/images/ga.png"
									style="width: 150px; height: 100px;">
								</span>
							</div>

						</a>
					</div>
				</div>

				<div class="size-202 m-lr-auto respon4" style="margin: auto;">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w" style="margin: auto;">

						<a href="getproduct.user"
							class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l" style="margin: auto;">
								<span class="block1-name ltext-102 trans-04 p-b-8"> 상품 보러<img
									src="./resources/images/ga.png"
									style="width: 150px; height: 100px;">
								</span>
							</div>

						</a>
					</div>
				</div>

				<div class="size-202 m-lr-auto respon4" style="margin: auto;">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w" style="margin: auto;">

						<a href="tourHome.user"
							class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l" style="margin: auto;">
								<span class="block1-name ltext-102 trans-04 p-b-8"> 관광지
									보러<img src="./resources/images/ga.png"
									style="width: 150px; height: 100px;">
								</span>
							</div>
						</a>
					</div>
				</div>

			</div>
			<hr />
		</div>
		<hr />

		<br />
		<br />
		<br />

		<div
			style="width: 2000px; height: 300px; margin: auto; padding-left: 50px; padding-right: 50px;">

			<div
				style="width: 30%; height: 100%; padding-top: 30px; padding-left: 50px; float: left;">
				<table class="table table-striped table-bordered table-hover"
					style="width: 500px;">
					<thead style="background-color: green; color: white;">
						<tr>
							<th>공지사항</th>
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${noticeget}" var="notice">
							<tr><th style='width:100;overflow:hidden;text-overflow:ellipsis' >
								${notice.nTitle}</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="getNoticeList.user" style="padding-left: 450px;">더보기</a>
			</div>


			<div
				style="width: 30%; height: 100%; padding-top: 30px; padding-left: 50px; float: left;">
				<table class="table table-striped table-bordered table-hover"
					style="width: 500px;">
					<thead style="background-color: green; color: white;">
						<tr>
							<th>시장이슈</th>
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${issueget}" var="notice">
							<tr><th style='width:100;overflow:hidden;text-overflow:ellipsis' >
								${notice.isTitle}</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="marketIssue.user" style="padding-left: 450px;">더보기</a>
			</div>

			<div
				style="width: 30%; height: 100%; padding-top: 30px; padding-left: 50px; float: left;">
				<table class="table table-striped table-bordered table-hover"
					style="width: 500px;">
					<thead style="background-color: green; color: white;">
						<tr>
							<th>Q & A</th>
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${qnaget}" var="notice">
							<tr><th style='width:100;overflow:hidden;text-overflow:ellipsis' >
								${notice.qTitle}</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="getQnAList.user" style="padding-left: 450px;">더보기</a>
			</div>
		</div>

	</section>



	<!-- footer -->

	<jsp:include page="/WEB-INF/views/market/footer.jsp" />

	<!--===============================================================================================-->
	<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
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