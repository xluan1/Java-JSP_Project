<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section  class="padding-bottom">

<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">Dịch Vụ Thương Mại</h4>
</header>

<div class="row">
	
	<c:forEach items="${services}" var="trade">
	<div class="col-md-3 col-sm-6">
		<article class="card card-post">
		  <img src="resources/${trade.getImage()}" class="card-img-top">
		  <div class="card-body">
		    <h6 class="title">${trade.getTitle()}</h6>
		    <p class="small text-uppercase text-muted">${trade.getDescription()}</p>
		  </div>
		</article> <!-- card.// -->
	</div> <!-- col.// -->
	</c:forEach>

</div> <!-- row.// -->

</section>
