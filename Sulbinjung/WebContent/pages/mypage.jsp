<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//login여부 알아오기
	String id=(String)session.getAttribute("id");
	//context경로 읽어오기
	String cPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mypage.jsp</title>
</head>
<body>
	<h3>마이페이지</h3>
	<% if(id==null){ %>
		<script>
			alert("로그인이 필요합니다.");
			location.href="../members/loginform.jsp?url=<%=cPath%>/member/play.jsp";
		</script>
	<%}else{ %>
		<p><strong><%=id %></strong>님 로그인중...</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum vitae totam repellat nesciunt laboriosam atque ullam id cupiditate animi ad blanditiis sapiente quaerat excepturi quisquam consequatur sed itaque rerum perferendis.</p>	
		<a href="../members/updateform.jsp">회원정보수정</a>
	<%} %>
</body>
</html>