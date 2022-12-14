<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<link rel="stylesheet" href="../../../resources/css/memberRead1.css">
<style type="text/css">

/* 비디오 배경 */
#videobcg {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 1920px;
	min-height: 1080px;
	width: 100%;
	height: 100%;
	z-index: -1000;
	overflow: hidden;
}
</style>

<style>
/* 깔끔하게 스크롤바싹없애는 */
html, body, div, video {
	margin: 0;
	padding: 0;
}

body {
	padding: 0px, 0px, 0px, 0px;
	margin: 0px, 0px, 0px, 0px;
	overflow: hidden;
	background-color: #000;
}

.container {
	
}
</style>
<body>
 	 <video id="videobcg" preload="auto" autoplay="true" loop="loop"
   muted="muted">

   <source src="../../resources/css/adobeVideo/goldEarthSmall.mp4" type="video/mp4">



</video>
   <div class="header">
   
			<h1 class="Logo"> <a href="/" class="spaceShip">SPACE SHIP</a></h1>

			
				
				
			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/search"
				class="a1">우주선검색</a> <a href="/moveMakeWeb4" class="a1">ufo</a> <a
				href="/moveMakeWeb5" class="a1">우주인채용</a>
			
			
			
       
         
       
			<a class="frame-btn" href="/logout" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
			</a>
			</div>
  <div class="neon_effect">
   <h1 class="pGold">My Information</h1>
   </div>
   <div class="neon_effect">
<div class="userText">
	  <h2 class="userText1H2">ID <br>
	   Name  <br>
	   Phone  <br>
	   E-Mail <br>
	   adult?  <br>
	   receive </h2>
</div>
<div class="neon_effect">
    	<h2 class="userText2H2">
    	${dto.user_id} <br>
    	${dto.user_nick}<br>
    	${dto.user_phone}<br>
    	${dto.user_email}<br>
    	${dto.user_adult}<br>
    	${dto.email_check}
    	</h2>
  </div>  
	   
	  
			<div class="neon_effect">
				<div class="exitBtnBox">
					<a href="/memberUpdate?user_no=${dto.user_no}" class="homeATag">수정하기</a>
				</div>
   </div>
</body>
</html>