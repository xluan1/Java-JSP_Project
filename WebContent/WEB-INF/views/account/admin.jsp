<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

<title>Luân website</title>

<link href="resources/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="resources/js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="resources/fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="resources/css/ui.css" rel="stylesheet" type="text/css"/>
<link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="resources/js/script.js" type="text/javascript"></script>

</head>
<body>

<b class="screen-overlay"></b>

<!-- ========================= SECTION HEADER  ========================= -->
<jsp:include page="../share/header.jsp"></jsp:include>

<!-- ========================= SECTION HEADER END// ========================= -->

<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg-gray">
<div class="container">
	<h2 class="title-page">Tài khoản của tôi</h2>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION PAGETOP END// ========================= -->
	
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
		<nav class="list-group">
			<a class="list-group-item active" href="page-profile-main.html"> Tổng quan về tài khoản  </a>
			<a class="list-group-item" href="page-profile-address.html"> Địa chỉ của tôi </a>
			<a class="list-group-item" href="page-profile-orders.html"> Đơn hàng của tôi </a>
			<a class="list-group-item" href="page-profile-wishlist.html"> Sản phẩm yêu thích </a>
			<a class="list-group-item" href="page-profile-seller.html"> Các mặt hàng bán chạy của tôi </a>
			<a class="list-group-item" href="page-profile-setting.html"> Cài đặt </a>
			<a class="list-group-item" href="home"> Đăng xuất </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

		<article class="card mb-3">
			<div class="card-body">
				
				<figure class="icontext">
						<div class="icon">
							<img class="rounded-circle img-sm border" src="resources/${loginedUser.getImage()}">
						</div>
						<div class="text">
							<strong> ${loginedUser.getName()} </strong> <br> 
							<p class="mb-2">${loginedUser.getEmail()} </p> 
							<a href="#" class="btn btn-light btn-sm">Chỉnh sửa</a>
						</div>
				</figure>
				<hr>
				<p>
					<i class="fa fa-map-marker text-muted"></i> &nbsp; Địa chỉ của tôi:  
					 <br>
					${loginedUser.getAddress()} &nbsp 
					<a href="#" class="btn-link"> Chỉnh sửa</a>
				</p>

				

				<article class="card-group card-stat">
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">38</h4>
							<span>Đơn hàng</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">5</h4>
							<span>Danh sách yêu thích</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">12</h4>
							<span>Chờ giao hàng</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">50</h4>
							<span>Các mặt hàng đã giao</span>
						</div>
					</figure>
				</article>
				

			</div> <!-- card-body .// -->
		</article> <!-- card.// -->

		<article class="card  mb-3">
			<div class="card-body">
				<h5 class="card-title mb-4">Những đơn hàng đặt gần đây </h5>	

				<div class="row">
				<div class="col-md-6">
					<figure class="itemside  mb-3">
						<div class="aside"><img src="resources/images/items/1.jpg" class="border img-sm"></div>
						<figcaption class="info">
							<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.06.2020</time>
							<p>Làm thế nào để đẹp</p>
							<span class="text-success">Xác nhận đặt hàng </span>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
				<div class="col-md-6">
					<figure class="itemside  mb-3">
						<div class="aside"><img src="resources/images/items/2.jpg" class="border img-sm"></div>
						<figcaption class="info">
							<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.06.2021</time>
							<p>Làm thế nào để giàu</p>
							<span class="text-success">Khởi hành</span>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
				<div class="col-md-6">
					<figure class="itemside mb-3">
						<div class="aside"><img src="resources/images/items/3.jpg" class="border img-sm"></div>
						<figcaption class="info">
							<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.09.2019</time>
							<p>Sách Harry Potter </p>
							<span class="text-success">Đã giao  </span>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
			</div> <!-- row.// -->

			<a href="#" class="btn btn-outline-primary btn-block"> Xem tất cả đơn hàng <i class="fa fa-chevron-down"></i>  </a>
			</div> <!-- card-body .// -->
		</article> <!-- card.// -->

	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->




<!-- ========================= FOOTER ========================= -->
<jsp:include page="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>