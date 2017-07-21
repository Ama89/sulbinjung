<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String cPath = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
<style>

</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
				
	<!-- 로고이미지 -->        
	<div class="container-fluid">    
       <div class="row">    
			<div class="col-xs-12">                
				<img src="<%=cPath %>/resource/images/sulbinjung_logo.png" alt="logo"
                    style="width: 450px;
                    height: 220px;
                    display: block;
                    margin: 0 auto;
                    margin-top:50px; 
                    margin-bottom: 50px;"/>
			</div>
		</div>    
	</div>    
	
	<!-- contents -->

	<div class="container">
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">	
				<form action="signup.jsp" method="post">
					<br/>
					<hr style="border: 1.2px solid #cecece;">
					<br/>
					<!-- 아이디 -->
					<div class="form-group">
						<label for="id">아이디</label>
						<input type="text" class="form-control" name="id"/>
						<p class="help-block">반드시 입력하세요</p>
					</div>
					<!-- 비밀번호 -->
					<div class="form-group">
						<label for="pwd">비밀번호</label>
						<input type="password" class="form-control" name="pwd"/>
					</div>
					<!-- 비밀번호 확인 -->
					<div class="form-group">
						<label for="pwd">비밀번호 확인</label>
						<input type="password" class="form-control" name="confirm_pwd"/>
					</div>
					<!-- 이름 -->
					<div class="form-group">
						<label for="name">이름</label>
						<input type="text" class="form-control" name="name"/>	
					</div>
					<!-- 생년월일 -->
					<div class="form-group">
						<label for="birth">생년월일( ex: 19901212 )</label> <br/>
						<input type="text" name="birth" class="form-control"/>
					</div>
					<!-- 이메일  -->
					<div class="form-group">
						<label for="email">이메일</label>
						<input type="text" class="form-control" name="email"/>
					</div>
					<!-- 전화번호  -->
					<div class="form-group">
						<label for="phone">전화번호</label>
						<br/>
						<input type="text" class="form-control" name="phone">
					</div>
					<!-- 성별 -->
					<div class="form-group">
						<label>성별  </label>
						<br/>
					  	<input type="radio"  name="gender" value="M">남자 &nbsp;
					 	<input type="radio"  name="gender" value="F">여자
					</div>
						<button type="submit" class="btn btn-default">확인</button> &nbsp;
						<button type="reset" class="btn btn-default">취소</button>	
					</form>	
			</div>				
		</div>
	</div>	
	<br/><br/><br/><br/><br/>
	
	<!-- footer -->	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>