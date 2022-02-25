<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section  class="padding-bottom-sm">

<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">Sản Phẩm Được Đề Xuất</h4>
</header>

<div class="row row-sm">

	<c:forEach items="${reitems}" var="item">
	<div class="col-xl-2 col-lg-3 col-md-4 col-6">
		<div class="card card-sm card-product-grid">
			<a href="product?id=${item.getId()}" class="img-wrap"> <img src="resources/${item.getImage()}"> </a>
			<figcaption class="info-wrap">
				<a href="product?id=${item.getId()}" class="title">${item.getTitle()}</a>
				<div class="price mt-1"><fmt:formatNumber value = "${item.getPrice()}" type="number" maxIntegerDigits="12"></fmt:formatNumber>VND</div> <!-- price-wrap.// -->
			</figcaption>
		</div>
	</div> <!-- col.// -->
	</c:forEach>

</div> <!-- row.// -->
</section>
