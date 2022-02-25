<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="section-header">
<section class="header-main border-bottom">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-xl-2 col-lg-3 col-md-12">
				<a href="home" class="brand-wrap">
					<img class="logo" src="resources/images/logo.png">
				</a> <!-- brand-wrap.// -->
			</div>
			<div class="col-xl-6 col-lg-5 col-md-6">
				<form action="#" class="search-header">
					<div class="input-group w-100">
						<select class="custom-select border-right"  name="category_name">
								<option value="">Tất Cả Loại</option><option value="codex">Đặc Biệt</option>
								<option value="comments">Tốt Nhất</option>
								<option value="content">Cũ Nhất</option>
						</select>
					    <input type="text" class="form-control" placeholder="Tìm kiếm">
					    
					    <div class="input-group-append">
					      <button class="btn btn-primary" type="submit">
					        <i class="fa fa-search"></i> Tìm Kiếm
					      </button>
					    </div>
				    </div>
				</form> <!-- search-wrap .end// -->
			</div> <!-- col.// -->
			<div class="col-xl-4 col-lg-4 col-md-6">
				<div class="widgets-wrap float-md-right">
				
					<div class="widget-header mr-3">
						<a href="login" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-user"></i>
								<span class="notify">2</span>
							</div>
							<small class="text"> Thông Tin </small>
						</a>
					</div>
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-comment-dots"></i>
								<span class="notify">6</span>
							</div>
							<small class="text"> Tin Nhắn </small>
						</a>
					</div>
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-store"></i>
							</div>
							<small class="text"> Đơn Hàng </small>
						</a>
					</div>
					<div class="widget-header">
						<a href="cart" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<small class="text"> Giỏ Hàng </small>
						</a>
					</div>
				</div> <!-- widgets-wrap.// -->
			</div> <!-- col.// -->
		</div> <!-- row.// -->
	</div> <!-- container.// -->
</section> <!-- header-main .// -->



<nav class="navbar navbar-main navbar-expand-lg border-bottom">
<div class="container">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="main_nav">
	<ul class="navbar-nav">
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-bars text-muted mr-2"></i> Trang Chủ </a>
			<div class="dropdown-menu dropdown-large">
				<nav class="row">
					<div class="col-6">
						<a href="page-index-1.html">Trang Chủ 1</a>
						<a href="page-index-2.html">Trang Chủ 2</a>
						<a href="page-category.html">Các Loại Sản Phẩm</a>
						<a href="page-listing-large.html">Danh Sách Liệt Kê</a>
						<a href="page-listing-grid.html">Lưới Danh Sách</a>
						<a href="page-shopping-cart.html">Giỏ Hàng</a>
						<a href="productdetail.jsp">Chi Tiết Sản Phẩm</a>
						<a href="page-content.html">Nội Dung Trang</a>
						<a href="login">Đăng Nhập</a>
						<a href="register">Đăng Ký</a>
					</div>
					<div class="col-6">
						<a href="admin">Thông Tin Chính</a>
						<a href="page-profile-orders.html">Thông Tin Đặt Hàng</a>
						<a href="page-profile-seller.html">Thông Tin Người Bán</a>
						<a href="page-profile-wishlist.html">Thông Tin Yêu Cầu</a>
						<a href="page-profile-setting.html">Thông Tin Thiết Lập</a>
						<a href="page-profile-address.html">Thông Tin Địa Chỉ</a>
						<a href="rtl-page-index-1.html">Trang RTL</a>
						<a href="page-components.html" target="_blank">Các Thành Phần Khác</a>
					</div>
				</nav> <!--  row end .// -->
			</div> <!--  dropdown-menu dropdown-large end.// -->
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Sẵn Sàng Vận Chuyển</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="#">Trao Đổi Hàng Hóa</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="#">Dịch Vụ</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="#">Buôn Bán Với Chúng Tôi</a>
		</li>
	</ul>
	<ul class="navbar-nav ml-md-auto">
			<li class="nav-item">
			<a class="nav-link" href="#">Cài Đặt Ứng Dụng</a>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="http://example.com" data-toggle="dropdown">English</a>
			<div class="dropdown-menu dropdown-menu-right">
			<a class="dropdown-item" href="#">VietNamese</a>
			<a class="dropdown-item" href="#">Russian</a>
			<a class="dropdown-item" href="#">French</a>
			<a class="dropdown-item" href="#">Spanish</a>
			<a class="dropdown-item" href="#">Chinese</a>
			</div>
		</li>
		</ul>
	</div> <!-- collapse .// -->
</div> <!-- container .// -->
</nav>

</header> <!-- section-header.// -->
