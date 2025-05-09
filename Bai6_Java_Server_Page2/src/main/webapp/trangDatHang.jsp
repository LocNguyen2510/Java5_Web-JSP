<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 String hoVaTen =request.getParameter("hoVaTen");
String email= request.getParameter("email");
String soLuong = request.getParameter("soLuong");
%>
<h1>Xác Nhận Đặt Hàng</h1>
<p>Xin cảm ơn bạn <%=hoVaTen %> có email là <b> <%=email %> </b> đã đặt <%=soLuong %> đơn hàng</p>

</body>
</html>