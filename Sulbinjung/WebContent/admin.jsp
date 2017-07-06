<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<style>
 	 .login-wrap{
	    margin-top: 150px;
	    max-width: none !important; 
	    text-align:center;
 	 }
</style>
</head>
<body>
<div class="login-wrap">
    <div class="container">
        <div class="col-xs-4 col-xs-offset-4 panel panel-default">
            <div class="panel-heading">관리자 로그인</div>
            <div class="panel-body">
                <form action="admins/login.jsp" method="post">
                    <div class="form-group">
                        <input id="id" class="form-control" placeholder="E-mail" name="id" type="text" autofocus>
                    </div>
                    <div class="form-group">
                        <input id="pwd" class="form-control" placeholder="Password" name="pwd" type="password" value="">
                    </div>
                    <input class="btn btn-default btn-block" type="submit" value="로그인">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>