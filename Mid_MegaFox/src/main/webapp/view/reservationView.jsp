<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.shop.vo.ShopVO"%>

<%
String vid = (String) session.getAttribute("id");
String result ="";
if(vid != null){
   result = vid+"님";
}else{
   result = "로그인";
}
%>



<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<title>MEGAFOX</title>

<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/swiper.css">

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/megafox_favicon.ico">

<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">


<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.7.0.min.js">
</script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery.serializejson.min.js"></script>


<script type="text/javascript">

$(function(){
	$("#cancel").on("click",function(){
		
		history.back();

	});
	
});

</script>
</head>


<style>

body {
  align-items: center;
  background-color: #000;
  display: flex;
  justify-content: center;
}


form {
margin : 0 auto;
width: 360px;
margin-top : 100px;
background-color : white;
height : 535px;
}

.title {
  color: #eee;
  font-family: sans-serif;
  font-size: 25px;
  font-weight: 600;
  margin-top: -50px;
  text-align:center;
  margin-bottom: 10px;
}

.subtitle {
  color: #eee;
  font-family: sans-serif;
  font-size: 16px;
  font-weight: 600;
  margin-top: 10px;
}

.input-container {
  position: relative;
  width: 100%;
}

.ic1 , .ic2, .ic3, .ic4 , .ic5 {
  margin-top: 10px;
}


.input {
  background-color: transparent;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: black;
  font-size: 18px;
  height: 100%;
  outline: 0;
  padding: 4px 20px 0;
  width: 100%;
}

.cut {
  background-color:transparent;
  border-radius: 10px;
  height: 20px;
  left: 20px;
  position: absolute;
  top: -20px;
  transform: translateY(0);
  transition: transform 200ms;
  width: 100px;
}


.placeholder {
  color: black;
  font-size: 18px;
  font-weight: 700;
  font-family: sans-serif;
  left: 20px;
  line-height: 14px;
  pointer-events: none;
  transform-origin: 0 50%;
  transition: transform 200ms, color 200ms;
  top: 20px;
  margin-left: 10px;
}



.button {
  background-color:  #d51619;
  border-radius: 15px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  cursor: pointer;
  font-size: 18px;
  height: 35px;
  margin-top: 10px;
  // outline: 0;
  text-align: center;
  width: 20%;
}

.button:active {
  background-color: #06b;
}


#div2{
height:200px;
}

h1,tr{

color: white;
}

/*은비 - 푸터 하단고정*/
footer {background:black;
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
}

.image-container {
  position: relative;
}

.movie-title {
  position: absolute;
  bottom: 0;
  left: 0;
  font-size:25px;
  color: white;
  margin: 10px;
  font-weight: 600;
}

</style>


<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
							<a href="<%=request.getContextPath() %>/clientList.do"> 
						<em>
						<img src="<%=request.getContextPath() %>/images/megafox로고.png" alt="MEGAFOX">
						</em> 
						</a>
					</h1>
					
					<nav class="nav">
					<div id="div1">
						</div>
						<ul class="clearfix1">
					     <li><a href="<%=request.getContextPath() %>/clientList.do">고객관리</a></li>
							<li><a href="<%=request.getContextPath() %>/shopperList.do">점주관리</a></li>
							<li><a href="<%=request.getContextPath() %>/mngMovieList.do">영화관리</a></li>
							<li><a href="#">게시판관리</a></li>
						</ul>
						<div id="div2">
						</div>
						<ul class="clearfix2">
							<li class="log"><a href="<%=request.getContextPath() %>/view/login/Login.jsp"><%=result %></a></li>
							<li class="log"><a href="<%=request.getContextPath()%>/logOut.do">로그아웃</a></li>
						</ul>
					</nav>
					
				</div>
			</div>
		</div>
	</header>		

 	
<body>


<%
 ShopVO shopVo = (ShopVO)request.getAttribute("shopVo");
%>
     
<form>
<div class="title">📌예매 내역 확인📌</div>

<input type="hidden" name="sh_id" value="">

<div class="image-container" style="height: 200px; overflow:hidden;">
<img src="<%=request.getContextPath() %>/images/Movie03.png" alt="MEGAFOX" >
<div class="movie-title">엘리멘탈(자막)</div>
</div>

      <div class="input-container ic1">
         <label for="id" class="placeholder">상영일</label>
      <input id="id" class="input" type="text" value="6/18(일)" readonly >
</div><hr>

      <div class="input-container ic2">
     <label for="pass" class="placeholder">상영시간</label>
        <input id="pass" name="sh_pw" class="input" type="text" value="11:40~13:39"> 
      </div><hr>


        <div class="input-container ic3">
         <label for="name" class="placeholder">상영관</label>
         <input id="name" name="sh_nm" class="input" type="text" value="CGV 신촌아트레온
2관3층"> 
      </div><hr>
      
            <div class="input-container ic4">
             <label for="bnum" class="placeholder">좌석</label>
            <input id="name" name="sh_nm" class="input" type="text" value="일반2 F05,F06
2관3층">        
      </div><hr>


      
 <input type="submit" class="button" value="저장" id="save"><input type = "reset" class="button" value="취소" id="cancel">

</form>
</body>
 	

 	<footer id="footer">
		<div id="footer_sns">
			<div class="container">
			</div>
		</div>
		<div id="footer_infor">
			<div class="container">
				<div class="row">
					<div class="footer_infor">
						<h2>
							<img src="<%=request.getContextPath() %>/images/megafox로고.png" alt="megafox">
						</h2>
						<ul>
							<li><a href="#">회사소개</a></li>
							<li><a href="#">채용정보</a></li>
							<li><a href="#">제휴/광고/부대사업 문의</a></li>
							<li><a href="#">이용약관</a></li>
							<li><a href="#">개인정보처리방침</a></li>
							<li><a href="#">고객센터</a></li>
							<li><a href="#">윤리경영</a></li>
						</ul>
						<address>
							<p>
								대전 중구 계룡로 846 메가폭스<br>
								<span class="bar2">대표자명 윤강혁</span> 개인정보보호 책임자 경영지원실 실장 이철희<br>
								<span class="bar2">사업자등록번호 211-86-59478</span> 통신판매업신고번호 제 833호
							</p>
							<p>Copyright 2023 by Megafox Inc. All right reserved</p>
						</address>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>