<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	MembersDao.getInstance().delete(id);
	session.invalidate();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete.jsp</title>
</head>
<body>
	<script>
		alert("탈퇴가 완료되었습니다");
		location.href="../index.jsp";
	</script>
</body>
</html>