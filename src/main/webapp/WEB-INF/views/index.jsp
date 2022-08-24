<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
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
}</style>
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/make.css">
</head>

<body>
	<div class="header">
		<div class="neon_effect">
			<h1 class="Logo">
				<a> SPACE SHIP</a>
			</h1>
		</div>
		<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/search" class="a1">우주선검색</a>
		<a href="/moveMakeWeb4" class="a1">ufo</a> <a href="/moveMakeWeb5"
			class="a1">우주인채용</a>

		<c:if test="${isAdmin == 1}">
			<a class="frame-btn" href="/adminMenu" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">admin</span>
			</a>

		</c:if>

		<c:if test="${not empty member.user_id}">
			<a class="frame-btn" href="/logout" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"></span> <span
				class="frame-btn__line frame-btn__line--tall"></span> <span
				class="frame-btn__line frame-btn__line--flat"></span> <span
				class="frame-btn__outline frame-btn__outline--flat"></span> <span
				class="frame-btn__line frame-btn__line--tall"></span> <span
				class="frame-btn__line frame-btn__line--flat"></span> <span
				class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
			</a>




			<a class="frame-btn" href="/orderList"> <span
				class="frame-btn__outline frame-btn__outline--tall"></span> <span
				class="frame-btn__line frame-btn__line--tall"></span> <span
				class="frame-btn__line frame-btn__line--flat"></span> <span
				class="frame-btn__outline frame-btn__outline--flat"></span> <span
				class="frame-btn__line frame-btn__line--tall"></span> <span
				class="frame-btn__line frame-btn__line--flat"></span> <span
				class="frame-btn__solid"></span> <span class="frame-btn__text">주문현황</span>
			</a>
		</c:if>

		<c:if test="${empty member.user_id}">
			<a class="frame-btn" href="moveLogin"> <span
				class="frame-btn__outline frame-btn__outline--tall"></span> <span
				class="frame-btn__line frame-btn__line--tall"></span> <span
				class="frame-btn__line frame-btn__line--flat"></span> <span
				class="frame-btn__outline frame-btn__outline--flat"></span> <span
				class="frame-btn__line frame-btn__line--tall"></span> <span
				class="frame-btn__line frame-btn__line--flat"></span> <span
				class="frame-btn__solid"></span> <span class="frame-btn__text">LOGIN</span>
			</a>
		</c:if>
	</div>
	
	
	 <video id="videobcg" preload="auto" autoplay="true" loop="loop"
		muted="muted">

		<source src="../../../resources/css/adobeVideo/veryBigVideo.mp4" type="video/mp4">

	</video> 

	<!-- <video class="mainVideo"
		src="../../resources/css/adobeVideo/veryBigVideo.mp4" muted autoplay
		loop></video> -->

	<h1 class="stupid">"마치 우주같이 위대한 나를 위하여 그대들이 해줄것이 있소"</h1>

	<video class="ship"
		src="../../resources/css/hubble_space_telescope_-_221 (Original).mp4"
		width="50%" muted autoplay loop></video>

	<h1 class="stupid2">"헌금을 내시오"</h1>

	<video class="video3"
		src="../../resources/css/the_sun_in_the_space_-_15299 (Original)"
		muted autoplay loop></video>
	<div>
		<h1 class="CEO">CEO</h1>
		<p class="footer">
			<strong>Lee, Won Ik</strong>
		</p>
		<p class="footer2">"Zi-Ral ha ji ma ra"</p>


	</div>
	<video class="video4"
		src="../../resources/css/adobeVideo/blueStarsSmall.mp4" muted
		autoplay loop></video>




</body>
</html>