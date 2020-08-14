<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>영수증</title>
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
	href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!--===============================================================================================-->
<!-- Bootstrap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />

	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-0-lg"
					style="width: 150%">
						<h2 style="margin-top: 40px;"
							class="cl2 p-b-20 theme_color cart-main-font cart-title-border">ORDER
							LIST</h2>

						<!-- order Content -->
						<div id="orderForm" class="boardList xans-order-form" style="font-size: 20px;">
							<table class="table-cart-01">
								<thead>
									<tr>
										<th scope="col" class="table_cell">상품</th>
										<th scope="col" class="table_cell">수량</th>
										<th scope="col" class="table_cell">소계</th>
										<th scope="col" class="table_cell">주문</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${getorderitem}" var="list">
									<tr class="table_row">
											<td class="cart_table_line-01" style="padding: 0; border-left: 0px; border-right: 0px;">
												<div class="product_item_wrap" style="padding: 10px;">
													<div class="product_item--price">
														<div class="product_item--price" style="font-size: 18px;">
														<span class="payStoreName">${list.payContent}</span>
													</div>
												</div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap" style="padding: 10px;">
													<div class="product_item--price" style="font-size: 18px;">
													<span class="count">${list.payCount}</span></div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap" style="padding: 10px;">
												<fmt:formatNumber value="${list.payTotal}" type="number" var="payTotal"/>
													<div class="product_item--price" style="font-size: 18px;">
													 <fmt:formatNumber value="${list.payTotal}" type="number"  var="getTotalPay"/>
													<span class="sm_total">${getTotalPay}원</span>
													</div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap" style="padding: 10px;">
													<div class="product_item--price" style="font-size: 18px;">
													<span class="paystate">${list.payState}</span></div>
												</div>
											</td>
										</tr>
										</c:forEach>

								</tbody>
							</table>

							<!-- Content -->
							<!-- 주문자 정보 -->
							<div class="orderArea">
								<div class="title">
									<h3 class="order-title">주문자 정보</h3>
								</div>
								<div class="boardWrite">
									<table style="margin: 0 auto; width: 100%;">

										<tbody>
											<c:forEach items="${getorderuser}" var="user">
												<tr>
													<th scope="row">주문자 성함</th>
													<td><label
														style="padding: 5px;">
															${user.userName} </label></td>
												</tr>
												<tr>
													<th scope="row">주소</th>
													<td><label
														style="padding: 5px;">
															${user.payAddr} </label></td>
												</tr>
												<tr>
													<th scope="row">연락처</th>
													<td><label
														style="padding: 5px;">
															${user.payTel} </label></td>
												</tr>
											</c:forEach>
										</tbody>

									</table>
								</div>
							</div>
							<!-- 결제 예정 금액 -->
							<div class="title">
								<h3 class="order-title">결제 예정 금액</h3>
							</div>
							<div class="totalArea">
								<div class="">
									<table style="margin: 0 auto; width: 100%;">
										<thead style="background: #f7f7f7;">
											<tr>
												<th scope="col" style="text-align: center; padding: 20px;
												    border-bottom: 1px solid #c9c9c9;
												    border-right: 1px solid #eee;">
													<strong>총 주문 금액</strong>
												</th>
												<th scope="col" style="text-align: center; padding: 20px;
												    border-bottom: 1px solid #c9c9c9;">
												    <fmt:formatNumber value="${getorderprice}" type="number"  var="getPrice"/>
													<strong>${getPrice}원</strong> 
												</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- 유효성 체크  -->
	<!--===============================================================================================-->
	<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
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
	<script src="./resources/js/product.js"></script>
</body>
</html>