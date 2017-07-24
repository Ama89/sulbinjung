<%@page import="java.util.List"%>
<%@page import="sulbinjung.dao.FaqDao"%>
<%@page import="sulbinjung.dto.FaqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/faq/faqlist.jsp</title>
</head>
<body>
	<a href="writeform.do">글쓰기</a>
	
	<table>
		<thead>
			<tr>
				<th>FAQ 번호</th>
				<th>FAQ 제목</th>
				<th>FAQ 내용</th>	
				<th>FAQ 수정</th>
				<th>FAQ 삭제</th>		
			</tr>
		</thead>
		<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.num }</td>
				<td><a href="detail.do?num=${tmp.num }">${tmp.title }</a></td>
				<td>${tmp.contents }</td>
				<td><a href="updateform.do?num=${tmp.num }">수정</a></td>
				<td><a href="delete.do?num=${tmp.num }">삭제</a></td>				
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>