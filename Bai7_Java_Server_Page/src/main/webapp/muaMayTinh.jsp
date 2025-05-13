<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
	<h1>Chọn Cấu Hình Máy Tính Bạn Cần Mua</h1>
	</hr>
	<form id="form-1">
		<h2>Processor</h2>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="processor"
				id="core-i9" value="core-i9">  <label class="form-check-label"
				for="core-i9">Core-i9</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="processor"
				id="core-i7" value="core-i7"> <label class="form-check-label"
				for="core-i7" >Core-i7</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="processor"
				id="core-i5" value="core-i5"> <label class="form-check-label"
				for="core-i5" >Core-i5</label>
		</div>
	</form>
	<form id="form-2">
		<h2>RAM</h2>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="ram"
				id="ram-16gb" value="ram-16gb">  <label class="form-check-label"
				for="ram-16gb">Ram 16gb</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="ram"
				id="ram-8gb" value="ram-8gb"> <label class="form-check-label"
				for="ram-8gb" >Ram 8gb</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="ram"
				id="ram-4gb" value="ram-4gb"> <label class="form-check-label"
				for="ram-4gb" >Ram 4gb</label>
		</div>
	</form>
	<h2>Monitor</h2>
	<select class="form-select" aria-label="Default select example">
  <option selected>Monitor</option>
  <option value="1">2k 144hz IPS</option>
  <option value="2">FullHD 120hz VA</option>
  <option value="3">4k 60hz OLED</option>
</select>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="fax" id="checkChecked" checked>
  <label class="form-check-label" for="checkChecked">
    Checked checkbox
  </label>
</div>
</body>
</html>