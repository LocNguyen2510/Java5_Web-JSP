<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
int a =3;
int b =5;
int sum = a+b;
double canBacHai = Math.sqrt(sum);
%>
ba cong hai =<b> <%= sum %></b>
</body>
</html>