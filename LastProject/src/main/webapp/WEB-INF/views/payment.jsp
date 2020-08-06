<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>

<title>Market 3</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/market.css" />
<!--===============================================================================================-->
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
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->

</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />

	<!-- Title page -->
	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80" style="margin: 0 auto;">
					<div class="p-r-45 p-r-0-lg">
						<h2 style="margin-top: 40px;"
							class="cl2 p-b-20 theme_color cart-main-font cart-title-border">ORDER FORM</h2>
							
						<!-- order Content -->
						<div>
							<table class="table-cart-01">
								<thead>
									<tr>
										<th scope="col" class="table_cell">상품정보</th>
										<th scope="col" class="table_cell">판매 점포</th>
										<th scope="col" class="table_cell">수량</th>
										<th scope="col" class="table_cell">소계</th>
										<th scope="col" class="table_cell">주문 방법</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${result}" var="list">
										<tr class="table_row">
											<td class="cart_table_line-02">
												<div class="product_desc_wrap--pGO3mDnHCR">
													<div class="product_description--aMGcm-GMeU" id="cart-name">
														<span class="product_thumb--39N9M1GjTm"> 
															<img src="${list.payImg}" class="product_img--mmk3PpY1tk">
														</span>
														<a href="product-detail.user?pName=${list.payTitle}&pPrice=${list.payPrice}">
															${list.payTitle}
															<input type="hidden" class="pid" value="${list.pId}">
														</a>
															<input type="hidden" value="${list.payContent}" class="pContent">
															<input type="hidden" value="${list.bId}" class="payBid">
													</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
													<div class="product_item--price">
														<a href="#">${list.payStoreName}</a>
													</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
													<div class="product_item--price">${list.payCount}</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
												<fmt:formatNumber value="${list.payTotal}" type="number" var="payTotal"/>
													<div class="product_item--price">${payTotal}</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
													<div class="product_item--price">${list.payState}</div>
												</div>
											</td>
										</tr>
											</c:forEach>
										</tbody>
								</table>
							</div>

							<!-- Content -->
							<!-- 주문자 정보 -->
							<div class="orderArea">
								<div class="title">
									<h3 style="float: left; margin-bottom: 10px">주문자 정보</h3>
								</div>
								<div class="">
									<table border="1" summary="">
										<caption>주문 정보 입력</caption>
										<colgroup>
											<col style="width: 139px;">
											<col style="width: auto;">
										</colgroup>
									<tbody class="">
										<tr>
											<th scope="row">
											주문자 성함
											</th>
											<td>
											<input type="text" value="${name}" id = "cc" style="border: 1px solid;"/>
											</td>
										</tr>
										<tr>
											<th scope="row">
											주소
											</th>
											<td>
											<input type="text" value="${addr}" id="aa" style="border: 1px solid;"/>
											</td>
										</tr>
										<tr>
											<th scope="row">
											Tel
											</th>
											<td>
											<input type="text" value="${tel}" id="bb"/>
											</td>
										</tr>
										<tr>
											<th scope="row">
											주문자 정보로 배송
											</th>
											<td>
											<input type="checkbox" id="infomation">
											</td>
										</tr>
									</tbody>
									</table>
								</div>
							</div>
							
							<!-- 배송 정보 -->
							<div id="orderArea">
								<div class="title">
									<h3>배송 정보</h3>
								</div>
								<div class="">
									<table border="1" summary="">
										<caption>배송 정보 입력</caption>
										<colgroup>
											<col style="width: 139px;">
											<col style="width: auto;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">받으시는 분</th>
												<td>
												<input type="text" style="border: 1px solid;" id="name1"/>
												</td>
											</tr>
											<tr>
												<th scope="row">주소</th>
												<td>
												<input type="text" style="border: 1px solid;" id="addr1"/>
												<input class="btn btn-addr" id="findpostcode1" type="button" value="우편번호">
												</td>
											</tr>
											<tr>
												<th scope="row">연락처</th>
												<td>
												<input type="text" style="border: 1px solid;" id="tel1"/>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 결제 예정 금액 -->
							<div class="title">
								<h3>결제 예정 금액</h3>
							</div>
							<div class="totalArea">
								<div class="">
									<table border="1" summary="">
										<thead style="background: #f7f7f7;">
										<tr>
											<th scope="col"
											style="text-align: center;
													padding: 20px">
											<strong>총 주문 금액</strong>
											</th>
										</tr>
										</thead>
										<tbody class="text-center">
											<tr>
												<td class=""
													style="text-align: center;
															padding: 30px;">
												</td>
											</tr>										
										</tbody>
									</table>
								</div>
							</div>
							
							<hr>
							<br>
							<button style="width: 198px; height: 56px;">
								<span>결제하기</span>
							</button>
						</div>
					</div>
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
	<script src="./resources/js/jh.js"></script>
   	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>