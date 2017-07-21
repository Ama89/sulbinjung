<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	String cPath = request.getContextPath();
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/admins/index.jsp</title>
</head>
<body>
	<% if (id==null) { %>
		<script>
			alert("admin 권한 페이지 입니다.");
			location.href="<%=cPath%>/admin.jsp";
		</script>
		
	<% }else{ %>
		<a href="notice/list.jsp">공지목록</a>
		<a href="faq/faqlist.jsp">FAQ 목록</a>
		<a href="logout.do">로그아웃</a>
	<% } %>
</body>
</html>