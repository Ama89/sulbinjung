<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="sulbinjung.dto.MembersDto"/>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String cPath = request.getContextPath();
    boolean isValid = MembersDao.getInstance().isValid(dto);
    //로그인 후 리다일렉트 이동할 url 주소
    String url = request.getParameter("url");
    if(url==null){
        url=request.getContextPath();
    }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
    <%if(isValid){ 
        request.getSession().setAttribute("id", dto.getId()); %>
        <script>
        alert("로그인성공");
        location.href="<%=cPath%>/index.jsp";
        </script>        
    <%} else { %>
        <p>아이디 혹은 비밀번호가 틀려요</p>
        <script>
        alert("로그인실패");
        location.href="<%=cPath%>/members/loginform.jsp";
        </script>
    <%} %>
</body>
</html>