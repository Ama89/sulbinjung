<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
%>
<footer class="container-fluid">
	<div class="footer">
		<ul class="fnb">
			<li><a href="">공지사항</a></li>
			<li><a href="">About Us</a></li>	
			<li><a href="">예약하기</a></li>
			<li><a href="">문의하기</a></li>
		</ul>
		<ul class="snsicon">
			<li><a href="mailto:contact@sulbinjung.kr" target="_blacnk"><i class="glyphicon glyphicon-envelope"></i></a></li>
			<li><a href="https://www.instagram.com/" target="_blacnk"><i class="fa fa-instagram"></i></a></li>
			<li><a href="https://www.facebook.com" target="_blacnk"><i class="fa fa-facebook-square"></i></a></li>
			<li><a href="<%= cPath %>/index.jsp" target="_blacnk"><i class="glyphicon glyphicon-home"></i></a></li>
		</ul>
		<ul class="info">
			<li>술빈정</li>
	        <li><span>대표</span> 김수빈</li>
	        <li><span>개인정보담당자</span> 김수빈</li>
	        <li><span>사업자등록번호</span> 123-45-67890</li>
	        <li class="hidden-xs" style="display:block;"></li>
	        <li><span>사업장소재지</span> 서울특별시 중구 남대문로 117 동아빌딩 15층</li>
	        <li class="hidden-xs" style="display:block;"></li>
	        <li><span>일반문의</span> qna@sulbinjung.kr</li>
	        <li class="hidden-xs" style="display:block;"></li>
	        <li><span>대표번호</span> 1588-0000</li>
	        <li><span>영업시간</span> 09:00~22:00 (15:00~17:00 BreakTime)</li>
		</ul>
	</div>
</footer>