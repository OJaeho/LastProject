<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 - Market3</title>
<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
</head>
<body>	
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
	

	<section class="bg0 p-b-116">
		<div class="size-219 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
				<div class="container">
		
		<section id="container">
			<form action="insertQnA.user" method="get" id="QnAinsert">
		<table class="table table-striped table-bordered">
	
					<tr>
						<th scope="row">
						<label for="qTitle">제목</label>
						</th>						
						<td>
						<input type="text" id="qTitle" name ="qTitle" class="input_txt" 
						 placeholder="Market3 Q&amp;A 게시판" form-index="6" 
						data-name="제목" data-required="true">
						</td>
					</tr>
					
					<tr>
						<th scope="row">작성자</th>
						<td>
						<input type="text" name="qWriter"  class="inputTypeText" 
						placeholder="" maxlength="125"  style="width:100px; height:22px;" /></td>
					</tr>
					<tr>
						<th scope="row">내용</th>
						<td>
						<div class="test_area_wrap">
						<div class="text_area _textarea" placeholder="내용을 입력해주세요." 
						contenteditable="true" id="qlContent" name="qlContent" form-index="7" 
						 data-type="textarea" 
						role="textbox" aria-labelledby="qlContent" 
						aria-multiline="true">
						</div>
						</div>
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
				
			<tr>
				<td colspan="2" align="center" class="bor502">
					<div class="header-cart-buttons btn_login">	
					<span class="cleft">
					<a href="getQnAList.user">글목록</a>
					</span>					
					<span class="cright">
						<input type="submit" value="등록" class="inputBtn"/>
						<a href="getQnAList.user">취소</a>			
					</span>
					</div>
					<div class="search row">
					<div class="col-xs-2 col-sm-2">							
					</div>			
			</tr>
			
		</table>
		</form>
			</div>
		</div>

	</section>
	
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>	
</body>
</html>