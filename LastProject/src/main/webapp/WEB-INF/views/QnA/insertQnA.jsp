<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>QnA - Market3</title>
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
	<link rel="stylesheet" type="text/css" href="./resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
	<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
	  $('#summernote').summernote();
	});

</script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

</head>
<body class="animsition">
	
	<jsp:include page="/WEB-INF/views/market/header.jsp" />

<!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
   </section>   

   <!-- Content page -->
   <section class="bg0 p-t-75 p-b-120">
    <div class="container">
	<div class="inner Content container">
	<div class="title">
	<h2 class="notice_title theme_color type_block">
	<span class="notice_title_bullet them_background"></span>
	QnA
	</h2>
	</div>	
	<br>
	</div>
	<div class="board">
	<span>
	</span>
	</div>
	
				<div class="container">
		
		<section id="container">
			<form action="insertQnA.user" method="get" id="QnAinsert">
		<table class="table table-bordered">
					
					<tr>
					<th class="mythlist" scope="row">
						<label class="labellist" for="qTitle">QnA</label>					
					<td>
					<select name="qCate" style="vertical-align: middle; text-align: center">					<option selected disabled> > QnA</option>		
					<option value="구매문의">구매문의</option>
					<option value="예약문의">예약문의</option>	
					<option value="상품문의">상품문의</option>			
					</select>
					</td>
					</th>
					</tr>
					<tr>
						<th class="mythlist" scope="row">
						<label class="labellist" for="qTitle">제목</label>
						</th>						
						<td>
						<input type="text" id="qTitle" name ="qTitle" class="input_txt" 
						 placeholder="Market3 Q&amp;A 게시판" form-index="6" 
						data-name="제목" data-required="true">
						</td>
					</tr>
					
					<tr>
						<th class="mythlist" scope="row">
						<label class="labellist" for="userName">작성자</label>
						</th>
						<td>
						${getId }
						</td>
					</tr>
					<tr>
						<th class="mythlist" scope="row">
						<label class="labellist" for="qlContent">내용</label>
						</th>
						<td>
						<input class="text_area _textarea input_txt" 
						contenteditable="true" id="qlContent" name="qlContent" form-index="7" 
						 data-type="textarea" 
						role="textbox" aria-labelledby="qlContent" 
						aria-multiline="true"/>

						</td>
					</tr>

<!-- 				<td width="70">파일</td> -->
<%-- 				<td align="left">${board.boardfile }</td> --%>
					
<!-- 				</tr> -->
<!-- 			<tr> -->
<!-- 				<td width="100">첨부파일</td> -->
<!-- 				<td align="left"> -->
<!-- 					file타입의 name은 MultipartFile의 프라퍼티  -->
<!-- 					<input type="file" name='file' maxlength="60" size="40"> -->
<!-- 				</td> -->
<!-- 			</tr>	  -->						
				
		</table>		
		<hr/>	
	
		<div class="div-right">
			<span>
				<input type="submit" value="등록" class="btnqna btn_qna qna_hover"/>
				<a href="getQnAList.user" class="btnqna btn_qna qna_hover" data-role="cancle">취소</a>						
			</span>
			
		</div>
		</form>
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
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
	<script src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="./resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="./resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
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

</body>
</html>