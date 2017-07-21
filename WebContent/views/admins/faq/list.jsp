<%@page import="java.util.List"%>
<%@page import="sulbinjung.dao.FaqDao"%>
<%@page import="sulbinjung.dto.FaqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//MemberDao 객체의 참조값 얻어오기
	FaqDao dao=FaqDao.getInstance();
	//회원목록 얻어오기
	List<FaqDto> list=dao.getList();
%>
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
		<%for(FaqDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><a href="faqpage.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle() %></a></td>
				<td><%=tmp.getContents() %></td>
				<td><a href="faqupdateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
				<td><a href="faqdelete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</body>
</html>