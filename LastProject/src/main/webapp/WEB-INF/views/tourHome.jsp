<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>tour-home</title>
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
	   
	  <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" id="title_section" style="background-image: url('images/bg-01.jpg');">
      <h2 class="ltext-105 cl0 txt-center tour_title">
         주변 관광지 둘러보기
      </h2>
   </section>   


   <!-- Content page -->
   <section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row">
					<table class="tour_info">
						<c:forEach var="item" items="${tourlist}">
							<tr class="tour_info_tr">
								<td align="center" class="tour_name"><a href="tourDetail.do?tId=${item.tId}">${item.tName}</a><hr/> 
									<span class="tour_addr">${item.tAddr}</span><br />
								</td>
								<td align="center" class="timg"><img src="${item.tImg1}" /></td>
							</tr>
							<tr class="tour_detail">
								<td align="center" colspan="2">
									<table id='tour_inner_table'">
										<tr>
											<td id="tour_inner_table_td">
											${item.tContent}
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</c:forEach>
					</table>
			</div>
			<hr/>
			<div class="container">
				<div style="display: block; text-align: center;" class="pageBtn">
					<c:if test="${paging.startPage != 1 and empty param.searchType }">
						<a href="tourHome.do?nowPage=${paging.startPage - 1 }">&lt;</a>
					</c:if>
					<c:if
						test="${paging.startPage != 1 and not empty param.searchType }">
						<a
							href="tourHome.do?nowPage=${paging.startPage - 1 }&searchType=${param.searchType }&value=${param.value }">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage  and empty param.searchType}">
								<a href="tourHome.do?nowPage=${p }">${p }</a>
							</c:when>
							<c:when
								test="${p != paging.nowPage and not empty param.searchType}">
								<a
									href="tourHome.do?nowPage=${p }&searchType=${param.searchType }&value=${param.value }">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if
						test="${paging.endPage != paging.lastPage and empty param.searchType}">
						<a href="tourHome.do?nowPage=${paging.endPage+1 }">&gt;</a>
					</c:if>
					<c:if
						test="${paging.endPage != paging.lastPage and not empty param.searchType}">
						<a
							href="tourHome.do?nowPage=${paging.endPage+1 }&searchType=${param.searchType }&value=${param.value }">&gt;</a>
						</c:if>
				</div>
			</div>
		</div>
	
		<!-- Shoping Cart -->
		
	</section>
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />
<!--===============================================================================================-->	
	
	<script src="./resources/vendor/jquery/jquery-3.3.1.min.js"></script>
<!--===============================================================================================-->
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="./resources/vendor/select2/select2.min.js"></script>
	<script src="./resources/js/jh.js"></script>
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
	
<!--===============================================================================================-->
	<script src="./resources/js/main.js"></script>
</body>
</html>