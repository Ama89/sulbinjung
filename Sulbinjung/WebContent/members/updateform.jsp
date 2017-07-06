<%@page import="sulbinjung.dto.MembersDto"%>
<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//파라미터로 전달되는 수정할 회원의 번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//MemberDao 객체를 이용해서 수정할 회원의 정보를 얻어온다.
	MembersDao dao=MembersDao.getInstance();
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
			<form action="signup.jsp" method="post">
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" name="id" value="<%= dto.getId()%>"/>
					<p class="help-block">반드시 입력하세요</p>
				</div>

				<div class="form-group">
					<label for="name">이름</label>
					<input type="text" class="form-control" name="name" value="<%= dto.getName()%>"/>
				</div>

				<div class="form-group">
					<label for="birth">생년월일( ex: 19901212 )</label> <br/>
					<input type="text" class="form-control" name="birth" value="<%= dto.getBirth()%>"/>
				</div>
				
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="text" class="form-control" name="email" value="<%= dto.getEmail()%>"/>
				</div>
				<div class="form-group">
					<label for="phone">전화번호</label>
					<br/>
					<input type="text" class="form-control" name="phone" value="<%= dto.getPhone()%>">
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