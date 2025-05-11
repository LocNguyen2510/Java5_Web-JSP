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
	
<div class="container" style="width:30%">
<form action="trangDatHang.jsp" method="get">
	
<div class="form-floating mb-3" >
  <input type="number" class="form-control" id="soLuong" name="soLuong" placeholder="Số lượng đặt hàng">
  <label for="soLuong">Số lượng đặt hàng</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="hoVaTen" placeholder="Họ và tên" name="hoVaTen">
  <label for="hoVaTen">Họ và tên</label>
  </div>
<div class="form-floating mt-3">
  <input type="email" class="form-control" id="email" placeholder="Email" name="email">
  <label for=email>Email</label>
</div>
<button type="submit" class="btn btn-success mt-3" style="margin-left:35%">Đặt Hàng</button>
</button>
</form>
</div>
</body>
</html>