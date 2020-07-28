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
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
	  $('#summernote').summernote({
		  height8자까지 쓸 수 있습니다'	//placeholder
		  });: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 204
	});
</script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
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
				${getQnA.userName }
				</td>
<%-- 				<input type="hidden" id="Writer" value="${getQnA.userName }" >		 --%>
			</tr>			
			<tr>
				<td colspan="4">
				${getQnA.qlContent }
				</td>			
			</tr>
		</thead>
		</table>		

		<hr/>
		
		<!-- 답변등록 -->
		<c:if test="${Check eq 'true' and (userMarket eq getQnA.mkId) and (empty getQnA.qAnswer)  }"> 

		<h2 class="text-left notice_title theme_color type_block">답변 작성</h2>

		<form method="get" action="updateQA.market">
		<input type="hidden" name="qId" value="${getQnA.qId }" />
		<input type="hidden" name="qaWriter" value="${ID }" /><br>
		<textarea id="summernote" name="qAnswer"></textarea>
		<input type="button" id="qnaAnswerbtn" value="답변 등록" class="btn btn-default" style="float: right;"/>
		</form>
		</c:if>
		<!-- 답변등록  끝-->
		<!-- 답변보여주기 -->
		<c:if test="${not empty getQnA.qAnswer }">
		<table class="table table-bordered table-hover">
		<thead>
			<tr>		
			
				<th class="mythlist">날짜</th>
				<td>${getQnA.qaDate }</td>
			</tr>
			<tr>
				<th class="mythlist" colspan="1">작성자</th>
				<td colspan="2">
				${getQnA.qaWriter }
				</td>
			</tr>			
			<tr>
				<td colspan="3">
				${getQnA.qAnswer }
				</td>			
			</tr>
		</thead>
		</table>	
		
		</c:if>
		
		<!-- 답변보여주기 끝-->
		<div>
		<div class="div-left">		
		<span>		
		<a class="btn btn-default" href="getQnAList.user">목록</a>
		</span>
		</div>
		
		<div class="div-right">
		<span>
		<a class="btn btn-default" href="getQnAList.user">취소</a>
		</span>
		</div>
		<c:if test="${getId eq getQnA.userName }">
		<a id="btnDelete" class="btn btn-default" href="deleteQnA.user?qId=${getQnA.qId }">삭제</a>		
		</c:if>
		</div>
		<br/>
		
	</div>
	</section>
</body>
</html>