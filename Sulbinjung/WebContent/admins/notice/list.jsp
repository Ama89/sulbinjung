<%@page import="sulbinjung.dto.NoticeDto"%>
<%@page import="java.util.List"%>
<%@page import="sulbinjung.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="writeform.jsp">글쓰기</a>
	<%
		//글 목록 얻어오기
		NoticeDao dao=NoticeDao.getInstance();
		List<NoticeDto> list=dao.getList();
		
	%>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>조회수</th>
				<th>등록일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<% for(NoticeDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getAdminnum() %></td>
					<td><a href="detail.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle() %></a></td>
					<td><%=tmp.getHit() %></td>
					<td><%=tmp.getWritedate() %></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
			<% } %>
		</tbody>
	</table>	
</body>
</html>