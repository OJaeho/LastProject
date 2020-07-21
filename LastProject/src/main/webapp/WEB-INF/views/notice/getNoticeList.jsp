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
	<div class="inner Content">
	<div class="title">
	<h2 class="notice_title theme_color type_block">
	<span class="notice_title_bullet them_background"></span>
	공지사항
	</h2>
	</div>
	</div>
	<div class="board">
	<span>
	</span>
	</div>
	

	<div class="page_list Content ec-base-table">
		<form action="saveNotice.user" method="post" enctype="multipart/form-data">
		<table border="1" summary="" class="notice-base-table table_type1 Content">
		<colgroup>
		<col style="width:52px;">
		<col>
		<col style="width:120px;">
		<col style="width:129px;">
		</colgroup>
		<thead>
			<tr>
			<th scope="col">글번호</th>			
			<th scope="col">제목</th>
			<th scope="col">작성자</th>
			<th scope="col">작성일자</th>
			</tr>
		<tbody>
			<tr class="noticetr">
			<td>${notice.nId }</td>
			<td>${notice.nTitle }</td>
			<td>${notice.userName }</td>
			<td>${notice.nDate }</td>
			</tr>
		</tbody>		
		</table>
		</thead>		
		<div class="btn">
		<span>
		<a href="insertNotice.user">글쓰기</a>
		</span>
		</div>
	</div>

</body>
</html>