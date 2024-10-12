<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bookstore</title>
<style>
    .row.text-center {
        text-align: center;
    }
    .row {
        margin: 0; /* Loại bỏ margin mặc định của các thẻ div */
    }
    .row b {
        font-weight: bold;
    }
    .row a {
        text-decoration: none; /* Loại bỏ gạch chân mặc định của liên kết */
        color: #000; /* Màu văn bản của liên kết */
        display: inline-block; /* Hiển thị liên kết như một khối */
        padding: 5px 10px; /* Thêm padding cho liên kết */
        background-color: #eee; /* Màu nền cho liên kết */
        border-radius: 5px; /* Bo tròn các góc */
    }
    .row a:hover {
        background-color: #ddd; /* Màu nền khi di chuột qua liên kết */
    }
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="https://png.pngtree.com/template/20191125/ourlarge/pngtree-book-store-logo-template-sale-learning-logo-designs-vector-image_335046.jpg"
				alt="Bootstrap" height="24">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Combo
							giảm giá</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Thể loại </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Quần Jean</a></li>
							<li><a class="dropdown-item" href="#">Áo thun</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Áo sơ mi</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled">Hết hàng</a>
					</li>
				</ul>
			<form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Nội dung tìm kiếm" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Tìm</button>
					<%
						Object obj = session.getAttribute("khachHang");
						KhachHang khachHang = null;
						if (obj!=null)
							khachHang = (KhachHang)obj;
						
						if(khachHang==null){
					%>
					
						<a class="btn btn-primary" style="white-space: nowrap;" href="dangnhap.jsp">
							Đăng nhập
						</a>
					<%} else { %>
					
						<ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-infor ">
						<li class="nav-item dropdown dropstart"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Tài khoản</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Đơn hàng của tôi</a></li>
								<li><a class="dropdown-item" href="#">Thông báo</a></li>
								<li><a class="dropdown-item" href="#">Thay đổi thông tin</a></li>
								<li><a class="dropdown-item" href="doimatkhau.jsp">Đổi mật khẩu</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="dang-xuat">Thoát tài khoản</a></li>
							</ul></li>
					</ul>			
						
					<% } %>
				</form>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<!-- Page content -->
	<div class="container mt-4">
		<div class="row">
			<!-- Menu left -->
			<div class="col-lg-3">
				<div class="list-group ">
					<a href="#" class="list-group-item list-group-item-action">
						Thời trang nam </a> <a href="#"
						class="list-group-item list-group-item-action">Thời trang nữ</a> <a
						href="#" class="list-group-item list-group-item-action">Dành
						cho bé</a>
				</div>
			</div>
			<!-- End Menu left -->

			<!-- Slider and Products -->
			<div class="col-lg-9">
				<!-- Slider -->
				<div id="carouselExampleIndicators" class="carousel slide mb-4"
					data-bs-ride="true">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="https://images.vexels.com/media/users/3/193703/raw/714f169d00d7ce76764c2186dc14eb62-read-a-book-slider-template.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="https://newshop.vn/public/uploads/landing-page/vanhoc/banner-van-hoc-kinh-dien.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="https://aeonmall-long-bien.com.vn/wp-content/uploads/2022/01/270275064_4487709871350969_6446081929055388732_n.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
				<!-- End Slider -->
				<!-- Products -->
				<div class="row">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="img/product/1.png"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Áo thun Pro-S1</a>
								</h4>
								<h5>50.000</h5>
								<p class="card-text">Sản phẩm thoáng mát, có độ bền tốt, giữ
									màu sắc tốt.</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="img/product/2.png"
								alt="" ></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Áo thun Pro-S1</a>
								</h4>
								<h5>50.000</h5>
								<p class="card-text">Sản phẩm thoáng mát, có độ bền tốt, giữ
									màu sắc tốt.</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="img/product/3.png"
								alt="" ></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Áo thun Pro-S1</a>
								</h4>
								<h5>50.000</h5>
								<p class="card-text">Sản phẩm thoáng mát, có độ bền tốt, giữ
									màu sắc tốt.</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="img/product/1.png"
								alt="" ></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Áo thun Pro-S1</a>
								</h4>
								<h5>50.000</h5>
								<p class="card-text">Sản phẩm thoáng mát, có độ bền tốt, giữ
									màu sắc tốt.</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>
				</div>
				<!-- End Products -->
			</div>
			<!-- End Slider and Products -->
		</div>
	</div>
	<!-- End Page content -->

	<!-- Footer -->
	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Trang chủ</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Quy định giao hàng</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Quy định trả hàng</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Liên hệ</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Blogs</a></li>
		</ul>
		<p class="text-center text-muted">© 2023 NLU</p>
	</footer>
	<!-- End footer -->
	
	
	<div class="input-group mb-3">
	 
	  <div class="form-floating">
	    <input type="text" class="form-control" id="floatingInputGroup1" placeholder="Username">
	    <label for="floatingInputGroup1">Username</label>
	  </div>
	  
	   <span class="input-group-text">@gmail.com</span>
	</div>
</body>
</html>
