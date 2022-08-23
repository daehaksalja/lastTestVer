<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
카카오페이 결제가 정상적으로 완료되었습니다.
 
결제일시:     ${info.approved_at}<br/>
주문번호:    ${info.partner_order_id}<br/>

<a href="/orderList">주문현황</a>
  
  
 
<%-- <h2>${info}</h2> --%>
 
</body>
</html>