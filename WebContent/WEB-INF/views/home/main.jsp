<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section class="section-main padding-y">
<main class="card">
	<div class="card-body">

<div class="row">
	<aside class="col-lg col-md-3 flex-lg-grow-0">
		<nav class="nav-home-aside">
			<h6 class="title-category">Cửa Hàng Của Tôi<i class="d-md-none icon fa fa-chevron-down"></i></h6>
			<ul class="menu-category">
				<li><a href="#">Thời trang và quần áo</a></li>
				<li><a href="#">Ô tô và động cơ</a></li>
				<li><a href="#">Làm vườn và nông nghiệp</a></li>
				<li><a href="#">Điện tử và công nghệ</a></li>
				<li><a href="#">Bao bì và in ấn</a></li>
				<li><a href="#">Nhà và Bếp</a></li>
				<li><a href="#">Hàng hóa kỹ thuật số</a></li>
				<li class="has-submenu"><a href="#">Sản phẩm khác</a>
					<ul class="submenu">
						<li><a href="#">Đời sống</a></li>
						<li><a href="#">Thời trang</a></li>
						<li><a href="#">Sức khỏe</a></li>
						<li><a href="#">Túi ví</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</aside> <!-- col.// -->
	<div class="col-md-9 col-xl-7 col-lg-7">

<!-- ================== COMPONENT SLIDER  BOOTSTRAP  ==================  -->
<div id="carousel1_indicator" class="slider-home-banner carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel1_indicator" data-slide-to="0" class="active"></li>
    <li data-target="#carousel1_indicator" data-slide-to="1"></li>
    <li data-target="#carousel1_indicator" data-slide-to="2"></li>
    <li data-target="#carousel1_indicator" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/images/banners/slide1.jpg" alt="First slide"> 
    </div>
    <div class="carousel-item">
      <img src="resources/images/banners/slide2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="resources/images/banners/slide3.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img src="resources/images/banners/slide4.jpg" alt="Fourth slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel1_indicator" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel1_indicator" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
<!-- ==================  COMPONENT SLIDER BOOTSTRAP end.// ==================  .// -->	

	</div> <!-- col.// -->
	<div class="col-md d-none d-lg-block flex-grow-1">
	
		<aside class="special-home-right">
			<h6 class="bg-blue text-center text-white mb-0 p-2">Danh mục phổ biến</h6>
			
			<c:forEach items="${cate}" var="cate">
			<div class="card-banner border-bottom">
			  <div class="py-3" style="width:80%">
			    <h6 class="card-title">${cate.getCategoryName()}</h6>
			    <a href="product?id=${cate.getId()}" class="btn btn-secondary btn-sm"> Mở rộng </a>
			  </div> 
			  <img src="resources/${cate.getImage()}" height="80" class="img-bg">
			</div>
			</c:forEach>

		</aside>
	</div> <!-- col.// -->
</div> <!-- row.// -->

	</div> <!-- card-body.// -->
</main> <!-- card.// -->

</section>
