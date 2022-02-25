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
<section class="section-conten padding-y" style="min-height:84vh">

<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Đăng nhập</h4>
      <form action="${pageContext.request.contextPath}/login" method="post">
      	<p>${errorString}</p>
      	  <a href="#" class="btn btn-facebook btn-block mb-2"> <i class="fab fa-facebook-f"></i> &nbsp  Đăng nhập bằng Facebook</a>
      	  <a href="#" class="btn btn-google btn-block mb-4"> <i class="fab fa-google"></i> &nbsp  Đăng nhập bằng Google</a>
          <div class="form-group">
			 <input name="userName" class="form-control" placeholder="Tên đăng nhập" type="text">
          </div> <!-- form-group// -->
          <div class="form-group">
			<input name="password" class="form-control" placeholder="Mật khẩu" type="password">
          </div> <!-- form-group// -->
          
          <div class="form-group">
          	<a href="#" class="float-right">Quên mật khẩu?</a> 
            <label class="float-left custom-control custom-checkbox"> <input type="checkbox" name="rememberMe" class="custom-control-input" checked><div class="custom-control-label"> Lưu tài khoản </div> </label>
          </div> <!-- form-group form-check .// -->
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block" value="login"> Đăng nhập  </button>
          </div> <!-- form-group// -->    
      </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <p class="text-center mt-4">Bạn không có tài khoản? <a href="register">Đăng ký</a></p>
     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->




<!-- ========================= FOOTER ========================= -->
<jsp:include page="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>