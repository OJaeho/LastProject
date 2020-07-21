<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA - Market3</title>
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
	

	<div class="page_list Content ec-base-table container">

		<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>글번호</th>			
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
			</tr>
		<tbody>
			<tr class="QnA">
			<td>${qna.qId }</td>
			<td>${qna.qTitle }</td>
			<td>${qna.qWriter }</td>
			<td>${qna.qDate }</td>
			</tr>
		</tbody>		
		</table>
		</thead>		
		<hr/>
		<div>
		<span>
		<a class="btn btn-default" href="registQnA.user">글쓰기</a>
		</span>
		</div>
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
</body>
</html>