<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="#{pagecontext.request.contextPath}/resource/css/bootstrap.css"/>
<link rel="stylesheet" href="#{pagecontext.request.contextPath}/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="#{pagecontext.request.contextPath}/resource/css/sulbinjung.css" />
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
		<form action="update.do?num=${dto.num}&isMember=${dto.member}" method="post" id="updateForm">
		<!-- 아이디 -->
			<div class="form-group">
				<input type="hidden" class="form-control" name="id" value="${dto.id }"/>
				<label for="id">아이디</label>
				<input type="text" class="form-control" id="id" 
					value="${dto.id }" disabled/>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<input type="hidden" class="form-control" name="pwd" value="${dto.pwd }"/>
				<label for="pwd">비밀번호</label>
				<input type="password" class="form-control" id="pwd" 
					value="${dto.pwd }" disabled/>
			</div>
		<!-- 이름 -->
		<div class="form-group">
			<label for="name">이름</label>
			<input type="text" class="form-control" name="name" value="${dto.name }"/>	
			</div>
		<!-- 생년월일 -->
		<div class="form-group">
			<label for="birth">생년월일( ex: 19901212 )</label> <br/>
			<input type="text" name="birth" class="form-control" value="${dto.birth }"/>
		</div>
		<!-- 이메일  -->
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" class="form-control" name="email" value="${dto.email }"/>
		</div>
		<!-- 전화번호  -->
			<div class="form-group">
				<label for="phone">전화번호</label>
				<br/>
				<input type="text" class="form-control" name="phone" value="${dto.phone }"/>
			</div>
		<!-- 성별 -->
			<div class="form-group">
				<input type="hidden" name="gender" value="${dto.gender }"/>
				<label>성별  </label>
				<br/>
				<c:choose>
					<c:when test="${dto.gender eq 'M'}">
						<input type="radio"  id="gender" value="M" checked disabled>남자 &nbsp;
				  		<input type="radio"  id="gender" value="F" disabled>여자
					</c:when>
					<c:otherwise>
						<input type="radio"  id="gender" value="M" disabled>남자 &nbsp;
				  		<input type="radio"  id="gender" value="F" checked disabled>여자
					</c:otherwise>
				</c:choose>				
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