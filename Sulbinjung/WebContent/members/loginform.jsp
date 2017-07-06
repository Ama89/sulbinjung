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
<link rel="stylesheet" href="resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css"/>
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<style>
	.container{
		width: 1000px;
	}
	#topmain{	
			margin-top : 50px;	
		}
	
	.row{
		margin-left: 30px;
	}

	#member_login{
		font-size: 30px; 
		text-align: center;
		}
		
	.logo{
		width: 400px;
		height: 190px;
		display: block;
		margin-left: 265px;
	}
</style>
</head>
<body>
	<!-- 상단 네비게이션 (로그인/회원가입) -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div>
	    		<ul class="nav navbar-nav">
	    			<a class="navbar-brand" href="/index.jsp">sulbinjung</a>
	    		</ul>  
	   			<ul class="nav navbar-nav navbar-right">
	   				<li><a href="<%=cPath %>/members/loginform.jsp?url=<%=cPath%>">
	   					<span class="glyphicon glyphicon-log-in"></span>Login</a></li>
	    			<li><a href="<%=cPath %>/members/signupform.jsp?url=<%=cPath%>">
	    				<span class="glyphicon glyphicon-user"></span>Signup</a></li>
				</ul>
		     </div>
	  	</div>
	</nav>

<div class="container" id="topmain">
     <img src="../resource/images/sulbinjung_logo.png" alt="logo" class="logo" />
	<div class="row">
		<div class="col-sm-5 col-sm-offset-3">
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
			
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>