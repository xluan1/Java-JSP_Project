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

<!-- ========================= SECTION header ========================= -->
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
								<span class="notify">5</span>
							</div>
							<small class="text"> Thông Tin </small>
						</a>
					</div>
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-comment-dots"></i>
								<span class="notify">10</span>
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
						<a href="#" class="widget-view">
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

<!-- ========================= SECTION header end ========================= -->


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Đăng ký</h4></header>
		<form action="RegisterController" method="post">
				<div class="form-row">
					<div class="col form-group">
						<label>Tên</label>
					  	<input type="text" class="form-control" placeholder="" name="first_name">
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>Họ</label>
					  	<input type="text" class="form-control" placeholder="" name="last_name">
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" placeholder="" name="email">
					<small class="form-text text-muted">Chúng tôi sẽ không bao giờ chia sẻ email của bạn đến ai khác</small>
				</div> <!-- form-group end.// -->
				<div class="form-group">
					<label class="custom-control custom-radio custom-control-inline">
					  <input class="custom-control-input" checked="" type="radio" name="gender" value="option1">
					  <span class="custom-control-label"> Nam </span>
					</label>
					<label class="custom-control custom-radio custom-control-inline">
					  <input class="custom-control-input" type="radio" name="gender" value="option2">
					  <span class="custom-control-label"> Nữ </span>
					</label>
				</div> <!-- form-group end.// -->
				<div class="form-row">
					<div class="form-group col-md-6">
					  <label>Thành phố</label>
					  <input type="text" class="form-control">
					</div> <!-- form-group end.// -->
					<div class="form-group col-md-6">
					  <label>Quốc gia</label>
					  <select id="inputState" class="form-control">
					    <option> Chọn...</option>
					      <option>Uzbekistan</option>
					      <option>Nga</option>
					      <option selected="">Anh</option>
					      <option>Ấn Độ</option>
					      <option>Afganistan</option>
					      <option>Việt Nam</option>
					  </select>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row.// -->
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Tạo mật khẩu</label>
					    <input class="form-control" type="password" name="password">
					</div> <!-- form-group end.// --> 
					<div class="form-group col-md-6">
						<label>Nhập lại mật khẩu</label>
					    <input class="form-control" type="password" name="re_pass">
					</div> <!-- form-group end.// -->  
				</div>
			    <div class="form-group">
			        <button type="submit" class="btn btn-primary btn-block" value="register"> Đăng ký  </button>
			    </div> <!-- form-group// -->      
			    <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label">Tôi đồng ý với <a href="#"> điều kiện và điều khoản trên</a>  </div> </label>
		        </div> <!-- form-group end.// -->
		                   
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <p class="text-center mt-4">Đã có tài khoản? <a href="login">Đăng nhập</a></p>
    <br><br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= FOOTER ========================= -->
<jsp:include page="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>