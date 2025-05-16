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
	double tongTien = 0;
	//Radio Button => name
	String processor = request.getParameter("processor");
	if (processor != null) {
		if (processor.equals("core-i9")) {
			tongTien += 5000000;
		} else if (processor.equals("core-i7")) {
			tongTien += 3500000;
		}

		else if (processor.equals("core-i5")) {
			tongTien += 2000000;

		}
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
	if(monitor !=null){
		if(monitor.equals("1")){
			tongTien += 5500000;
		}else if(monitor.equals("2")){
			tongTien += 3000000;
		}else if(monitor.equals("3")){
			tongTien += 4000000;
		}
	}
	%>
</body>
</html>