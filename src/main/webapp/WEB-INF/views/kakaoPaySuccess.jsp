<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<link rel="stylesheet" href="/resources/css/KakaoPay.css">
</head>
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

<video id="videobcg" preload="auto" autoplay="autoplay" loop="loop"
		muted="muted">

		<source src="../../resources/css/shipControllPanelSmall.mp4"
			type="video/mp4">

	</video>

<div class="neon_effect">
		<p class="headText2">카카오페이 결제가 정상적으로 완료되었습니다.</p>
	</div>
	<div class="neon_effect">
		<div class="Text11">결제일시: ${info.approved_at}</div>
	</div>
	<div class="neon_effect">
		<div class="Text22">주문번호: ${info.partner_order_id}</div>
	</div> 
	
	<a href="/orderList"><button  class="order_btn">
							<p class="btnText">주문현황</p>
						</button></a>
<%-- <p class="">카카오페이 결제가 정상적으로 완료되었습니다.</p>
 
결제일시:     ${info.approved_at}<br/>
주문번호:    ${info.partner_order_id}<br/>


<a href="/orderList">주문현황</a> --%>
  
  
 
<%-- <h2>${info}</h2> --%>
 
</body>
</html>