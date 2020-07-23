<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>insertTour</title>
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
	href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<link rel="stylesheet" type="text/css" href="./resources/css/jh.css">
<!--===============================================================================================-->
</head>
<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" id="title_section" style="background-image: url('images/bg-01.jpg');">
      <h2 class="ltext-105 cl0 txt-center tour_title">
         관광지 등록하기
      </h2>
   </section>
	<section class="bg0 p-t-52 p-b-20">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<form id="insertTour">
							<div class="bor19 size-218 m-b-20">	
								<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="tName" id="tName" placeholder="관광지명..">
							</div>
							<div class="bor19 size-218 m-b-20">
								<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="tAddr" id="tAddr" placeholder="주소..">
								<input class="btn btn-info" id="findpostcode" type="button" value="우편번호 검색">
							</div>
							<div class="bor19 m-b-20">
								<input class="stext-111 cl2 plh3 size-124 p-lr-18 p-tb-15" type="text" placeholder="새로운 관광지를 홍보해주세요" id='tContent' name ="tContent">										
							</div>
							<div class="bor19 size-218 m-b-20">	
								<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="tImg1" id="urlReg" placeholder="관광공사의 url을 입력해주세요.">
							</div>
							<div id="url"></div>
							<div id="urlcheck"></div>
							<input type="button" value="등록하기" id="btn_submit">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />
	<!--===============================================================================================-->
	<script type="text/javascript">
	</script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/jquery/jquery-3.3.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/select2/select2.min.js"></script>
	
	<!--===============================================================================================-->
	<script
		src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>

	<!--===============================================================================================-->
	<script src="./resources/js/main.js"></script>
	<script src="./resources/js/jh.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>