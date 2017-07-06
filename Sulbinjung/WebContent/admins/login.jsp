<%@page import="sulbinjung.dao.AdminDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="sulbinjung.dto.AdminDto"/>
<jsp:setProperty property="*" name="dto"/>    
<%
	String cPath = request.getContextPath();
	boolean isValid = AdminDao.getInstance().isValid(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%if(isValid){ 
        request.getSession().setAttribute("id", dto.getId()); %>
        <script>
        alert("로그인성공");
        location.href="<%=cPath%>/admins/index.jsp";
        </script>        
    <%} else { %>
        <p>아이디 혹은 비밀번호가 틀려요</p>
        <script>
        alert("로그인실패");
        location.href="<%=cPath%>/admin.jsp";
        </script>
    <%} %>
</body>
</html>