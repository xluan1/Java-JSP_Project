<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section class="padding-bottom">
 <div class="card card-deal">
     <div class="col-heading content-body">
      <header class="section-heading">
       <h3 class="section-title">Chương trình ưu đãi</h3>
       <p>Thiết bị làm mới</p>
     </header><!-- sect-heading -->
     <div class="timer">
       <div> <span class="num">4</span><small>Ngày</small></div>
       <div> <span class="num">12</span> <small>Giờ</small></div>
       <div> <span class="num">58</span> <small>Phút</small></div>
       <div> <span class="num">02</span> <small>Giây</small></div>
     </div>
   </div> <!-- col.// -->
   
   <div class="row no-gutters items-wrap">
   
   <c:forEach items="${catDeal}" var="cat">
    <div class="col-md col-6">
	    <figure class="card-product-grid card-sm">
	      <a href="product?id=${cat.getId()}" class="img-wrap"> 
	       <img src="resources/${cat.getImage()}"> 
	      </a>
	      <div class="text-wrap p-3">
	       	<a href="product?id=${cat.getId()}" class="title">${cat.getCategoryName()}</a>
	       	<span class="badge badge-danger">${cat.getDiscount()}%</span>
	      </div>
	   	</figure>
 	</div> <!-- col.// -->
	</c:forEach>

	</div>
</div>

</section>
