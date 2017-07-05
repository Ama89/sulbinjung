<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 폼 전송되는 파라미터값이 자동으로 UsersDto 객체에 들어가도록 --%>
<jsp:useBean id="dto" class="sulbinjung.dto.MembersDto"/>
<jsp:setProperty property="*" name="dto"/>
<%

System.out.println(request.getParameter("id"));
System.out.println(request.getParameter("pwd"));
System.out.println(request.getParameter("confirm_pwd"));
System.out.println(request.getParameter("name"));
System.out.println(request.getParameter("birth"));
System.out.println(request.getParameter("email"));
System.out.println(request.getParameter("phone"));
System.out.println(request.getParameter("gender"));
	//폼전송된 파라미터가 담겨 있는MembersDto 객체를 인자로 전달해서
	//DB 에 저장하기 
	boolean isSuccess=MembersDao.getInstance().insert(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 결과</title>
</head>
<body>
<% if(isSuccess){%>
	<script>
		alert("가입 성공");
		location.href="loginform.jsp";
	</script>
<%}else{ %>
	<script>
		alert("가입 실패");
		location.href="signup.jsp";
	</script>
<%} %>
</body>
</html>