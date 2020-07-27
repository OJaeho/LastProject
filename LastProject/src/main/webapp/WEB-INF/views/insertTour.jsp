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
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->
</head>
<body>
   <!-- header -->
   <jsp:include page="/WEB-INF/views/market/header.jsp" />
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" id="title_section" style="background-image: url('images/bg-01.jpg');">
      <h1 class="tour-title theme_color type_block">
      <span class="notice_title_bullet them_background"></span>
      관광지 등록하기
      </h1>
   </section>
   <!-- header 끝 -->
		
	<div style="text-align: -webkit-center;">
		<form id="insertTour">
			<table class="table_type2 type_background">        
		        <tbody class="inner" data-role="lead_form">
		    <tr>
		      <th scope="row"><label for="tName" class="font-black">관광지명</label></th>
		      <td>
		        <input type="text" name="tName" id="tName" class="input_txt _isRequiredArea" data-required="true" style="width:300px">
		      </td>
		    </tr>
		
		    <tr>
		      <th scope="row"><label for="tAddr" class="font-black">주소</label>
		      <td>
		        <!-- 필수항목일 경우 is_required, required_text 추가 -->
		        <input type="text" name="tAddr" id="tAddr" class="input_txt _isRequiredArea" data-required="true" style="width:300px">
		      <div style="float: right; padding: 10px 0px;">
		      	<input class="btn btn-addr" id="findpostcode" type="button" value="우편번호 검색">
		      </div>
		      </td>
		    </tr>
		
		    <tr>
		      <th scope="row">
		      <label for="urlReg" class="font-black">URL</label>
		      </th>
		      <td>
		        <input type="text" name="tImg1" id="urlReg" class="input_txt _isRequiredArea" value="" placeholder="관광공사의 url을 입력해 주세요" data-name="단문 입력" data-required="true">
		      </td>
		    </tr>
		
		   
		    <tr>
		      <th scope="row" class="long">
		      <label for="tContent" class="font-black">관광지 소개</label>
		      </th>
		      <td>
				<input type="text" id='tContent' name ="tContent" class="input_txt _isRequiredArea" value="" placeholder="새로운 관광지를 홍보해 주세요" data-name="단문 입력" data-required="true">									
		      </td>
		    </tr>
		
		 	 </tbody>
		  </table>
		  <div>
		  
		 	<div id="url">
			<div id="urlcheck">
			<input type="button" value="등록하기" id="btn_submit" class="btn-addr" style="margin-right: 38.5%">
			</div>
			</div>
		</div>
	  </form>
  </div>


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