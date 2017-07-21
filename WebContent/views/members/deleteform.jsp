<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		if(confirm("정말 탈퇴하실건가요ㅜㅜ?"))
		{
			location.href="delete.jsp";
		}else{
			location.href="mypage.jsp";
			alert("감사감사");
		}
	</script>
</body>
</html>