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
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css"/>
<style>
		.wrapper{
		display: inline;
		}

	.logo{
			width: 120px;
			height: 70px;
			border-width: 2px;
			border-style: solid;
			border-color: black;
			margin: 0 auto;
			display: block;
			margin-top: 20px;
			margin-bottom: 20px;
		}
	#phone1{
		width: 100px;
		display: inline-block;
	}

	#phone2{
		width: 200px;
		display: inline-block;
	}

	.dropdown{
		display: inline-block;
	}

	#birth{
		width: 100px;
		display: inline-block;
	}

	#member_login{
		font-size: 30px; 
		text-align: center;
	hr{
		width: 700px;
		border: 3px solid black;
	}
	

	
</style>
</head>
<body>
<div class="container">
    <div class="wrapper">
    	<div class="logo">logo</div>
    </div>
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			<div id="member_login">MEMBER JOIN</div>
			<br/>	
			<hr style="border: 1.2px solid #cecece;">
			<br/>	
			<form action="signupform.jsp" method="post">
				<!-- 아이디 -->
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" id="email"/>
					<p class="help-block">반드시 입력하세요</p>
				</div>
				<!-- 비밀번호 -->
				<div class="form-group">
					<label for="pwd">비밀번호</label>
					<input type="password" class="form-control" id="pwd"/>
				</div>
				<!-- 비밀번호 확인 -->
				<div class="form-group">
					<label for="pwd">비밀번호 확인</label>
					<input type="password" class="form-control" id="confirm_pwd"/>
				</div>
				<!-- 이름 -->
				<div class="form-group">
					<label for="name">이름</label>
					<input type="text" class="form-control" id="name"/>
				</div>
				<!-- 생년월일 -->
				<div class="form-group">
					<label for="birth">생년월일</label> <br/>
					<select name="" id="birth" class="selectpicker form-control">
						<option disabled="disabled">연도</option>
						<option value="2017">2017</option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
					</select>
					<select name="" id="birth" class="selectpicker form-control">
						<option disabled="disabled">월</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>

					</select>
					<select name="" id="birth" class="selectpicker form-control">
						<option disabled="disabled">일</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
				<!-- 이메일  -->
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="text" class="form-control" id="email"/>
				</div>
				<!-- 전화번호  -->
					<div class="form-group">
						<label for="phone">전화번호</label>
						<br/>
						<input type="text" class="form-control" id="phone">
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
				</div>
			</form>
		</div>
	</div>	
</div>

			<br/>	
			<hr style="border: 1.2px solid #cecece;">
			<br/>
</body>
</html>