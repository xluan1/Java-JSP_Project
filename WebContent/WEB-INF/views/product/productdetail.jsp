<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!-- ========================= SECTION HEADER ========================= -->
<jsp:include page="../share/header.jsp"></jsp:include>
<!-- ========================= SECTION HEADER END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="py-3 bg-light">
  <div class="container">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
        <li class="breadcrumb-item"><a href="#">Tên danh mục</a></li>
        <li class="breadcrumb-item"><a href="#">Danh mục phụ</a></li>
        <li class="breadcrumb-item active" aria-current="page">Mặt hàng</li>
    </ol>
  </div>
</section>

<!-- ========================= SECTION END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content bg-white padding-y">
<div class="container">

<!-- ============================ ITEM DETAIL ======================== -->
	<div class="row">
		<aside class="col-md-6">
<div class="card">
<article class="gallery-wrap"> 

	<div class="img-big-wrap">
	  <div> <a href="#"><img src="resources/${product.getImage()}"></a></div>
	</div> <!-- slider-product.// -->
	
	<div class="thumbs-wrap">
	  <a href="#" class="item-thumb"> <img src="resources/${product.getImage()}"></a>
	  <a href="#" class="item-thumb"> <img src="resources/${product.getImage()}"></a>
	  <a href="#" class="item-thumb"> <img src="resources/${product.getImage()}"></a>
	</div> <!-- slider-nav.// -->
	
</article> <!-- gallery-wrap .end// -->

</div> <!-- card.// -->
		</aside>
		<main class="col-md-6">
<article class="product-info-aside">

<h2 class="title mt-3">${product.getTitle()} </h2>

<div class="rating-wrap my-3">
	<ul class="rating-stars">
		<li style="width:80%" class="stars-active"> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> 
		</li>
		<li>
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> 
		</li>
	</ul>
	<small class="label-rating text-muted">132 đánh giá</small>
	<small class="label-rating text-success"> <i class="fa fa-clipboard-check"></i> 154 người đặt hàng </small>
</div> <!-- rating-wrap.// -->

<div class="mb-3"> 
	<var class="price h4"><fmt:formatNumber value = "${product.getPriceNet()}" type="number" maxIntegerDigits="14"></fmt:formatNumber>VND</var> 
	<span class="text-muted"><fmt:formatNumber value = "${product.getPrice()}" type="number" maxIntegerDigits="14"></fmt:formatNumber>VND</span> 
</div> <!-- price-detail-wrap .// -->

<h3><p>Chi tiết sản phẩm</p></h3>

<dl class="row">
  <dt class="col-sm-3">Nhà sản xuất</dt>
  <dd class="col-sm-9"><a href="#">${product.getManufacturer()}</a></dd>

  <dt class="col-sm-3">Số bài viết</dt>
  <dd class="col-sm-9"><fmt:formatNumber value = "${product.getArticleNumber()}" type="number" maxIntegerDigits="14"></fmt:formatNumber></dd>

  <dt class="col-sm-3">Bảo hành</dt>
  <dd class="col-sm-9">${product.getGuarantee()} năm</dd>

  <dt class="col-sm-3">Thời gian giao hàng</dt>
  <dd class="col-sm-9">${product.getDeliveryTime()}</dd>

  <dt class="col-sm-3">Khả dụng</dt>
  <dd class="col-sm-9">${product.getAvailability()}</dd>
</dl>

	<div class="form-row  mt-4">
		<div class="form-group col-md flex-grow-0">
			<div class="input-group mb-3 input-spinner">
			  <div class="input-group-prepend">
			    <button class="btn btn-light" type="button" id="button-plus"> + </button>
			  </div>
			  <input type="text" class="form-control" value="1">
			  <div class="input-group-append">
			    <button class="btn btn-light" type="button" id="button-minus"> &minus; </button>
			  </div>
			</div>
		</div> <!-- col.// -->
		<div class="form-group col-md">
			<a href="#"  class="btn  btn-primary"> 
				<i class="fas fa-shopping-cart"></i> <span class="text">Thêm vào giỏ hàng</span> 
			</a>
			<a href="#" class="btn btn-light">
        <i class="fas fa-envelope"></i> <span class="text">Liên hệ với nhà cung cấp</span> 
			</a>
		</div> <!-- col.// -->
	</div> <!-- row.// -->

</article> <!-- product-info-aside .// -->
		</main> <!-- col.// -->
	</div> <!-- row.// -->

<!-- ================ ITEM DETAIL END .// ================= -->


</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name padding-y bg">
<div class="container">

<div class="row">
	<div class="col-md-8">
		<h5 class="title-description">Mô tả</h5>
		<p>
			${product.getDescription()}
		</p>

		<h5 class="title-description">Thông số kỹ thuật</h5>
		<p>
			${product.getSpecification()}
		</p>
	</div> <!-- col.// -->
	
	<aside class="col-md-4">

		<div class="box">
		
		<h5 class="title-description">File</h5>
			<p>
				Tài liệu tìm hiểu thêm trên mạng
			</p>

    <h5 class="title-description">Video</h5>
      

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="resources/images/posts/3.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">Làm thế nào để sử dụng mặt hàng này</a></h6>
        <p class="mb-2"> Sử dụng mặt hàng này bằng cách vào sản phẩm xem hướng dẫn </p>
      </div>
    </article>

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="resources/images/posts/2.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">Mẹo và thủ thuật mới</a></h6>
        <p class="mb-2"> Ngày nay càng phát triển nhiều thủ thuật mới </p>
      </div>
    </article>

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="resources/images/posts/1.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">Mẹo và thủ thuật mới</a></h6>
        <p class="mb-2"> Tìm hiểu nhiều tài liệu trên mạng và phát triển thêm khả năng tư duy của bản thân
         </p>
      </div>
    </article>


		
	</div> <!-- box.// -->
	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<jsp:include page="../share/subscribe.jsp"></jsp:include>
<!-- ========================= SECTION SUBSCRIBE END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<jsp:include page="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>