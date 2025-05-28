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
<script>
	function my_submit() {
		//bắt lỗi
		error = "";
		maSanPham = document.getElementById("maSanPham").value;
		giaBan = document.getElementById("giaBan").value;
		if (maSanPham.length == 0) {
			error = "Bạn phải nhập mã sản phẩm";
		}
		if (giaBan <= 0) {
			error_giaBan= document.getElementById("error_giaBan");
			error_giaBan.innerHTML="<span class ='rq'>Bạn cần nhập giá bán</span>";
		}

		if (error.length > 0) {
			alert(error);
			return;
		} else {

			//submit
			my_form = document.getElementById("my_form");
			my_form.submit();
		}
	}
</script>
</head>
<style>
.rq {
	color: red
}
</style>
<body>
	<div class="container mt-3">
		<form class="row g-3 needs-validation" action="save-Product">
			<div class="row">
				<div class="col-6">
					<label for="maSanPham" class="form-label">Mã Sản Phẩm</label><span
						class="rq">*</span> <input type="text" class="form-control"
						id="maSanPham" name="maSanPham" required>
					<div class="valid-feedback">Looks good!</div>

				</div>
				<div class="col-6">
					<label for="tenSanPham" class="form-label">Tên Sản Phẩm</label><span
						class="rq">*</span> <input type="text" class="form-control"
						id="tenSanPham" name="tenSanPham" required>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="giaNhap" class="form-label">Giá Nhập</label><span
						class="rq">*</span> <input type="number" step="0.01"
						class="form-control" id="giaNhap" name="giaNhap" required>


				</div>
				<div class="col-6">
					<label for="giaBan" class="form-label">Giá Bán</label><span
						class="rq">*</span> <input type="number" step="0.01"
						class="form-control" id="giaBan" name="giaBan" required>
						<div id="error_giaBan"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="hanSuDung" class="form-label">Hạn Sử Dụng</label> <input
						type="datetime-local" step="0.01" class="form-control"
						id="hanSuDung" name="hanSuDung">
				</div>
				<div class="col-6">
					<label for="vat" class="form-label">VAT</label> <input
						type="number" step="0.01" class="form-control" id="vat" name="vat">
				</div>
			</div>

			<div class="row">
				<label for="moTa" class="form-label">Mô Tả</label>
				<textarea rows="10" cols=20 " class="form-control" id="moTa"
					name="moTa"></textarea>
			</div>
			<div class="row">
				<button class="btn btn-primary" type="submit" onclick="my_submit()">Lưu
					Sản Phẩm</button>
			</div>
		</form>
	</div>
</body>
</html>