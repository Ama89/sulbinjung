<%@page import="sulbinjung.dao.NoticeDao"%>
<%@page import="sulbinjung.dto.NoticeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String title=request.getParameter("title");
	String job=request.getParameter("job");
	String filepath=request.getParameter("filepath");
	String contents=request.getParameter("contents");
	
	NoticeDto dto=new NoticeDto();
	dto.setTitle(title);
	dto.setAdminjob(job);
	dto.setFilepath(filepath);
	dto.setContents(contents);	
	
	NoticeDao dao=NoticeDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess) {%>
		<script>
			alert("새 글을 등록했습니다");
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("새 글을 등록했습니다");
			location.href="list.jsp";
		</script>
	<%} %>
</body>
</html>