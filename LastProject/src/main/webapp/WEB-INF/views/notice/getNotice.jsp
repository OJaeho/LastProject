<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 - Market3</title>
</head>
<body>
<center>
	<div>
	<div class="title">
	<h2>공지사항</h2>
	</div>
	</div>
	<div class="board">
	<span>
	</span>
	</div>
	<div class="getboard">
		<table border="1" summary="">
		<thead>
			<tr>
			<th scope="col">no</th>
			
			<th scope="col">title</th>
			<th scope="col">writer</th>
			<th scope="col">date</th>
			</tr>
		<tbody>
			<tr>
			<td>${notice.nId }</td>
			<td>${notice.nTitle }</td>
			<td>${notice.userName }</td>
			<td>${notoce.nDate }</td>
			</tr>
		</tbody>
		</thead>
		</table>		
		<div class="btn">
		<span>
		<a href="insertNotice.user">글쓰기</a>
		</span>
		</div>
	</div>
</center>
</body>
</html>