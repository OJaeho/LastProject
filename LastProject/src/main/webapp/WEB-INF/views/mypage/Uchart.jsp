<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<!--===============================================================================================-->

<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<!-- 구글 차트 호출을 위한 js 파일 -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
//구글 차트 라이브러리 로딩
//google객체는 위쪽 google src안에 들어있음
google.load('visualization','1',{
    'packages' : ['corechart']
});
//로딩이 완료되면 drawChart 함수를 호출
    google.setOnLoadCallback(drawChart); //라이브러리를 불러오는 작업이 완료되었으면 drawChart작업을 실행하라는 뜻.
    google.setOnLoadCallback(drawChart2); //차트2
    function drawChart() {
        var jsonData = $.ajax({ //비동기적 방식으로 호출한다는 의미이다.
            url : "userFoodRank.user",

            //chart01에서는 json의 주소를 직접 적었지만 이 페이지에서는 컨트롤러로 이동해 맵핑해서 제이슨을 동적으로
            //직접만들어 그 만든 json을 직접 보낸다.
            
            //chart01에서 쓰던 방식 url : "${path}/json/sampleData.json",
            //json에 sampleData.json파일을 불러온다.
            //확장자가 json이면 url 맵핑을 꼭 해주어야 한다. 안해주면 자바파일인줄 알고 404에러가 발생한다.
            //그렇기 때문에 servlet-context파일에서 리소스를 맵핑해준다.
            dataType : "json",
            async : false
        }).responseText; //제이슨파일을 text파일로 읽어들인다는 뜻
        console.log(jsonData);
        //데이터테이블 생성
        var data
        = new google.visualization.DataTable(jsonData);
        //제이슨 형식을 구글의 테이블 형식으로 바꿔주기 위해서 집어넣음
        //차트를 출력할 div
        //LineChart, ColumnChart, PieChart에 따라서 차트의 형식이 바뀐다.
        
        //var chart = new google.visualization.PieChart(
                //document.getElementByld('chart_div')); //원형 그래프
        
//         var chart
//          = new google.visualization.LineChart(
//                 document.getElementById('chart_div')); //선 그래프 
                
        var chart
         = new google.visualization.ColumnChart(document.getElementById('chart_div'));
               // 차트 객체.draw(데이터 테이블, 옵션) //막대그래프
                
                //cuveType : "function" => 곡선처리
                
                //데이터를 가지고 (타이틀, 높이, 너비) 차트를 그린다.
                chart.draw(data, {
                    title : "많이 구매한 상품 순위",
                    curveType : "function", //curveType는 차트의 모양이 곡선으로 바뀐다는 뜻
                    width : 600,
                    height : 400
                });
    }
//     차트2
    function drawChart2() {
        var jsonData = $.ajax({ //비동기적 방식으로 호출한다는 의미이다.
            url : "userMoneyChart.user",

            dataType : "json",
            async : false
        }).responseText; //제이슨파일을 text파일로 읽어들인다는 뜻
        console.log(jsonData);
        //데이터테이블 생성
        var data
        = new google.visualization.DataTable(jsonData);
    
        var chart
         = new google.visualization.LineChart(
                document.getElementById('chart_div2')); //선 그래프 
                
                chart.draw(data, {
                    title : "월별 지출액 비교",
                    curveType : "function", //curveType는 차트의 모양이 곡선으로 바뀐다는 뜻
                    width : 600,
                    height : 400
                });
    }
// 차트2 끝
</script>
<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>

</head>
<body>
<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">사용자 마이페이지</h2>
	</section>
	<!-- header끝 -->
	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="inner Content container">
				<div class="title">
					<h2 class="notice_title theme_color type_block">
						<span class="notice_title_bullet them_background"></span> 사용자 통계페이지
					</h2>
				</div>
				<br>
			</div>
			<div class="board">
				<span> </span>
			</div>
    <!-- 차트 출력 영역 -->
    <div id="chart_div"></div>
    <!-- 차트가 그려지는 영역 -->
    <!-- 차트 새로고침 버튼 -->
<!--     <button id="btn" type="button" onclick="drawChart()">새로고침</button> -->
<!-- 	차트2 출력 -->
	<div id="chart_div2"></div>
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