<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<html lang="UTF-8">
<head>
	<title>tour</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	
	<link rel="icon" type="image/png" href="./resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="./resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
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
    	<h2 class="ltext-105 cl0 txt-center tour_title">${result.tName}</h2>
   	</section>
	
	<div class="container" align="center">
		<div class="row" align="center">
		    <table class="tour_detail" style="border-spacing: 10px">	
	    	  	<tr class="tour_info_tr2">		  
		    		<td align="center"><img src="${result.tImg1}" style="width:500px; height:300px;"/></td>
		    		<td>
		    			<table border="1" style="border-color: #F5F6CE; margin-left: 10%; margin-right: 10%;">
		    				<tr>
			    				<td>
			    					${result.tContent}		
			    				</td>
		    				</tr>
		    			</table>
		    		</td>
	        	</tr>
	        	<tr>
	        		<td align="center">
	        			<a href="https://korean.visitseoul.net/index" target="_blank">마포관광 구청 바로가기</a>
	        		</td>
	        		<td align="center">
	        			<a href="https://map.kakao.com/link/search/${result.tAddr}" target="_blank">
	        				<span>위치찾기</span><img src="./resources/images/icons/unnamed.png"/>
	        			</a>
		    		</td>
	        	</tr>
	    	</table>
	    	<div id="map"></div>
		</div>
	</div>
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="./resources/js/main.js"></script>
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />
</body>
</html>