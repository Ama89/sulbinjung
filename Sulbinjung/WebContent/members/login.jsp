<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String cPath = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css"/>
<style>
	.wrapper{
		display: inline;
		}
	.logo{
			width: 120px;
			height: 70px;
			border-width: 2px;
			border-style: solid;
			border-color: black;
			text-align: center;
			margin: 0 auto;
			display: block;
			margin-top: 20px;
			margin-bottom: 20px;
		}
</style>
</head>
<body>
<div class="container">
    <div class="wrapper">
    	<div class="logo">logo</div>
    </div>
	<div class="row">
		<div class="col-sm-5 col-sm-offset-3">
			<form action="">
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" id="email"/>
					<p class="help-block">반드시 입력하세요</p>
				</div>
				<div class="form-group">
					<label for="pwd">비밀번호</label>
					<input type="password" class="form-control" id="pwd"/>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox"/> 아이디 저장
					</label>
				</div>
				<button type="submit" class="btn btn-default">로그인</button>
				<button type="reset" class="btn btn-default">취소</button>
			</form>			
		</div>
	</div>	
</div>
</body>
</html>