<%@page import="sulbinjung.dto.MembersDto"%>
<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//파라미터로 전달되는 수정할 회원의 번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//MemberDao 객체를 이용해서 수정할 회원의 정보를 얻어온다.
	MembersDto dto = MembersDao.getInstance().getData(num);
		
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
</head>
<body>
<div class="container">
    <div class="wrapper">
    	<div class="logo">logo</div>
    </div>
	<div class="row">
		<div class="col-sm-5 col-sm-offset-3">
			<form action="signupform.jsp" method="post">
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" id="email" value="<%= dto.getId()%>"/>
					<p class="help-block">반드시 입력하세요</p>
				</div>

				<div class="form-group">
					<label for="name">이름</label>
					<input type="text" class="form-control" id="name" value="<%= dto.getName()%>"/>
				</div>

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
				
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="text" class="form-control" id="email" value="<%= dto.getEmail()%>"/>
				</div>
					<div class="form-group">
						<label for="phone">전화번호</label>
						<br/>
						<input type="text" class="form-control" id="phone" value="<%= dto.getPhone()%>">
					</div>
							
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
</body>
</html>