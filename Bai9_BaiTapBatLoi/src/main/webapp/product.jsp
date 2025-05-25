<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
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
<style>
.rq {
	color: red
}
</style>
<body>
	<div class="container">
		<form class="row g-3 needs-validation" novalidate>
			<div class="col-12">
				<div class="col-6">
					<label for="maSanPham" class="form-label">Mã Sản Phẩm</label><span
						class="rq">*</span> </font> <input type="text" class="form-control"
						id="maSanPham" required>
					<div class="valid-feedback">Looks good!</div>

				</div>
				<div class="col-6">
					<label for="tenSanPham" class="form-label">Tên Sản Phẩm</label><span
						class="rq">*</span> <input type="text" class="form-control"
						id="tenSanPham" required>
				</div>
			</div>
			<div class="col-12">
				<div class="col-6">
					<label for="giaNhap" class="form-label">Giá Nhập</label><span
						class="rq">*</span> </font> <input type="number" step="0.01"
						class="form-control" id="giaNhap" required>


				</div>
				<div class="col6">
					<label for="giaBan" class="form-label">Giá Bán</label><span
						class="rq">*</span> <input type="number" step="0.01" class="form-control"
						id="giaBan" required>
				</div>
			</div>
			<div class="col-12">
				<div class="col-6">
					<label for="giaNhap" class="form-label">Giá Nhập</label><span
						class="rq">*</span> </font> <input type="number" step="0.01"
						class="form-control" id="giaNhap" required>


				</div>
				<div class="col6">
					<label for="giaBan" class="form-label">Giá Bán</label><span
						class="rq">*</span> <input type="number" step="0.01" class="form-control"
						id="giaBan" required>
				</div>
			</div>
			<!-- 	<div class="col-md-3">
				<label for="validationCustom04" class="form-label">State</label> <select
					class="form-select" id="validationCustom04" required>
					<option selected disabled value="">Choose...</option>
					<option>...</option>
				</select>
				<div class="invalid-feedback">Please select a valid state.</div>
			</div>
			<div class="col-md-3">
				<label for="validationCustom05" class="form-label">Zip</label> <input
					type="text" class="form-control" id="validationCustom05" required>
				<div class="invalid-feedback">Please provide a valid zip.</div>
			</div>
			<div class="col-12">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="invalidCheck" required> <label
						class="form-check-label" for="invalidCheck"> Agree to
						terms and conditions </label>
					<div class="invalid-feedback">You must agree before
						submitting.</div>
				</div>
			</div>
			<div class="col-12">
				<button class="btn btn-primary" type="submit">Submit form</button>
			</div> -->
		</form>
	</div>
</body>
</html>