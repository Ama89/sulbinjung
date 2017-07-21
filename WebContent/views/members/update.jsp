<%@page import="sulbinjung.dao.MembersDao"%>
<%@page import="sulbinjung.dto.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id=(String)request.getSession().getAttribute("id");
	//수정할 회원의 정보를 읽어온다.
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String pwd=request.getParameter("pwd");
	String name=request.getParameter("name");
	String birth=request.getParameter("birth");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String regdate=request.getParameter("regdate");
	String gender=request.getParameter("gender");
	boolean isMember=Boolean.parseBoolean(request.getParameter("isMember"));
	//MemberDto 객체에 담는다.
	MembersDto dto=new MembersDto(num, id, pwd, name, birth, email, phone, 
			regdate, gender, isMember);
	//MemberDao 객체를 이용해서 수정반영한다.
	MembersDao dao=MembersDao.getInstance();
	dao.update(dto);
	//응답한다. 
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정 결과</title>
</head>
<body>
<script>
	alert("<%=id%> 회원의 정보를 수정했습니다.");
	location.href="../pages/mypage.jsp";
</script>
</body>
</html>