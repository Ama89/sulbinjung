<%@page import="sulbinjung.dao.FaqDao"%>
<%@page import="sulbinjung.dto.FaqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	int num=Integer.parseInt(request.getParameter("num"));
	String title=request.getParameter("title");
	String contents=request.getParameter("contents");
	
	FaqDto dto=new FaqDto(num, title, contents);
	//MemberDao 객체를 이용해서 수정반영한다.
	FaqDao dao=FaqDao.getInstance();
	dao.update(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/faq/faqupdate.jsp</title>
</head>
<body>
<script>
	alert("<%=num%> 번 FAQ 를 수정했습니다.");
	location.href="faqlist.jsp";
</script>
</body>
</html>