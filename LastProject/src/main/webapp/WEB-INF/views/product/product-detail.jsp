<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page import="com.vo.ProductVO"%>
<%@page import="com.vo.CategoryVO"%>
<%@page import="com.vo.StoreVO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Product Detail</title>
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
	href="./resources/css/product-detail.css">

<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">

			<c:forEach items="${productget}" var="item">
				<div class="row" style="width: 1200px;">
					<div class="col-md-6 col-lg-7 p-b-30" style="width: 1200px;">
						<div class="p-l-25 p-r-30 p-lr-0-lg" style="width: 1200px;">
							<hr />
							<br />
							<div class="wrap-slick3 flex-sb flex-w"
								style="width: 1350px; margin: auto;">
								<img src="${item.pImg1}" style="width: 500px; height: 400px;">
								<div class="col-md-6 col-lg-5 p-b-30">
									<div class="p-r-50 p-t-5 p-lr-0-lg">
										<h4 class="mtext-105 cl2 js-name-detail p-b-14">
											[${item.sName}]<br />${item.pName}</h4>
										<input type="hidden" value="${item.pName}" id="itemname" />

										<div>

											<b>${item.pDetail}</b>
										</div>




										<!-- 옵션박스 -->
										<div class="p-t-33">
											<hr />

											<select id="size">
												<option value="">---------옵션선택---------</option>
												<c:forEach items="${optionget}" var="item2">
													<option id="price" value="${item2.pPrice}"
														value2="${item2.pOption1}">[ ${item2.pOption1} -
														${item2.pPrice} ]</option>
												</c:forEach>
											</select>

										</div>
										<!-- 옵션박스 -->


										<!-- 수량버튼 -->
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" id="numm" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
											<input type="hidden" id="hiddennum" />
										</div>
										<!-- 수량버튼 -->

										<!-- 담기버튼 -->
										<input type="button" name="addsubcart" id="addProduct"
											style="width: 50px; background-color: lightgrey; color: green;"
											value="담기" />
											<br/>
										<form name="subcart">
											<table style="width: 482px; border: 1px solid green;">
												<thead>
													<tr>
														<td style="width: 20%;">옵션</td>
														<td style="width: 20%;">수량</td>
														<td style="width: 30%;">가격</td>
													</tr>
												</thead>
												<tbody id="dynamicTbody">
												</tbody>
												<tfoot>
													<tr>
														<td>총액 :</td>
														<td></td>
														<td><input type="text" id="paytotal"></td>
													</tr>
												</tfoot>
											</table>
											<hr />
											<table style="width: 482px;">
												<tr>
													<td><input class="btn btn-success" type="submit" value="바로 결제" style="" 
													onclick="javascript: form.action='/manage/update';" /></td>
													<td><input class="btn btn-success" type="submit" value="장바구니 담기" style="" 
													onclick="javascript: form.action='shopingCart.user';" /></td>
												</tr>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="bor10 m-t-50 p-t-43 p-b-40"
						style="border-color: green; width: 1500px;">
						<!-- Tab01 -->
						<div class="tab01">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">

								<li class="nav-item p-b-10"><a class="nav-link"
									data-toggle="tab" href="#information" role="tab">구매전 주의사항</a></li>

								<li class="nav-item p-b-10"><a class="nav-link"
									data-toggle="tab" href="#reviews" role="tab">REVIEW</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content p-t-43">

								<!-- Q & A탭 -->
								<div class="tab-pane fade show active" id="description"
									role="tabpanel">
									<div class="row" style="width: 1087px; margin: auto;">
										<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto"
											style="margin: auto;">${item.pName}</div>
									</div>
								</div>
								<!-- Q & A탭 -->


								<!-- 구매전 주의사항탭 -->
								<div class="tab-pane fade" id="information" role="tabpanel">
									<div class="row" style="width: 1087px; margin: auto;">
										<b>시장 장보기의 특성상 배송이 불가능한 지역의 배달은 불가하며, 상점의 상황에따라 주문취소가 발생할
											수 있습니다.</b>
									</div>
								</div>
								<!-- 구매전 주의사항탭 -->


								<!-- REVIEW탭 -->
								<div class="tab-pane fade" id="reviews" role="tabpanel">
									<div class="row" style="width: 1168px; margin: auto;">
										<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto"
											style="width: 1168px; margin: auto;">
											<img src="${item.pName}" style="width: 582px; margin: auto;">
										</div>
									</div>
								</div>
								<!-- REVIEW탭 -->


							</div>
							<!-- Tab panes -->

						</div>
					</div>
				</div>
			</c:forEach>
			<div style="text-align: center;">
				<img align="middle"
					src="https://shop-phinf.pstatic.net/20200211_72/1581380892722e31C6_JPEG/FOOD_%C0%E5%BA%B8%B1%E2_INFO_%B8%C1%BF%F8%BD%C3%C0%E5_%C5%E4%BF%E4%C0%CF%BC%F6%C1%A4.jpg?type=w860">
			</div>
		</div>
	</section>

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