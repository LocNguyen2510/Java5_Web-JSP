<%@page
	import="org.eclipse.jdt.internal.compiler.lookup.ModuleBinding.UnNamedModule"%>
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
	double ramPrice = 0;
	if (ram != null) {
		if (ram.equals("ram-16gb")) {
			ramPrice = 1000000;
		} else if (ram.equals("ram-8gb")) {
			ramPrice = 500000;
		}

		else if (ram.equals("ram-4gb")) {
			ramPrice = 300000;

		}
		tongTien += ramPrice;
	}
	String monitor = request.getParameter("monitor");
	double monitorPrice = 0;
	String nameMonitor = "";
	if (monitor != null) {
		if (monitor.equals("0")) {

		} else if (monitor.equals("1")) {
			monitorPrice = 5500000;
			nameMonitor = "2k 144hz IPS";
		} else if (monitor.equals("2")) {
			nameMonitor = "FullHD 120hz VA";
			monitorPrice = 3000000;
		} else if (monitor.equals("3")) {
			nameMonitor = "4k 60hz OLED";
			monitorPrice = 4000000;

		}
		tongTien += monitorPrice;
	}

	String[] accessoires = request.getParameterValues("accessories");
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
			<%
			if (ram != null) {
			%>
			<tr>
				<td><%=ram%></td>
				<td><%=ramPrice%></td>
			</tr>
			<%
			}
			%>
			<%
			if (monitor != null && !monitor.trim().isEmpty()) {
			%>
			<tr>
				<td><%=nameMonitor%></td>
				<td><%=monitorPrice%></td>
			</tr>
			<%
			}
			%>
			<%
			if (accessoires != null)
				for (String luaChon : accessoires) {
					double price = 0;
					if (luaChon.equals("Camera")) {
				price = 800000;
				tongTien += price;
					}
					if (luaChon.equals("Headphone")) {
				price = 1000000;
				tongTien += price;
					}
					if (luaChon.equals("Headset")) {
				price = 1500000;
				tongTien += price;
					}
			%>
			<tr>
				<td><%=luaChon%></td>
				<td><%=price%></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="2" style="color: highlight;"><h3>
						Tổng Tiền =
						<%=Math.round(tongTien)%> VND</h2></td>

			</tr>

		</tbody>

	</table>

</body>
</html>