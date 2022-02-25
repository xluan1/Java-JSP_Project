<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section class="padding-bottom">
<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">Thiết Bị Điện Tử</h4>
</header>

<div class="card card-home-category">
<div class="row no-gutters">
	<div class="col-md-3">
	
	<div class="home-category-banner bg-light-orange">
		<h5 class="title">${bestElec.getTitle()}</h5>
		<p>${bestElec.getDescription()}</p>
		<a href="product?id=${bestElec.getId()}" class="btn btn-outline-primary rounded-pill">Mở rộng</a>
		<img src="resources/${bestElec.getImage()}" class="img-bg">
	</div>

	</div> <!-- col.// -->
	<div class="col-md-9">
<ul class="row no-gutters bordered-cols">
	
	<c:forEach items="${catElec}" var="cat">
	<li class="col-6 col-lg-3 col-md-4">
<a href="product?id=${cat.getId()}" class="item"> 
	<div class="card-body">
		<h6 class="title">${cat.getTitle()}</h6>
		<img class="img-sm float-right" src="resources/${cat.getImage()}"> 
		<p class="text-muted"><i class="fa fa-map-marker-alt"></i>${cat.getAddress()}</p>
	</div>
</a>
	</li>
	</c:forEach>

</ul>
	</div> <!-- col.// -->
</div> <!-- row.// -->
</div> <!-- card.// -->
</section>
