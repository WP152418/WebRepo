<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setAttribute("price", 10000000); %>
<c:set var="price" value="10000000"></c:set>
${ price }<br>
<fmt:formatNumber value="${ price }" type="number"></fmt:formatNumber>
<fmt:formatNumber value="${ price }" type="percent"></fmt:formatNumber>
<fmt:formatNumber value="${ price }" type="currency"></fmt:formatNumber>
<br>

<c:set var="now" value="%= new java.util.Date() %>" />
${ now }<br>
<!--  full, medium, short -->
<fmt:formatDate value="${ now }" type="date" dateStyle="full"/><br>
<fmt:formatDate value="${ now }" type="time" timeStyle="medium"/><br>
<fmt:formatDate value="${ now }" type="both" dateStyle="yyyy/MM/dd hh:mm:ss"/>

</body>
</html>