<%@page import="sulbinjung.dto.MembersDto"%>
<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//login여부 알아오기
	String id=(String)request.getSession().getAttribute("id");
	//context경로 읽어오기
	String cPath=request.getContextPath();
	
	//MemberDao 객체를 이용해서 수정할 회원의 정보를 얻어온다.
	MembersDao dao=MembersDao.getInstance();
	MembersDto dto = MembersDao.getInstance().getData(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css"/>
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />

<title>mypage.jsp</title>
<style>
	.myinfo{
		text-align: center;
		font-size: 25px;
	}
	
	.button p{
		display: inline;
		margin: 0 auto;
	}
	
	.btn1{
		margin-left: 70px;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<h3>마이페이지</h3>
	 <!-- 로고이미지 -->        
   <div class="container-fluid">    
       <div class="row">    
           <div class="col-xs-12">                
                   <img src="<%=cPath %>/resource/images/sulbinjung_logo.png" alt="logo" class="logo" 
                     style="width: 450px;
                    height: 220px;
                    display: block;
                    margin: 0 auto;" />
               </div>
           </div>    
       </div>
   
   <!-- 메인 컨테이너 -->
   <div class="container">
		<div class="row">
			<div class="col-xs-4 col-xs-push-4">
			<p class="myinfo">My Info</p>
			<br/>
			<hr style="border: 1.2px solid #cecece;">
			<br/>
				<% if(id==null){ %>
		<script>
			alert("로그인이 필요합니다.");
			location.href="../members/loginform.jsp?url=<%=cPath%>/pages/mypage.jsp";
		</script>
	<%}else{ %>
		<p><strong><%=id %></strong>님 로그인중...</p>
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
				<input type="hidden" class="form-control" name="pwd" value="<%=dto.getPwd()%>"/>
				<label for="pwd">비밀번호</label>
				<input type="password" class="form-control" id="pwd" 
					value="<%=dto.getPwd()%>" disabled/>
			</div>
		<!-- 이름 -->
		<div class="form-group">
			<label for="name">이름</label>
			<input type="text" class="form-control" name="name" value="<%= dto.getName()%>" disabled/>	
			</div>
		<!-- 생년월일 -->
		<div class="form-group">
			<label for="birth">생년월일( ex: 19901212 )</label> <br/>
			<input type="text" name="birth" class="form-control" value="<%= dto.getBirth()%>" disabled/>
		</div>
		<!-- 이메일  -->
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" class="form-control" name="email" value="<%= dto.getEmail()%>"disabled/>
		</div>
		<!-- 전화번호  -->
			<div class="form-group">
				<label for="phone">전화번호</label>
				<br/>
				<input type="text" class="form-control" name="phone" value="<%= dto.getPhone()%>"disabled/>
			</div>
		<!-- 성별 -->
			<div class="form-group">
				<input type="hidden" name="gender" value="<%=dto.getGender()%>"disabled/>
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
			</form>	
			<div class="button">				
				<p><button class="btn btn-default btn1" onclick="window.open('<%=cPath %>/members/deleteform.jsp?url=<%=cPath%>')">
	   						<span class="glyphicon glyphicon-log-out"></span>탈퇴하기</button></p>
	   						&nbsp;&nbsp;	
		<button class="btn btn-default" onclick="window.open('../members/updateform.jsp')">회원정보수정</button>		
			</div>
			
	<%} %>			
			</div>
		</div>
</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>