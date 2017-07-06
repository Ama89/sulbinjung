<%@page import="sulbinjung.dao.FaqDao"%>
<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	FaqDao dao=FaqDao.getInstance();
	dao.delete(num);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete.jsp</title>
</head>
<body>
	<script>
		alert("<%=num%> 번 FAQ 를 삭제 했습니다.");
		location.href="faqlist.jsp"; 
	</script>
</body>
</html>