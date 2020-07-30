<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="./resources/images/icons/favicon.png" />
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="./resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">

<style >
.test{
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
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">

						<h4 style="margin-top: 40px;" class="ltext-109 cl2 p-b-28">My Shopping Cart</h4>
						<div class="container">					
							<div class="row">
								<ul class="nav nav-tabs" style="margin-left: 20%;">
  									<li role="presentation" style="font-size: x-large;" class="navLi"><a href="shopping.user">전체상품 보기</a></li>
									<li><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
									<li role="presentation" style="font-size: x-large;" class="navLi"><a href="shopping.user?bState=픽업">포장예약상품 보기</a></li>
									<li><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
  									<li role="presentation" style="font-size: x-large;" class="navLi"><a href="shopping.user?bState=배송">배송상품 보기</a></li>
								</ul>
							</div>
						</div>
							
						<div class="flex-w flex-sb-m p-b-52">
							<table class="stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"
								style="width: 100%; margin-top: 40px;">
								<tr align="center">
									<td style="width:30%"></td>
									<td><h3>상품명</h3></td>
									<td><h3>가격</h3></td>
									<td><h3>수량</h3></td>
									<td><h3>옵션</h3></td>
									<td><h3>주문</h3></td>
								</tr>
								<c:forEach items="${list}" var= "list">
								<tr height="10px"></tr>
								<tr>
									<td align="center">
										<ul>
											<li class="bor18"><img
												src="${list.bImg }"
												style="width: 150px; height: 150px;" /></li>
										</ul>
									</td>
									<td align="center">
										<input type="hidden" value="${list.bId }"/>
										<ul>
											<li class="bor18"><a href="#" class="test"><label class="test">${list.bTitle}</label></a></li>
										</ul>
									</td>
									<td id="" align="center">
										<ul>
											<li class="bor18"><label class="test" >${list.bPrice}</label></li>
										</ul>
									</td>
									<td align="center">
										<ul>
											<li class="bor18"><label class="test" >${list.bQuantity}</label></li>
										</ul>
									</td>
									<td align="center">
										<ul>
											<li class="bor18"><label class="test">${list.bOption}</label></li>
										</ul>
										
									</td>
									<td align="center">
										<ul>
											<li class="bor18"><label class="test" >${list.bState}</label></li>
										</ul>
										<form action = "deleteShoppingCart.user">
										<input type="hidden" value="${list.bId}" name = "bId"/>
										<input type="submit" id="cancleCart" value="취소">
										</form>
									</td>
								</tr>
								</c:forEach>
							</table>
						</div>
						
						<div class="p-t-40">
							<h5 align="legt" class="mtext-113 cl2 p-b-12">총 결제 금액</h5>
								<label>총합 = </label><input type="text" value="${total} 원"/>
								<div align="right" class="bor19 m-b-20">
									
								</div>
						</div>
						<!-- 장바구니 페이지 버튼 -->
						<div class="flex-w flex-t p-t-16" style="margin-left: 69%">
							<a href="pay.user"><button style="background-color: black; color: white" class="aa flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
								결제하러 가기
							</button></a>
							<br/><br/><br/>
							<a href="getproduct.user"><button style="background-color: black; color: white;" class="aa flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
								쇼핑하러 가기
							</button></a>
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
						
						<!-- 퀵메뉴(자동스크롤바 영역) -->
						<div class="p-t-55" id="quickPanel">
							<h4 class="mtext-112 cl2 p-b-33">자주이용하는페이지??</h4>
							<table id="quickMenu" style="width: 100%;">
								<tr>
									<td style="height: 30px; font-size: xx-large;">
										<a href="#" class="recommendation bor18">최근구매이력 </a>										
									<td/>
								</tr>
								<tr>
									<td style="height: 30px; font-size: xx-large;">
										<a href="#" class="recommendation bor18">마이페이지</a>										
									<td/>
								</tr>
								<tr>
									<td style="height: 30px; font-size: xx-large;">
										<a href="#" class="recommendation bor18">장바구니 </a>
									<td/>
								</tr>
								<tr>
									<td style="height: 30px; font-size: xx-large;">
										<a href="#" class="recommendation bor18 ">요새잘나가는제품? </a>										
									<td/>
								</tr>
							</table>
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
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
	<script	src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script	src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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