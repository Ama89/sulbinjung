<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String cPath = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>===== 환영합니다 =====</title>
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
			margin-top: 10px;
		}

	#main1{
		display: block;
		margin: 0 auto;
		padding: 20px;
		width: 1000px;
		height: 650px;
	}
	
	#two{
		color: black;
		float: right;
		margin-right: 20px;
	}

	#one{
		color: black;
		float: right;
		margin-right: 200px;
	}
</style>
</head>
<body>
<div class="container">
    <div class="wrapper">
    	<div class="logo">logo</div>
		<a id="one" href="<%=cPath %>/members/signup.jsp">sign up</a>
		<a id="two" href="<%=cPath %>/members/login.jsp">login</a>	
    </div>
	<img id="main1" src="<%=cPath %>/resource/images/sulbinjung_23.png" alt="main1">
</div>

<script src="<%=cPath %>/resource/js/jquery-3.2.0.js"></script>
<script src="<%=cPath %>/resource/js/bootstrap.js"></script>	
</body>
</html>