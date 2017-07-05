<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String cPath = request.getContextPath();
	String url = request.getParameter("url");
	if(url==null){ //만일 없으면
		//인덱스 페이지로 이동 될 수 있도록 
		url=request.getContextPath();
	}
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
			
		}
	
	.row{
		margin-top: 100px;
		margin-left: 30px;
	}

	#member_login{
		font-size: 30px; 
		text-align: center;
</style>
</head>
<body>

<div class="container">
    <div class="wrapper">
    	<div class="logo">logo</div>
    </div>
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			<form action="login.jsp?url=<%=url%>" method="post">
			<div id="member_login">MEMBER LOGIN</div>
			<p style="text-align: center;">회원으로 가입하시면 더욱 다양한 혜택을 누릴 수 있습니다.</p>
			<br/>
			<hr style="border: 1.2px solid #cecece;">
			<br/>
				<!-- 아이디 입력 -->
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" name="id" id="id"/>
					<p class="help-block">반드시 입력하세요</p>
				</div>
				<!-- 비밀번호 입력 -->
				<div class="form-group">
					<label for="pwd">비밀번호</label>
					<input type="password" class="form-control" name="pwd" id="pwd"/>
				</div>
				<!-- 아이디 저장 -->
				<div class="checkbox">
					<label>
						<input type="checkbox"/> 아이디 저장
					</label>
				</div>
				<!-- 버튼 -->
				<button type="submit" class="btn btn-default">로그인</button>
				<button type="reset" class="btn btn-default">취소</button>
			</form>			
		</div>
	</div>	
</div>
			<br/>
			<hr style="border: 1.2px solid #cecece;">
			<br/>
</body>
</html>