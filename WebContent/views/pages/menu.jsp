<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String cPath = request.getContextPath();
    String id=(String)session.getAttribute("id");
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/pages/menu.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/menu.css" />
    
</style>
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
    
	<!-- 로고이미지 -->        
	<div class="container-fluid">    
       <div class="row">    
			<div class="col-xs-12">                
				<img src="<%=cPath %>/resource/images/sulbinjung_logo.png" alt="logo" class="logo" 
                     style="width: 450px;
                     height: 220px;
                     display: block;
                     margin: 0 auto;
                     margin-top:50px;
                     margin-bottom:100px;" />
			</div>
		</div>    
	</div>  

   <!-- 메인 컨테이너 -->
    <div class="container">	
        <div class="row">
			<h3>Menu</h3>
			<div class="tabbable-panel">
				<div class="tabbable-line">
				<!-- tab 반상/단품 -->
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
								술빈정 반상
							</a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
								술빈정 단품
							</a>
						</li>	
						<li>
							<a href="#tab_default_3" data-toggle="tab">
								술빈정 주류
							</a>
						</li>					
					</ul>
					
					<!-- tab contents -->
					<div class="tab-content">
						<!-- 반상 -->
						<div class="tab-pane active" id="tab_default_1">
							<p>
								<ul style="font-size: 12px;">
									<li>술빈정은 호박밥, 흑미밥, 현미밥, 곤그레밥, 흰밥이 매일매일 새롭게 제공됩니다. </li>							
									<li>밥, 국, 반찬은 리필가능합니다.</li>
								</ul>							
							</p>	
							<!-- 밥 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2">밥</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 닭불고기</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>
									<p>
										평범하지 않은 새로운 맛의 닭불고기 입니다.
										<br/><strong>10,500</strong>
									</p>								
									<div class="row">
										<strong>2. 간장새우덮밥</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>									
									<p>간장새우를 밥에 넣어 김에 싸 먹는 맛이 일품입니다.
										<br/><strong>10,000</strong>
									</p>					
									<div class="row">
										<strong>3. 매콤제육볶음</strong>
									</div>								
									<p>매콤하고 담백한 제육볶음이 입맛을 살려줍니다.
										<br/><strong>10,000</strong>
									</p>
									<div class="row">
										<strong>4. 골동반(곤드레비빔밥)</strong>	
									</div>								
									<p>
										영양소를 두루 갖춘 비빔밥입니다. (밥 리필 가능)
										<br/><strong>10,000</strong>
									</p>
									<div class="row">
										<strong>5. LA갈비</strong>
									</div>								
									<p>
										갈비의 진리 LA갈비입니다.
										<br/><strong>11,500</strong>
									</p>									
									<div class="row">
										<strong>6. 쭈꾸미날치알쌈</strong>
									</div>									
									<p>
										쭈꾸미를 버터와 함께 매콤하게 볶아낸 요리로 날치알과 싸먹으면 좋습니다.
										<br/><strong>11,500</strong>
									</p>
									<div class="row">
										<strong>7. 갈비탕</strong>									
									</div>								
									<p>
										갈비를 푹 고아 만든 뜨끈뜨끈한 갈비탕입니다.
										<br/><strong>10,500</strong>
									</p>						
									<br/><br/>
									<p style="font-size:10px;"> * 조미료가 들어가지 않은 국물이므로
										<br/>기호에따라 소금을 첨가하시면 감칠맛이 더욱 좋습니다.
									</p>
								</div>
								<!-- menu images -->
								<div class="col-xs-8">																													
									<img src="<%=cPath %>/resource/images/menu_0101.png" alt="메뉴사진_한방보쌈바베큐"/>										
								</div>															
							</div>	
							<!-- 밥 end -->	
							
							<!-- 면 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2">면</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>9. 육회소바</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>
									<p>
										시원한 육회소바와 튀김이 함께 제공됩니다.
										<br/><strong>11,000</strong>
									</p>								
									<div class="row">
										<strong>10. 명란파스타</strong>
										
									</div>									
									<p>입안에서 톡톡 터지는 명란과 쫄깃한 파스타 면이 만났습니다.
										<br/><strong>12,000</strong>
									</p>
								</div>
							</div>						
						</div>													
											
						<!-- 단품 -->
						<div class="tab-pane" id="tab_default_2">							
							<!-- 단품(술상) -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2" >단품 (술상)</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 한방바베큐보쌈</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>
									<p>
										보쌈은 겉은 바삭 속은 부드럽게 요리하여 
										한방소스로 졸여낸 메뉴입니다.
										<br/><strong>15,800</strong>
									</p>
									<div class="row">
										<strong>2. 연어사시미</strong>
									</div>
									<p>
										비타민이 풍부한 연어 사시미 요리입니다.
										<br/><strong>14,700</strong>
									</p>
									<div class="row">
										<strong>3. 고추튀김</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>
									<p>
										오이고추속에 고기를 듬뿍넣어 바삭하고 매콤하게 튀겨낸 메뉴입니다.
										<br/><strong>14,500</strong>
									</p>
									<div class="row">
										<strong>4. 낙지볶음</strong>
									</div>
									<p>
										싱싱한 낙지에 불맛을 내어 화끈 매곱하게 요리합니다. 
										<br/><strong>15,000</strong>
									</p>
								</div>
							</div>	
							<!-- EXTRA(반상추가) -->						
							<div class="row" style="margin-top: 20px;">
								<div class="col-xs-2" style="color:#8e9631;
															 padding-left: 45px;
															 padding-top: 10px;
															 font-size: 20px;">
									<strong>EXTRA</strong></div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>	
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>&nbsp;&nbsp;반상추가</strong>
									</div>
									<p>
										밥,국,반찬이 제공됩니다.
										<br/><strong>3,000</strong>
									</p>
								</div>
							</div>																
						</div>
						<!-- 주류 -->
						<div class="tab-pane" id="tab_default_3">							
							<!-- 화요 & 비잔클리어 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-3" 
									style="color:white; 
											background-color:#8e9631;
											font-size: 24px;	
											padding: 10px;">화요 & 비잔클리어
								</div>
								<div class="col-xs-8">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 화요(25)</strong>
									</div>
									<p>
										<strong>22,000</strong>
									</p>
									<div class="row">
										<strong>2. 비잔클리어(일본)</strong>
									</div>
									<p>
										<strong>50,000</strong>
									</p>
									<div class="row">
										<strong>3. 화요 세트</strong>
									</div>
									<p>
										화요,레몬슬라이스,토닉워터 2개
										<br/><strong>29,000</strong>
									</p>
									<div class="row">
										<strong>4. 비잔클리어 세트(일본)</strong>
									</div>
									<p>
										비잔클리어,레몬슬라이스,토닉워터 2개
										<br/><strong>57,000</strong>
									</p>
								</div>
							</div>
							<!-- 전통주 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2" >전통주</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 오메기술</strong>
									</div>
									<p>
										제주/차조로 빋어진 제주도의 도지정
										무형문화재로 지정된 유명한 전통주
										<br/><strong>18,000</strong>
									</p>
									<div class="row">
										<strong>2. 이강주</strong>
									</div>
									<p>
										전주/조선 중엽부터 전라도와 황해도에서
										제작되었던 손꼽히는 5대 명주
										<br/><strong>49,000</strong>
									</p>
									<div class="row">
										<strong>3. 솔송주</strong>
									</div>
									<p>
									    경남 함양/찹쌀에 솔잎,송순을 이용하여
									    빚은 술로 솔 향기가 가득한 매력적인 술
										<br/><strong>29,000</strong>
									</p>
									<div class="row">
										<strong>4. 송절주</strong>
									</div>
									<p>
										서울/서울시 무형문화재 2호로 선정 될 만큼
										소중한 우리나라의 전통주
										<br/><strong>18,000</strong>
									</p>
									<div class="row">
										<strong>5. 문배술</strong>
									</div>
									<p>
										김포/고려시대 왕에게 진상되었던 술로써,
										첨가물 없이 깨끗함과 순수함이 오래가는 술
										<br/><strong>18,000</strong>
									</p>									
								</div>
							</div>
							<!-- 소주 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2" >소주</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 참이슬</strong>
									</div>
									<p>
										<strong>4,500</strong>
									</p>
									<div class="row">
										<strong>2. 처음처럼</strong>
									</div>
									<p>
										<strong>4,500</strong>
									</p>
									
									<div class="row">
										<strong>3. 좋은데이</strong>
									</div>
									<p>
										<strong>4,500</strong>
									</p>
									<div class="row">
										<strong>4. 한라산</strong>
									</div>
									<p>
										<strong>5,000</strong>
									</p>
									<div class="row">
										<strong>5. 자몽에이슬</strong>
									</div>
									<p>
										<strong>5,000</strong>
									</p>
									<div class="row">
										<strong>6. 이슬톡톡</strong>
									</div>
									<p>
										<strong>5,000</strong>
									</p>									
								</div>
							</div>
							<!-- 기타 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2" >기타</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 구름생맥주</strong>
									</div>
									<p>
										<strong>4,000</strong>
									</p>
									<div class="row">
										<strong>2. 카스-하이트</strong>
									</div>
									<p>
										<strong>4,500</strong>
									</p>
									<div class="row">
										<strong>3. 클라우드</strong>
									</div>
									<p>
										<strong>5,000</strong>
									</p>
									<div class="row">
										<strong>4. 청하</strong>
									</div>
									<p>
										<strong>5,000</strong>
									</p>
									<div class="row">
										<strong>5. 복분자</strong>
									</div>
									<p>
										<strong>12,000</strong>
									</p>
								</div>
							</div>		
							<!-- Nonalcohol -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2" >Nonalcohol</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 토닉워터</strong>
									</div>
									<p>
										<strong>3,000</strong>
									</p>	
									<div class="row">
										<strong>2. 콜라</strong>
									</div>
									<p>
										<strong>2,000</strong>
									</p>	
									<div class="row">
										<strong>3. 사이다</strong>
									</div>
									<p>
										<strong>2,000</strong>
									</p>	
									<div class="row">
										<strong>4. 페리에라임</strong>
									</div>
									<p>
										<strong>3,500</strong>
									</p>	
								</div>
							</div>					
						</div>
					</div>
				</div>
			</div>
		</div>					
	    
	<jsp:include page="../footer.jsp"></jsp:include>	
	
	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>
</body>
</html>
