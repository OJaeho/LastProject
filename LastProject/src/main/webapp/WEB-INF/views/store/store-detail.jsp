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
<title>Store Detail</title>
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

<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">

			<c:forEach items="${storeget}" var="store">
				<div class="row" style="width: 1200px;">
					<div class="col-md-6 col-lg-7 p-b-30" style="width: 1200px;">
						<div class="p-l-25 p-r-30 p-lr-0-lg" style="width: 1200px;">
							<hr />
							<br />
							<div class="wrap-slick3 flex-sb flex-w"
								style="width: 1350px; margin: auto;">
								<img src="${store.sImg1}" style="width: 500px; height: 400px;">
								<div class="wrap-slick3-arrows flex-sb-m flex-w" style="margin: auto;">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="bor10 m-t-50 p-t-43 p-b-40" style="border-color: green;">
					<!-- Tab01 -->
					<div class="tab01">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item p-b-10"><a class="nav-link active"
								data-toggle="tab" href="#description" role="tab">상점 소개</a></li>

							<li class="nav-item p-b-10"><a class="nav-link"
								data-toggle="tab" href="#information" role="tab">상점 정보</a></li>

							<li class="nav-item p-b-10"><a class="nav-link"
								data-toggle="tab" href="#reviews" role="tab">상점 위치</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content p-t-43">
							<!-- 상점 소개탭 -->
							<div class="tab-pane fade show active" id="description"
								role="tabpanel">
								<div class="row" style="width: 1087px; margin: auto;">
									<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto"
										style="margin: auto;">${store.sDetail}</div>
								</div>
							</div>
							<!-- 상점 정보탭 -->
							<div class="tab-pane fade" id="information" role="tabpanel">
								<div class="row" style="width: 1087px; margin: auto;">
									<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
										<table border="2"
											style="margin: auto; width: 600px; border-color: lightgrey;">
											<tbody>
												<tr>
													<td style="width: 25%; color: green;" data-row="0"
														data-column="0">전화번호&nbsp;</td>
													<td style="width: 75%;" data-row="0" data-column="1">${store.sTel}&nbsp;</td>
												</tr>
												<tr>
													<td style="width: 25%; color: green;" data-row="1"
														data-column="0">영업시간 & 휴 일&nbsp;</td>
													<td style="width: 75%;" data-row="1" data-column="1">${store.sTime}&nbsp;</td>
												</tr>
												<tr>
													<td style="width: 25%; color: green;" rowspan="1"
														data-row="2" data-column="0">&nbsp;주 소</td>
													<td style="width: 75%;" rowspan="1" data-row="2"
														data-column="1">${store.sAddr}&nbsp;</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>

							<!-- 상점 위치탭 -->
							<div class="tab-pane fade" id="reviews" role="tabpanel">
								<div class="row" style="width: 1168px; margin: auto;">
									<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto"
										style="width: 1168px; margin: auto;">
										<img src="${store.sImg3}" style="width: 582px; margin: auto;">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
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

</body>
</html>