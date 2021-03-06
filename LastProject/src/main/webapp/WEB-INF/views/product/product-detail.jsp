<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@page import="com.vo.ProductVO"%>
<%@page import="com.vo.CategoryVO"%>
<%@page import="com.vo.StoreVO"%>
<%@page import="com.vo.UsersVO"%>
<%@page import="com.vo.ReviewVO"%>
<%
	request.setCharacterEncoding("utf-8");
%>
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
<link rel="stylesheet" type="text/css" href="./resources/css/product-detail.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">

<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">

			<!-- DB에 선택된 상품정보 가져오기  -->
			<c:forEach items="${productget}" var="item">
				<div class="row" style="margin: 0 auto;">
					<div class="col-md-6 col-lg-7 p-b-30" style="width: 1200px;">
						<div class="p-l-25 p-r-30 p-lr-0-lg" style="width: 1200px;">
							<hr />
							<br />
							<div class="wrap-slick3 flex-sb flex-w"
								style="width: 1350px; margin: auto;">
								<img src="${item.pImg1}" style="width: auto; height: 400px;">
								<div class="col-md-6 col-lg-5 p-b-30" style="margin: auto;">
									<div class="p-r-50 p-t-5 p-lr-0-lg">
										<h4 class="cl2 js-name-detail p-b-14">
											[${item.sName}]<br />${item.pName}</h4>
										<input type="hidden" value="${item.pName}" id="itemname" /> <input
											type="hidden" value="${item.pDetail}" id="bContent" /> <input
											type="hidden" value="${item.pId}" id="pId" /> <input
											type="hidden" value="${item.pPrice}" id="pPrice" />

										<div style="text-align: center;">
											<strong>${item.pDetail}</strong>
										</div>


										<!-- 옵션박스 -->
										<div class="p-t-33">
											<hr />
											<select id="size">
												<option disabled>---------옵션선택---------</option>
												<c:forEach items="${optionget}" var="item2">
													<c:choose>
														<c:when test="${item2.pCount eq 0}">
															<option disabled id="price" value="${item2.pPrice}"
																value2="${item2.pOption1}">[ ${item2.pOption1}
																- ${item2.pPrice} ] 재고수량:${item2.pCount} [품절]</option>
														</c:when>
														<c:otherwise>
															<option id="price" value="${item2.pPrice}"
																value2="${item2.pOption1}">[ ${item2.pOption1}
																- ${item2.pPrice} ] 재고수량:${item2.pCount}</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</select>

										</div>
										<!-- 옵션박스 끝-->


										<!-- 수량버튼 -->
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn4 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" id="numm" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn4 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
											<input type="hidden" id="hiddennum" />
										</div>
										<!-- 수량버튼 끝 -->

										<!-- 수령방법 -->
										<table style="height: 35px;">
											<tr>
												<td style="width: 20px;"><input type="radio"
													name="chk_info" value="배송"></td>
												<td style="width: 40px;">배송</td>
												<td style="width: 20px;"><input type="radio"
													name="chk_info" value="픽업"></td>
												<td style="width: 40px;">픽업</td>
											</tr>
										</table>
										<!-- 수령방법 끝 -->


									<form name="subcart">
										<div class="" id="list_top">
											<table>
												<tbody id="dynamicTbody" style="width: auto;">
												</tbody>
												<tfoot id="dynamicTfoot">
												<tr>
												<td colspan="3" style="padding: 10px 10px 0 10px;">
													<strong>TOTAL : </strong>
													<span class="total">
													<strong>
													<input type="text" name="paytotal" id="paytotal1" disabled
													style="background: #fff;">
													</strong> 
													</span>
												</td>
												</tr>
												</tfoot>
											</table>
										</div>
										
											<hr />
											<table>
												<tr style="text-align: left;">
													<td style="padding: 5px;">
														<input type="button" name="addsubcart" id="addProduct" class="btn btn-success" 
														value="담기" style=""  />
													</td>
													<td>
														<a href="shopping.checking">
														<input id="cartBtn" class="btn btn-success" 
														type="button" value="장바구니" />
														</a>
													</td>
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

								<!-- 구매전 주의사항탭 -->
								<div class="tab-pane fade" id="information" role="tabpanel">
									<div class="row" style="margin: 0 auto; justify-content: center; padding: 10px 10px 10px 10px;">
										<b>시장 장보기의 특성상 배송이 불가능한 지역의 배달은 불가하며, 상점의 상황에따라 주문취소가 발생할
											수 있습니다.</b>
									</div>
								</div>
								<!-- 구매전 주의사항탭 -->

								<!-- REVIEW탭 -->
								<div class="tab-pane fade" id="reviews" role="tabpanel">
									<div class="row">
										<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
											<div class="p-b-30 m-lr-15-sm">
												<!-- Review -->
												<div class="flex-w flex-t p-b-68">
													<div
														class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
														<img src="./resources/images/i.jpg" alt="AVATAR">
													</div>

													<div class="size-207">
														<div class="flex-w flex-sb-m p-b-17">
															<span class="mtext-107 cl2 p-r-20"> 아이린 </span> <span
																class="fs-18 cl11"> <i class="zmdi zmdi-star"></i>
																<i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i>
																<i class="zmdi zmdi-star"></i> <i
																class="zmdi zmdi-star-half"></i>
															</span>
														</div>
														<p class="stext-102 cl6">${item.pName}
															${item.pOption1}에 ${item.pPrice}원이라구요?!?!?!<br />사장님이
															미치셨어요..!!
														</p>
														<hr />
													</div>

													<div
														class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
														<img src="./resources/images/y.jpg" alt="AVATAR">
													</div>

													<div class="size-207">
														<div class="flex-w flex-sb-m p-b-17">
															<span class="mtext-107 cl2 p-r-20"> 예리 </span> <span
																class="fs-18 cl11"> <i class="zmdi zmdi-star"></i>
																<i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i>
																<i class="zmdi zmdi-star-half"></i>
															</span>
														</div>

														<p class="stext-102 cl6">빠빠빠빠빨갓맛 ${item.pName} 미친맛!</p>
														<hr />
													</div>

													

													<c:forEach items="${reviewget}" var="review">
														<c:if test="${review.userName ne null}">
															<div
																class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
																<img src="./resources/images/profile.jpg" alt="AVATAR">
															</div>
															<div class="size-207">
																<div class="flex-w flex-sb-m p-b-17">
																	<span class="mtext-107 cl2 p-r-20">
																		${review.userName} </span> <span class="fs-18 cl11"> <c:forEach
																			var="i" begin="1" end="${review.rRating}" step="1">
																			<i class="zmdi zmdi-star"></i>
																		</c:forEach>
																	</span>
																</div>

																<p class="stext-102 cl6">${review.rContent}</p>
																<hr />
															</div>
														</c:if>
													</c:forEach>

												</div>


												<c:if test="${not empty payId and getReviewCnt eq 0}">

													<!-- Add review -->

													<h5 class="mtext-108 cl2 p-b-7">리뷰를 달아주세요 ~!</h5>

													<p class="stext-102 cl6">당신의 응원에 많은 소상공인이 힘을 냅니다 *</p>
													<form action="insertreview.user" class="w-full"
														method="get">
														<input type="hidden" name="pPrice" value=${item.pPrice }>
														<input type="hidden" name="pName" value=${item.pName }>
														<input type="hidden" value=${payId } name="payId">
														<input type="hidden" value=${item.pId } name="pId">
														<div class="flex-w flex-m p-t-50 p-b-23">
															<span class="stext-102 cl3 m-r-16"> ID </span> <input
																type="text" value=${Id } disabled> <span
																class="stext-102 cl3 m-r-16"> Your Rating </span> <span
																class="wrap-rating fs-18 cl11 pointer"> <i
																class="item-rating pointer zmdi zmdi-star-outline"></i>
																<i class="item-rating pointer zmdi zmdi-star-outline"></i>
																<i class="item-rating pointer zmdi zmdi-star-outline"></i>
																<i class="item-rating pointer zmdi zmdi-star-outline"></i>
																<i class="item-rating pointer zmdi zmdi-star-outline"></i>
																<input class="dis-none" type="number" name="rRating">
															</span>
														</div>

														<div class="row p-b-25">
															<div class="col-12 p-b-5">
																<label class="stext-102 cl3" for="review"></label>
																<textarea
																	class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
																	id="review" name="rContent"></textarea>
															</div>

														</div>
														<input class="btn btn-success" type="submit" value="작성">
													</form>
												</c:if>
											</div>
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
					src="https://shop-phinf.pstatic.net/20200211_72/1581380892722e31C6_JPEG/FOOD_%C0%E5%BA%B8%B1%E2_INFO_%B8%C1%BF%F8%BD%C3%C0%E5_%C5%E4%BF%E4%C0%CF%BC%F6%C1%A4.jpg?type=w860"
					style="max-width: 100%; height: auto;">
			</div>
		</div>
	</section>
	<sec:authorize access="isAuthenticated()">
		<input type="hidden" value="ok_login" id="ok_login" />
	</sec:authorize>
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