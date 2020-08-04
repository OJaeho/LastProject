<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<%@page import="com.vo.ProductVO"%>
<%@page import="com.vo.CategoryVO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="https://fonts.googleapis.com/css?family=Fredoka One" rel="stylesheet">
<title>Product</title>
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
<link rel="stylesheet" type="text/css"
	href="./resources/css/product.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->
<style type="text/css">
#floatMenu {
	float:right;
	position: absolute;
	width: 200px;
	height: auto;
	left: 1650px;
	top: 400px;
	background-color: white;
	border:solid 1px yellow;
	color: #black;
}
</style>
</head>
<body class="animsition">
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- 타이틀페이지 -->
	<section class="bg-img1 txt-center p-lr-15" id="title_section"
		style="background-image: url('images/bg-01.jpg');">
		<h2 class="tour-title theme_color type_block">
			<span class="notice_title_bullet them_background"></span> <img
				src="https://modo-phinf.pstatic.net/20171104_110/15097368212131akdH_JPEG/mosaI0btd3.jpeg?type=f320_320">
		</h2>
	</section>
	<!-- Content page -->
	<div class="container" style="width: 2000px;">
		<!-- Product -->

		<!-- category -->
		<div class="flex-w flex-sb-m">
			<div class="flex-w flex-l-m filter-tope-group m-tb-10"
				style="padding-left: 3em;">
				<c:forEach items="${categoryget}" var="cate">
					<form action="categoryitem.user" method="get">
						<div class="button">
							<input type="submit" class="btn btn-link" style="color: green;"
								name="cName" value="${cate.cName}">
						</div>
					</form>
				</c:forEach>
			</div>

			<div class="flex-w flex-c-m m-tb-10">

				<div
					class="flex-c-m stext-106 cl6 size-105 bor4 pointer product-hov trans-04 m-tb-4 js-show-search">
					<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
					<i
						class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
					상품 검색
				</div>
				<form action="highitem.user" method="get">
					<div class="button">
						<input type="submit" class="btn btn-link" style="color: grey;"
							name="order" value="가격 높은순">
					</div>
				</form>
				<form action="lowitem.user" method="get">
					<div class="button">
						<input type="submit" class="btn btn-link" style="color: grey;"
							name="order" value="가격 낮은순">
					</div>
				</form>
			</div>

			<!-- Search product -->
			<div class="dis-none panel-search w-full p-t-10 p-b-15">
				<div class="border-pro dis-flex p-l-15"
					style="width: 20rem; height: 5rem;">
					<form action="searchproduct.user" method="get" value="검색">
						<input class="pro-text cl2 size-114 plh2 p-r-15" type="text"
							name="keyword" placeholder="키워드를 입력하시오."> <input
							class="btn-addr" type="hidden" value="검색">
					</form>
				</div>
			</div>
		</div>
		<div id="floatMenu" >
		<ul>
		<img src="./resources/images/logo.png" style="width: 200px;">
		</ul>
		<ul style="text-align: center;">
		<img src="./resources/images/cart.PNG" style="width: 50px;height:50px;">
		</ul><br/>
		<table style="width: auto;">
		
		<c:forEach items="${cartget}" var="list">
		<input type="hidden" >
		<tr style="border: solid 1px lightgrey; ">
		<td><img src="${list.PIMG1}" style="width: 40px;height:40px; border-radius: 30px; -moz-border-radius: 30px; -khtml-border-radius: 30px; -webkit-border-radius: 30px;"></td>
		<td style="font-family: 'Fredoka One';">${list.BTITLE} ${list.BOPTION} ${list.BQUANTITY}EA</td>
		</tr>
		</c:forEach>
		</table>
		<ul>
		<br/>
		<a href="shopping.checking" style="color: green;">장바구니로 이동
		</ul>
		</div>

		<!-- 상품 -->
		<div class="row isotope-grid">

			<c:choose>
				<c:when test="${empty productget}">
					<div>
						<img class='readyimg' src="./resources/images/ready.jpg"
							alt="IMG-PRODUCT">
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach items="${productget}" var="list">

						<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="${list.pImg1}" alt="IMG-PRODUCT"> <a href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a
											href="product-detail.user?pName=${list.pName}&pPrice=${list.pPrice}&pId=${list.pId}"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											${list.pName} </a> <span class="stext-105 cl3">
											${list.pPrice}원 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="./resources/images/icons/icon-heart-01.png" alt="ICON">
											<img class="icon-heart2 dis-block trans-04 ab-t-l"
											src="./resources/images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>

	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	<jsp:include page="/WEB-INF/views/market/footer.jsp"></jsp:include>


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
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
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
	<script src="./resources/js/product.js"></script>
</body>
</html>