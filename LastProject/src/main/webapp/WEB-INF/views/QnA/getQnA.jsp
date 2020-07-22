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

		<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th class="mythlist">제목</th>
				<td>${getQnA.qTitle }</td>			
				<th class="mythlist">날짜</th>
				<td>${getQnA.qDate }</td>
			</tr>
			<tr>
				<th class="mythlist" colspan="2">작성자</th>
				<td colspan="3">
				${getQnA.qWriter }
				</td>			
			</tr>			
			<tr>
				<td colspan="4">
				${getQnA.qlContent }
				</td>			
			</tr>
		</thead>
		</table>		

		<hr/>
		<div>		
		<span>
		<a class="btn btn-default" href="getQnAList.user">목록</a>
		<a class="btn btn-default" href="getQnAList.user">취소</a>
			<form action="updateRegistQnA.user" method="get">
			<input type="hidden" name="qTitle" value="${getQnA.qTitle }" />
			<input type="hidden" name="qDate" value="${getQnA.qDate }" />
			<input type="hidden" name="qWriter" value="${getQnA.qWriter }" />
			<input type="hidden" name="qlContent" value="${getQnA.qlContent }" />
			<input type="submit" value="수정" class="btn btn-default"/>
			</form>
		<a class="btn btn-default" href="deleteQnA.user?qId=${getQnA.qId }">삭제</a>
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