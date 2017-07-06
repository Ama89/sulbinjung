<%@page import="sulbinjung.dao.FaqDao"%>
<%@page import="sulbinjung.dto.FaqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String title=request.getParameter("title");
	String contents=request.getParameter("contents");
	// MemberDto 객체에 회원의 정보 저장하기
	FaqDto dto=new FaqDto();
	dto.setTitle(title);
	dto.setContents(contents);
	// 2.DB 에 저장하기
	FaqDao dao=FaqDao.getInstance();
	boolean isSuccess=dao.insert(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/faq/faqwrite.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<p>FAQ 를 등록 했습니다.</p>
<%}else{ %>
	<p>FAQ 를 등록 실패!</p>
<%} %>
<a href="faqlist.jsp">목록보기</a>
</body>
</html>