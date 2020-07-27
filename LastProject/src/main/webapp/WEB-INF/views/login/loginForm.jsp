<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>로그인 페이지</title>
</head>

<body onload="document.f.id.focus();">

<div class="container">
<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<div class="jumbotron" style="padding-top: 20px">
				<c:url value="/login" var="loginUrl" />
				<form:form name="f" action="${loginUrl}" method="POST">
					<div>
					<h2 style="text-align: center; color: #009a45 !important;">로그인</h2>
					<span style="
					position: absolute;
   					left: 25%;
    				bottom: auto;
				    width: 50%;
				    height: 1px;
				    background-color: #009a45 !important;
					"></span>
					<p>
					</div>
					<div style="position: absolute; left: 50%; transform: translateX(-50%);">
						<div style="padding-top: 10px">
						<input class="form-control" type="text" id="id" name="id" placeholder="아이디"
						style="
						display: inline-block;
					    height: 50px;
					    width: 250px;
					    letter-spacing: -.5px;
					    color: #666;
					    border: 1px solid #d0d0d0;
					    border-radius: 3px;
					    background: #fff;
					    box-sizing: border-box;"
						/><p>
						<input class="form-control" type="password" 
						id="password" name="password" placeholder="비밀번호"
						style="
						display: inline-block;
					    height: 50px;
					    width: 250px;
					    letter-spacing: -.5px;
					    color: #666;
					    border: 1px solid #d0d0d0;
					    border-radius: 3px;
					    background: #fff;
					    box-sizing: border-box;"/><p>
							<div style="padding: 0; float: right;">
							<input type="submit" value="로그인"
							style="
							display: inline-block;
						    height: 40px;
						    padding: 0px 10px 10px 10px;
						    font-size: 15px;
						    line-height: 40px;
						    letter-spacing: 1px;
						    color: #fff;
						    font-weight: bold;
						    border: 1px solid #ddd0;
						    -webkit-border-radius: 2px;
						    border-radius: 5px;
						    background: #2ee27f;
						    -webkit-box-sizing: border-box;
						    box-sizing: border-box;
						    cursor: pointer;
							">
							</div>
						</div>
					</div>
				</form:form>
					</div>
				

		</div>
	</div>
</div>


</body>
</html>
