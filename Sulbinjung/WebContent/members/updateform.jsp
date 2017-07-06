<%@page import="sulbinjung.dto.MembersDto"%>
<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();

	String id=(String)request.getSession().getAttribute("id");
	//MemberDao 객체를 이용해서 수정할 회원의 정보를 얻어온다.
	MembersDao dao=MembersDao.getInstance();
	MembersDto dto = MembersDao.getInstance().getData(id);
		
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css"/>
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
<style>

	.container{
		width: 1000px;
	}
	
	#topmain{	
			margin-top : 50px;	
		}
		
	/* MEMBER JOIN 글 */
	#member_login{
		font-size: 30px; 
		text-align: center;
		
	/* 수평 줄 */
	hr{
		width: 700px;
		border: 3px solid black;
	}	
	
	
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<!-- signupform 입니다 -->
<div class="container" id="topmain">
	<!-- logo -->
	<!-- head안에 style 속성이 적용이 안되어서 안에 적었습니다 -->
	 <img src="../resource/images/sulbinjung_logo.png" alt="logo" class="logo" 
	 	style="width: 400px;
		height: 190px;
		display: block;
		margin-left: 280px;" />	
	<div class="row">
	<div class="col-sm-4 col-sm-offset-4">
			<!-- Join 글 -->
			<div id="member_login">MEMBER JOIN</div>
			<!-- 줄 -->
			<br/>	
			<hr style="border: 1.2px solid #cecece;">
			<br/>	
		<form action="update.jsp?num=<%=dto.getNum()%>&isMember=<%=dto.getIsMember()%>" method="post">
		<!-- 아이디 -->
			<div class="form-group">
				<input type="hidden" class="form-control" name="id" value="<%=dto.getId()%>"/>
				<label for="id">아이디</label>
				<input type="text" class="form-control" id="id" 
					value="<%=dto.getId()%>" disabled/>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<input type="hidden" class="form-control" name="id" value="<%=dto.getPwd()%>"/>
				<label for="pwd">비밀번호</label>
				<input type="password" class="form-control" id="pwd" 
					value="<%=dto.getPwd()%>" disabled/>
			</div>
		<!-- 이름 -->
		<div class="form-group">
			<label for="name">이름</label>
			<input type="text" class="form-control" name="name" value="<%= dto.getName()%>"/>	
			</div>
		<!-- 생년월일 -->
		<div class="form-group">
			<label for="birth">생년월일( ex: 19901212 )</label> <br/>
			<input type="text" name="birth" class="form-control" value="<%= dto.getBirth()%>"/>
		</div>
		<!-- 이메일  -->
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" class="form-control" name="email" value="<%= dto.getEmail()%>"/>
		</div>
		<!-- 전화번호  -->
			<div class="form-group">
				<label for="phone">전화번호</label>
				<br/>
				<input type="text" class="form-control" name="phone" value="<%= dto.getPhone()%>"/>
			</div>
		<!-- 성별 -->
			<div class="form-group">
				<input type="hidden" name="gender" value="<%=dto.getGender()%>"/>
				<label>성별  </label>
				<br/>
				<%if(dto.getGender().equals('M')){ %>
				  <input type="radio"  id="gender" value="M" checked disabled>남자 &nbsp;
				  <input type="radio"  id="gender" value="F" disabled>여자
				<%}else{ %>
				  <input type="radio"  id="gender" value="M" disabled>남자 &nbsp;
				  <input type="radio"  id="gender" value="F" checked disabled>여자
				<%} %>
			</div>	
		<button type="submit" class="btn btn-default">확인</button> &nbsp;
		<button type="reset" class="btn btn-default">취소</button>	
				
			</form>				
			</div>		
		</div>
	</div>
			<!-- 줄 -->
			<br/>	
			<hr style="border: 1.2px solid #cecece;">
			<br/>		
			
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>