<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="./resources/images/icons/favicon.png" />
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
<link rel="stylesheet" type="text/css" href="./resources/vendor/animate/animate.css">
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
	href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">
	<!-- header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2"> Your Cart </span>

				<div
					class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="./resources/images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								White Shirt Pleat </a> <span class="header-cart-item-info"> 1
								x $19.00 </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="./resources/images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Converse All Star </a> <span class="header-cart-item-info"> 1
								x $39.00 </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="./resources/images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Nixon Porter Leather </a> <span class="header-cart-item-info">
								1 x $17.00 </span>
						</div>
					</li>
				</ul>

				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="shoping-cart.html"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart </a> <a href="shoping-cart.html"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Content page -->
	<section class="bg0 p-t-52 p-b-20">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						
							<h4 style="margin-top:40px; " class="ltext-109 cl2 p-b-28">My Shopping Cart</h4>
							<table class="stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4" style="width:100%">
								<tr>
									<td style="width: 30%"></td>
									<td>상품명</td>
									<td>가격</td>
									<td>수량</td>
									<td>옵션</td>
								</tr>
							</table>
							<ul>
								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Fashion </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Beauty </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Street Style </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Life Style </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										DIY & Crafts </a></li>
							</ul>
							
						</div>

						<div class="flex-w flex-t p-t-16">
							<span class="size-216 stext-116 cl8 p-t-4"> Tags </span>

							<div class="flex-w size-217">
								<a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Streetstyle </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Crafts </a>
							</div>
						</div>

						<!--  -->
						<div class="p-t-40">
							<h5 class="mtext-113 cl2 p-b-12">Leave a Comment</h5>

							<p class="stext-107 cl6 p-b-40">Your email address will not
								be published. Required fields are marked *</p>

							<form>
								<div class="bor19 m-b-20">
									<textarea class="stext-111 cl2 plh3 size-124 p-lr-18 p-tb-15"
										name="cmt" placeholder="Comment..."></textarea>
								</div>

								<div class="bor19 size-218 m-b-20">
									<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text"
										name="name" placeholder="Name *">
								</div>

								<div class="bor19 size-218 m-b-20">
									<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text"
										name="email" placeholder="Email *">
								</div>

								<div class="bor19 size-218 m-b-30">
									<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text"
										name="web" placeholder="Website">
								</div>

								<button
									class="flex-c-m stext-101 cl0 size-125 bg3 bor2 hov-btn3 p-lr-15 trans-04">
									Post Comment</button>
							</form>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">
						<div class="bor17 of-hidden pos-relative">
							<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55"
								type="text" name="search" placeholder="Search">

							<button
								class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
								<i class="zmdi zmdi-search"></i>
							</button>
						</div>

						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-33">Categories</h4>

							<ul>
								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Fashion </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Beauty </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Street Style </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										Life Style </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										DIY & Crafts </a></li>
							</ul>
						</div>

						<div class="p-t-65">
							<h4 class="mtext-112 cl2 p-b-33">Featured Products</h4>

							<ul>
								<li class="flex-w flex-t p-b-30"><a href="#"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img
										src="./resources/images/product-min-01.jpg" alt="PRODUCT">
								</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04"> White
											Shirt With Pleat Detail Back </a> <span
											class="stext-116 cl6 p-t-20"> $19.00 </span>
									</div></li>

								<li class="flex-w flex-t p-b-30"><a href="#"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img
										src="./resources/images/product-min-02.jpg" alt="PRODUCT">
								</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
											Converse All Star Hi Black Canvas </a> <span
											class="stext-116 cl6 p-t-20"> $39.00 </span>
									</div></li>

								<li class="flex-w flex-t p-b-30"><a href="#"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img
										src="./resources/images/product-min-03.jpg" alt="PRODUCT">
								</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04"> Nixon
											Porter Leather Watch In Tan </a> <span
											class="stext-116 cl6 p-t-20"> $17.00 </span>
									</div></li>
							</ul>
						</div>

						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-20">Archive</h4>

							<ul>
								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> July 2018 </span> <span> (9) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> June 2018 </span> <span> (39) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> May 2018 </span> <span> (29) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> April 2018 </span> <span> (35) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> March 2018 </span> <span> (22) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> February 2018 </span> <span> (32) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> January 2018 </span> <span> (21) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> December 2017 </span> <span> (26) </span>
								</a></li>
							</ul>
						</div>

						<div class="p-t-50">
							<h4 class="mtext-112 cl2 p-b-27">Tags</h4>

							<div class="flex-w m-r--5">
								<a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Fashion </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Lifestyle </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Denim </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Streetstyle </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Crafts </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	

	
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
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
	<script src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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