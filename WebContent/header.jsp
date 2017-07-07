<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String cPath = request.getContextPath();
	String id=(String)session.getAttribute("id");
%>   
    
<!-- 상단 네비게이션 (로그인/회원가입) -->
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div>
    		<ul class="nav navbar-nav">
    			<a class="navbar-brand" href="<%=cPath %>/index.jsp">sulbinjung</a>
    		</ul>  
   			<ul class="nav navbar-nav navbar-right">
   				<%if(id == null){ %>
   					<li><a href="<%=cPath %>/members/loginform.jsp?url=<%=cPath%>">
   						<span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    				<li><a href="<%=cPath %>/members/signupform.jsp?url=<%=cPath%>">
    					<span class="glyphicon glyphicon-user"></span>Signup</a></li>
    			<%}else{ %>
    				<li><a href="<%=cPath %>/members/logout.jsp?url=<%=cPath%>">
   						<span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
    				<li><a href="<%=cPath %>/pages/mypage.jsp?url=<%=cPath%>">
    					<span class="glyphicon glyphicon-user"></span>Mypage</a></li>
    			<%} %>
			</ul>
	     </div>
  	</div>
</nav>