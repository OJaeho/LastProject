<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Market 3</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png"
	href="./resources/images/icons/favicon.png" />
<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->

<style>
.test {
	display: block;
	outline: none;
	border: none;
	padding-bottom: 59px;
	padding-top: 58px;
}
</style>

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
				<div class="col-md-8 col-lg-9 p-b-80" style="margin: 0 auto;">
					<div class="p-r-45 p-r-0-lg">

						<h2 style="margin-top: 40px;"
							class="cl2 p-b-20 theme_color cart-main-font cart-title-border">SHOPPING CART</h2>
						
						<div class="container">
							<div class="row" id="tour">
								<ul class="nav nav-tabs" style="margin-left: 20%;">
									<li role="presentation" style="font-size: x-large;"
										class="navLi">
										<a href="shopping.checking">전체상품 보기</a>
									</li>
									<li role="presentation" style="font-size: x-large;"
										class="navLi"><a href="shopping.checking?bState=픽업">포장예약상품
											보기</a>
									</li>
									<li role="presentation" style="font-size: x-large;"
										class="navLi"><a href="shopping.checking?bState=배송">배송상품
											보기</a>
									</li>
								</ul>
							</div>
						</div>

						<div>
							<table class="table-cart-01">
								<thead>
									<tr>
										<th scope="col" class="table_cell"></th>
										<th scope="col" class="table_cell">상품정보</th>
										<th scope="col" class="table_cell">수량</th>
										<th scope="col" class="table_cell">옵션</th>
										<th scope="col" class="table_cell">주문</th>
										<th scope="col" class="table_cell">가격</th>
										<th scope="col" class="table_cell">선택</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="list">
										<tr class="table_row">
											<td class="cart_table_line-02">
												<div class="product_item_wrap">
													<div class="product_item--price">
											<input type="hidden" value="${list.bId }"/>
													<form action="deleteShoppingCart.user">
														<input type="hidden" value="${list.bId}" name="bId" id="cartBid" />
														<input type="checkbox" class="totalcheck" checked="checked">
													</form>
													<input type="hidden" value="${list.bQuantity*list.bPrice}">
													</div>
												</div>
											</td>
											<td class="cart_table_line-02">
												<div class="product_desc_wrap--pGO3mDnHCR">
													<div class="product_description--aMGcm-GMeU" id="cart-name">
														<span class="product_thumb--39N9M1GjTm"> 
														<img src="${list.bImg }" class="product_img--mmk3PpY1tk">
														</span>  
														<a href="#" class="test">${list.bTitle}</a>
													</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
													<div class="product_item--price">${list.bQuantity}</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
													<div class="product_item--price">${list.bOption}</div>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
													<div class="product_item--price">${list.bState}</div>
													<input type="hidden" value="${list.bId }"/>
												</div>
											</td>
											<td class="cart_table_line-01">
												<div class="product_item_wrap">
												<fmt:formatNumber value="${list.bPrice}" type="number" var="bPrice"/>
													<div class="product_item--price">${bPrice}</div>
												</div>
											</td>
											<td class="cart_table_line-01">
											<div class="product_item_wrap">
												<div class="product_item--price">
												<form action="deleteShoppingCart.user">
													<input type="hidden" value="${list.bId}" name="bId" id="cartBid" />
													<input type="button" src="./resources/images/delete_product.png" id="cancleCart" value="삭제" class="cancleCart join-btn"> 
												</form>
												</div>
											</div>
												<input type="hidden" value="${list.bId }"/>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 총 주문금액  -->
						<div id="orderTotal">
							<table style="width: 100%; border: 0; border-spacing: 0;">
								<tbody>
								<tr>
									<td style="padding-bottom: 10px;">
									총 주문금액 : 
									<span class="price--JIZ5vfiqW7">
									<strong>
									<fmt:formatNumber value="${total}" type="number" var="numberType"/>
									<span style="font-weight: 900;
												font-size: 15px;
												margin: 0 0 0 auto;
												text-align: right;">
									${numberType}원
									</span>
									</strong>
									</span>
									</td>
								</tr>
								</tbody>
							</table>
							<div align="right" class="m-b-20"></div>
						</div>
						
						<!-- 장바구니 페이지 버튼 -->
						<div class="flex-w flex-t p-t-16 cart-right">
							<form action="payment.user" style="padding: 0 5px;">
								<input type="hidden" id="boxValue" name="boxValue">
								<input type="submit" id="payBtn" value="결제" class="join-btn flex-c-m cl0 size-121 bg3 p-lr-15 trans-04 pointer">
								<br/>
							</form>
							 <a href="getproduct.user">
							 <button class="join-btn flex-c-m cl0 size-121 bg3 p-lr-15 trans-04 pointer">
									쇼핑 계속하기
							</button>
							</a>
						</div>
					</div>
				</div>


						<!-- 퀵메뉴(자동스크롤바 영역) -->
<!-- 						<div class="p-t-55" id="quickPanel"> -->
<!-- 							<h4 class="mtext-112 cl2 p-b-33">즐겨찾기</h4> -->
<!-- 							<table id="quickMenu" style="width: 100%;"> -->
<!-- 								<tr> -->
<!-- 									<td style="height: 30px; font-size: xx-large;"><a href="#" -->
<!-- 										class="recommendation bor18">최근구매이력 </a> -->
<!-- 									<td /> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td style="height: 30px; font-size: xx-large;"><a href="#" -->
<!-- 										class="recommendation bor18">마이페이지</a> -->
<!-- 									<td /> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td style="height: 30px; font-size: xx-large;"><a href="#" -->
<!-- 										class="recommendation bor18">장바구니 </a> -->
<!-- 									<td /> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td style="height: 30px; font-size: xx-large;"><a href="#" -->
<!-- 										class="recommendation bor18 ">주간 인기 상품</a> -->
<!-- 									<td /> -->
<!-- 								</tr> -->
<!-- 							</table> -->
<!-- 						</div> -->
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
	<%-- 	<jsp:include page="/WEB-INF/views/market/footer.jsp" /> --%>

	<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="./resources/js/bootstrap.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="./resources/vendor/select2/select2.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
	<script
		src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script
		src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="./resources/js/main.js"></script>
	<script src="./resources/js/jh.js"></script>
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
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
</body>
</html>