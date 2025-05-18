<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"
	integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<%
	double tongTien = 0;
	//Radio Button => name
	String processor = request.getParameter("processor");
	double processorPrice = 0;
	if (processor != null) {
		if (processor.equals("core-i9")) {
			processorPrice = 5000000;
		} else if (processor.equals("core-i7")) {
			processorPrice = 3500000;
		} else if (processor.equals("core-i5")) {
			processorPrice = 2000000;
		}
		tongTien += processorPrice;
	}
	//Ram
	String ram = request.getParameter("ram");
	if (ram != null) {
		if (ram.equals("ram-16gb")) {
			tongTien += 1000000;
		} else if (ram.equals("ram-8gb")) {
			tongTien += 500000;
		}

		else if (ram.equals("ram-4gb")) {
			tongTien += 300000;

		}
	}
	String monitor = request.getParameter("monitor");
	if (monitor != null) {
		if (monitor.equals("1")) {
			tongTien += 5500000;
		} else if (monitor.equals("2")) {
			tongTien += 3000000;
		} else if (monitor.equals("3")) {
			tongTien += 4000000;
		}
	}

	String[] accessoires = request.getParameterValues("accessories");
	if(accessoires!=null)
	for (String luaChon : accessoires) {
		if (luaChon.equals("Camera")) {
			tongTien += 800000;
		}
		if (luaChon.equals("HeadPhone")) {
			tongTien += 1000000;
		}
		if (luaChon.equals("Headset")) {
			tongTien += 1500000;
		}
	}
	%>
	<h1>Hóa Đơn</h1>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Tên Sản Phẩm</th>
				<th scope="col">Giá Tiền</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (processor != null) {
			%>
			<tr>
				<td><%=processor%></td>
				<td><%=processorPrice%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>