<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/KakaoPay.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<!-- 다음주소 -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
	<video id="videobcg" preload="auto" autoplay="autoplay" loop="loop"
		muted="muted">

		<source src="../../resources/css/shipControllPanelSmall.mp4"
			type="video/mp4">

	</video>
	<div class="neon_effect">
		<p class="headText">카카오 결재 페이지</p>
	</div>
	<div class="neon_effect">
		<div class="Text1">아이디 : ${member.user_id}</div>
	</div>
	<div class="neon_effect">
		<div class="Text2">회원명 : ${memberId} 님</div>
	</div>
	<div class="neon_effect">
		<div class="Text3">주문번호 : ${orderId}</div>
	</div>
	<form method="post" action="/kakaoPay">
	<c:forEach items="${orderItems}" var="ol">
		<tr>
			<td>
				<div class="image_wrap">

					
						
						<input type=hidden class="total_amount" name="total_amount"
							value="${totalPrice}"> <input type=hidden
							class="tax_free_amount" name="tax_free_amount"
							value="${tax_free_amount}"> <input type=hidden
							class="partner_order_id" name="partner_order_id"
							value="${orderId}"> <input type=hidden
							class="partner_user_id" name="partner_user_id"
							value="${memberId}"> <input type=hidden class="item_name"
							name="item_name" value="주문품"> <input type=hidden
							class="quantity" name="quantity" value="${orderItemCount}">
				

					<c:out value=""></c:out>
				</div>
			</td>
		</tr>
	</c:forEach>
	<button class="order_btn">
							<p class="btnText">카카오페이</p>
						</button>
		</form>
</body>
</html>