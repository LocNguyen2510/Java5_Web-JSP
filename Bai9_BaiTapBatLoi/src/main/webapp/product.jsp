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
		var error = "";
		maSanPham = document.getElementById("maSanPham").value;
		giaBan = document.getElementById("giaBan").value;
		if (maSanPham.length == 0) {
			error = "Bạn phải nhập mã sản phẩm";
		}
		if (giaBan <= 0) {
			error_giaBan = document.getElementById("error_giaBan");
			error_giaBan.innerHTML = "<span class ='rq'>Bạn cần nhập giá bán</span>";
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
	<%
	String e_maSanPham = request.getAttribute("e_maSanPham") + "";

	if (e_maSanPham == null || e_maSanPham.equals("null")) {
		e_maSanPham = "";
	}

	String value_maSanPham = request.getAttribute("value_maSanPham") + "";
	String value_tenSanPham = request.getAttribute("value_tenSanPham") + "";
	String value_giaBan = request.getAttribute("value_giaBan") + "";
	String value_giaNhap = request.getAttribute("value_giaNhap") + "";
	String value_hanSuDung = request.getAttribute("value_hanSuDung") + "";
	String value_vat = request.getAttribute("value_vat") + "";
	String value_moTa = request.getAttribute("value_moTa") + "";

	value_maSanPham = (value_maSanPham.equals("null")) ? "" : value_maSanPham;
	value_tenSanPham = (value_tenSanPham.equals("null")) ? "" : value_tenSanPham;
	value_giaBan = (value_giaBan.equals("null")) ? "" : value_giaBan;
	value_giaNhap = (value_giaNhap.equals("null")) ? "" : value_giaNhap;
	value_hanSuDung = (value_hanSuDung.equals("null")) ? "" : value_hanSuDung;
	value_vat = (value_vat.equals("null")) ? "" : value_vat;
	value_moTa = (value_moTa.equals("null")) ? "" : value_moTa;
	%>
	<div class="container mt-3">
		<form class="row g-3 needs-validation" action="save-Product">
			<div class="row">
				<div class="col-6">
					<label for="maSanPham" class="form-label">Mã Sản Phẩm</label><span
						class="rq">*</span> <input type="text" class="form-control"
						value="<%=value_maSanPham%>" id="maSanPham" name="maSanPham"
						required>
					<div class="valid-feedback">Looks good!</div>
					<div>
						<%=e_maSanPham%>
					</div>
				</div>
				<div class="col-6">
					<label for="tenSanPham" class="form-label">Tên Sản Phẩm</label><span
						class="rq">*</span> <input type="text" class="form-control"
						id="tenSanPham" name="tenSanPham" value="<%=value_tenSanPham%>"
						required>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="giaNhap" class="form-label">Giá Nhập</label><span
						class="rq">*</span> <input type="number" step="0.01"
						class="form-control" id="giaNhap" name="giaNhap"
						<%=value_giaNhap%> required>


				</div>
				<div class="col-6">
					<label for="giaBan" class="form-label">Giá Bán</label><span
						class="rq">*</span> <input type="number" step="0.01"
						class="form-control" id="giaBan" name="giaBan" <%=value_giaBan%>
						required>
					<div id="error_giaBan"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="hanSuDung" class="form-label">Hạn Sử Dụng</label> <input
						type="date" step="0.01" class="form-control"
						id="hanSuDung" name="hanSuDung" <%=value_hanSuDung%>>
				</div>
				<div class="col-6">
					<label for="vat" class="form-label">VAT</label> <input
						type="number" step="0.01" class="form-control" id="vat" name="vat"
						<%=value_vat%>>
				</div>
			</div>

			<div class="row">
				<label for="moTa" class="form-label">Mô Tả</label>
				<textarea rows="10" cols=20 " class="form-control" id="moTa"
					name="moTa" <%=value_moTa%>></textarea>
			</div>
			<div class="row">
				<button class="btn btn-primary" type="submit" onclick="my_submit()">Lưu
					Sản Phẩm</button>
			</div>
		</form>
	</div>
</body>
</html>