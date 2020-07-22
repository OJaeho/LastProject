<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
   <!-- Content page -->
   <section class="bg0 p-t-75 p-b-120">
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
	<form action="updateQnA.user" method="get">
		<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th class="mythlist" scope="row">
				<label class="labellist" for="qTitle">제목</label>
				</th>
				<td>
				<input class="input_txt" name="qTitle" type="text"
					value="${getQnA.qTitle }" />
				</td>			
				<th class="mythlist">
				<label class="labellist" for="qDate">날짜</label>
				</th>
				<td>
				<label class="labellist" for="qDate">${getQnA.qDate }</label>
				</td>
			</tr>
			<tr>
				<th class="mythlist" colspan="2">
				<label class="labellist" for="qWriter">작성자</label>
				</th>
				<td colspan="3">
				<label class="labellist" for="qWriter">${getQnA.qWriter }</label>			
				</td>			
			</tr>			
			<tr>
				<td colspan="4">
				<input class="input_txt" name="qlContent" type="text"
					value="${getQnA.qlContent }" />
				</td>			
			</tr>
			<tr>
			<th class="mythlist" colspan="2">
			<label class="labellist" for="qPassword">비밀번호</label>
			</th>
			<td colspan="3">
			<input class="input_txt"
			type="password" value="${getQnA.qPassword }" />
			</td>
			</tr>
		</thead>
		</table>		
		</form>
		<hr/>
		<div>		
		<span>
		<a class="btn btn-default" href="getQnAList.user">목록</a>
		<!-- <input type="sumit" class="btn btn-default" value="수정"/> -->
		<a class="btn btn-default" href="getQnAList.user">취소</a>
		<a class="btn btn-default" href="updateQnA.user?qPassword=${getQnA.qPassword }">수정</a>
		<a class="btn btn-default" href="deleteQnA.user?qPassword=${getQnA.qPassword }">삭제</a>
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
	</section>
</body>
</html>