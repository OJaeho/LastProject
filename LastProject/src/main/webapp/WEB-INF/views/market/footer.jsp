<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<spring:message code="header.our" arguments="${header}" text="default text" />
					</h3>

					<ul>
						<li class="p-b-10">
							<a href="introMarket.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.intromarket" arguments="${header}" text="default text" />
							</a>
						</li>

						<li class="p-b-10">
							<a href="waytoMarket.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.way" arguments="${header}" text="default text" />
							</a>
						</li>

						<li class="p-b-10">
							<a href="storelist.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.storecategory" arguments="${header}" text="default text" />
							</a>
						</li>

						<li class="p-b-10">
							<a href="marketIssue.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.issue" arguments="${header}" text="default text" />
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-2 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						<spring:message code="header.street" arguments="${header}" text="default text" />
					</h3>

					<ul>
						<li class="p-b-10">
							<a href="tourHome.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.tour" arguments="${header}" text="default text" />
							</a>
						</li>
					</ul>
				</div>
				
				<div class="col-sm-6 col-lg-2 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						<spring:message code="header.haveour" arguments="${header}" text="default text" />
					</h3>

					<ul>
						<li class="p-b-10">
							<a href="getproduct.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.product" arguments="${header}" text="default text" />
							</a>
						</li>

						<li class="p-b-10">
							<a href="getNoticeList.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.notice" arguments="${header}" text="default text" />
							</a>
						</li>
						<li class="p-b-10">
							<a href="getQnAList.user" class="stext-107 cl7 hov-cl1 trans-04">
								<spring:message code="header.qna" arguments="${header}" text="default text" />
							</a>
						</li>
					</ul>
				</div>
 
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h3 class="stext-301 cl0 p-b-30">
						<spring:message code="header.whatmarket" arguments="${header}" text="default text" />
					</h3>

					<form action='index2.user' method="get">
						<ul class="list_info">
						<li>
						<select name="mkId" class="mkName" style="width: 200px; height: 50px;">
						  	<c:forEach var="item" items="${list}" >
						  		<c:if test="${item.mkId eq sessionScope.mkId}">
						  		<option  value="${item.mkId}" selected="selected">${item.mkName}</option>
						  		</c:if>
						  		<c:if test="${item.mkId ne sessionScope.mkId}">
					    		<option value="${item.mkId}">${item.mkName}</option>
						  		</c:if>
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