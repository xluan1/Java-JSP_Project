<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<link href="resources/resources/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

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

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<main class="col-md-9">
<div class="card">

<table class="table table-borderless table-shopping-cart">
<thead class="text-muted">
<tr class="small text-uppercase">
  <th scope="col">Sản phẩm</th>
  <th scope="col" width="120">Số lượng</th>
  <th scope="col" width="120">Giá tiền</th>
  <th scope="col" class="text-right" width="200"> </th>
</tr>
</thead>
<tbody>

<tr>
	
	<td>
		<figure class="itemside">
			<div class="aside"><img src="resources/images/items/1.jpg" class="img-sm"></div>
			<figcaption class="info">
				<a href="#" class="title text-dark">Mô tả</a>
				<p class="text-muted small">Kích thước: XL, Màu: xanh, <br> Thương hiệu: Gucci</p>
			</figcaption>
		</figure>
	</td>
	<td> 
		<select class="form-control">
			<option>1</option>
			<option>2</option>	
			<option>3</option>	
			<option>4</option>	
		</select> 
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price" >315.200 VND</var> 
			<small class="text-muted"> 31.520 VND </small> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
	<a data-original-title="Save to Wishlist" title="" href="" class="btn btn-light" data-toggle="tooltip"> <i class="fa fa-heart"></i></a> 
	<a href="" class="btn btn-light"> Loại bỏ</a>
	</td>
	
</tr>

</tbody>
</table>

<div class="card-body border-top">
	<a href="#" class="btn btn-primary float-md-right"> Mua hàng <i class="fa fa-chevron-right"></i> </a>
	<a href="home" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Tiếp tục mua sắm </a>
</div>	
</div> <!-- card.// -->

<div class="alert alert-success mt-3">
	<p class="icontext"><i class="icon text-success fa fa-truck"></i> Miễn phí vận chuyển</p>
</div>

	</main> <!-- col.// -->
	<aside class="col-md-3">
		<div class="card mb-3">
			<div class="card-body">
			<form action="CartController" method="Post">
				<div class="form-group">
					<label>Có phiếu giảm giá?</label>
					<div class="input-group">
						<input type="text" class="form-control" name="" placeholder="Mã giảm giá">
						<span class="input-group-append"> 
							<button class="btn btn-primary">Áp dụng</button>
						</span>
					</div>
				</div>
			</form>
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
		<div class="card">
			<div class="card-body">
					<dl class="dlist-align">
					  <dt>Giá tiền:</dt>
					  <dd class="text-right">568 VND</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Giảm giá:</dt>
					  <dd class="text-right">658 VND</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Tổng:</dt>
					  <dd class="text-right  h5"><strong>1650 VND</strong></dd>
					</dl>
					<hr>
					<p class="text-center mb-3">
						<img src="resources/images/misc/payments.png" height="26">
					</p>
					
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
	</aside> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name border-top padding-y">
<div class="container">
<h6>Chính sách thanh toán và hoàn tiền</h6>
<p>Theo các điều khoản và điều kiện được quy định trong Chính sách Trả hàng và Hoàn tiền này và tạo thành một phần của Điều khoản dịch vụ,
 Luân Store đảm bảo quyền lợi của Người mua bằng cách cho phép gửi yêu cầu hoàn trả sản phẩm và/hoặc hoàn tiền trước khi hết hạn.
 Thời hạn Shopee Đảm Bảo đã được qui định trong Điều khoản Dịch vụ.</p>

</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<jsp:include page="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>