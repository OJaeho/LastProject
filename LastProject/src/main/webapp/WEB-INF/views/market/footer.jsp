<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>footer</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="./resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
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
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<hr style="border: solid 1px;">
	<br><br>	
		<div class="container">
			<div class="row">		
				<div class="col-sm-6 col-lg-2 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						우리시장엔
					</h3>

					<ul>
						<li class="p-b-10">
							<a href="introMarket.user" class="stext-107 cl7 hov-cl1 trans-04">
								시장소개
							</a>
						</li>

						<li class="p-b-10">
							<a href="waytoMarket.users" class="stext-107 cl7 hov-cl1 trans-04">
								오시는길
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								업종별상점
							</a>
						</li>

						<li class="p-b-10">
							<a href="index3.user" class="stext-107 cl7 hov-cl1 trans-04">
								상점배치도
							</a>
						</li>
						<li class="p-b-10">
							<a href="folliumtest.user" class="stext-107 cl7 hov-cl1 trans-04">
								시장이슈
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-2 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						거리마다
					</h3>

					<ul>
						<li class="p-b-10">
							<a href="tourHome.do" class="stext-107 cl7 hov-cl1 trans-04">
								놀거리(주변관광지)
							</a>
						</li>

						<li class="p-b-10">
							<a href="insertTour.do" class="stext-107 cl7 hov-cl1 trans-04">
								먹을거리(시장맛집) 
							</a>
						</li>
					</ul>
				</div>
				
				<div class="col-sm-6 col-lg-2 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						우리것이 있어요
					</h3>

					<ul>
						<li class="p-b-10">
							<a href="getproduct.user" class="stext-107 cl7 hov-cl1 trans-04">
								우리 것(상품)
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								공지사항
							</a>
						</li>
						<li class="p-b-10">
							<a href="getQnAList.user" class="stext-107 cl7 hov-cl1 trans-04">
								Q&A
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						어느 시장으로 가볼까요?
					</h3>

					<form action='index2.user' method="get">
						<ul class="list_info">
						<li>
						<select name="mkName" class="mkName" style="width: 200px; height: 50px;">
						 <option value="selected">선 택</option>
						  	<c:forEach var="item" items="${list}" >
					    		<option value="${item.mkName}">${item.mkName}</option>
						  	</c:forEach>
						</select>
						<input name="select_item" id="submit" type="submit" value="GO"	style="width: 100px; height: 50px;">
						</li>					
						</ul>
					</form>
				</div>
				<div class="col-sm-6 col-lg-3 p-b-50">

					<a href="index.do" class="logo"> 
					<img src="./resources/images/market_3.png" alt="IMG-LOGO">
					</a>
				</div>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved |Made by MARKET SSAK3</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
	
	
	</footer>			
</body>
</html>