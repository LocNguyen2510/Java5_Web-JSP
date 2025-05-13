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
	String hoVaTen = request.getParameter("hoVaTen");
	String email = request.getParameter("email");
	String soLuong = request.getParameter("soLuong");
	int soLuongSanPham =0;
	try{soLuongSanPham=Integer.parseInt(soLuong);}
	catch(Exception e){
		
	}
			
	%>
	<h1>Xác Nhận Đặt Hàng</h1>
	<p>
		Xin cảm ơn bạn
		<%=hoVaTen%>
		có email là <b> <%=email%>
		</b> đã đặt
		<%=soLuong%>
		đơn hàng <br /> Số tiền bạn cần thanh toán là :<b> <%= soLuongSanPham * 50000%>VND
		</b>
	</p>

</body>
</html>