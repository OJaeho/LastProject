<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 - Market3</title>
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
	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->
<style type="text/css">

#notice-list a{
	color: black;
}

#notice-list a:hover{
	color: #4fef97;
}

</style>

</head>
<body class="animsition">

	<jsp:include page="/WEB-INF/views/market/header.jsp" />

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('images/bg-01.jpg');"></section>

	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="inner Content container">
				<div class="title">
					<h2 class="notice_title theme_color type_block">
						<span class="notice_title_bullet them_background"></span> 공지사항
					</h2>
				</div>
				<br>
			</div>
			<div class="board">
				<span> </span>
			</div>


			<div class="Content ec-base-table container">

				<div class="page_list">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th scope="col" style="text-align: center;">글번호</th>
								<th scope="col" style="text-align: center;">제목</th>
								<th scope="col" style="text-align: center;">작성자</th>
								<th scope="col" style="text-align: center;">작성일자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${getNoticeList }" var="notice">
								<tr class="noticetr">
									<td>${notice.nId }</td>
									<td id="notice-list">
									<a href="getNotice.user?nId=${notice.nId}">
									${notice.nTitle }</a>
									</td>
									<td>${notice.userName}</td>
									<td>${notice.nDate }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<hr />
				</div>
				<sec:authorize access="hasRole('ROLE_MARKET')">
				<div class="div-right">
					<div>
						<span> <a class="btnqna btn_qna qna_hover"
							href="insertNotice.market">글쓰기</a>
						</span>
					</div>
				</div>
				</sec:authorize>
				<br />

				<div class="text-center-page">
					<ul class="pagination div-center">
						<c:forEach var="i" begin="1" end="${totalpNum }">
							<li><a href="getNoticeList.user?pNum=${i }">${i }</a></li>
						</c:forEach>
					</ul>
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

</body>
</html>
