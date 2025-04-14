<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>TEXT</h1>
	<h2>TEXT</h2>
	<h3>TEXT</h3>
	<h4>TEXT</h4>
	<h5>TEXT</h5>
	<h6>TEXT</h6>
	<p>Đoạn văn bản</p>
	<pre> <!--dùng hiển thị nội dung như ban đầu , giữ cố định khoảng trắng , ký tự xuống dòng  -->
public static void main() {
	int a = 5;
	int b =6;
	if(a &lt; b) {
		System.out.println("A &lt; B");
		
	}
	else {
		System.out.println("A &gt; B");
	}
}</pre>
	<!-- ol :order dùng để sử dụng kiểu như số la mã số thứ tự hay theo abc
	ul : unOrder dùng để sử dụng kiểu như vòng tròn, hình vuông , các kí tự   -->
	<ol type="I">
		<li> Abc ABC</li>
		<li> Bcd BCD</li>
	</ol>
	<ol type="1">
		<li> Mục 1: ABC</li>
		<li> Mục 2: BCD</li>
	</ol>
	<ol type="a">
		<li>Phần a: Abc ABC</li>
		<li>Phần b:Bcd BCD</li>
	</ol>
	<ul type="circle">
	<li>Ví dụ 1</li>
	<li>Ví dụ 2</li>
	<li>Ví dụ 3</li>
	</ul>
	<font color="red" size="3" face="arial">Văn bản 1
	</font>
	<br/>
		<font color="blue" size="15" face="arial">Văn bản 2
	</font>
	<p> Chào Mừng các bạn đến với <b>Ibgcun</b></p>
	<u>Thẻ gạch dưới</u>
	<i>In nghiêng </i>
	<hr/> <!--  Dùng gạch ngang và xuống dòng -->
	
</body>
</html>
