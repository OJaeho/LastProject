<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 - Market3</title>
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
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
		<form action="insertQnA.user" method="post" enctype="multipart/form-data">
		<table class="table table-striped table-bordered">
					
					<tr>
					<th>글번호</th>
					<td>${qna.qId }</td>
					</tr>
								
					<tr>
						<th scope="row">제목</th>						
						<td>
						<input id="title" name="qTitle" style="width:90%;height:22px;" 
						class="inputTypeText" placeholder="" maxlength="125" value="" type="text" required=""/>
						</td>
					</tr>
					
					<tr>
						<th scope="row">작성자</th>
						<td>
						<input name='qWriter'
						style="width:100px; height:22px;" class="inputTypeText" 
						placeholder="" maxlength="125" value="" type="text" required=""/></td>
					</tr>
					<tr>
						<th scope="row">내용</th>
						<td>
						<textarea id="inputContent" name="qlContent" placeholder=""  style="resize:none"></textarea>
						</td>
					</tr>
					
					<tr>
					<th>작성일</th>
					<td>${qna.qaDate }</td>
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
</body>
</html>