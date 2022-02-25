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

<!-- container.// -->
<div class="container">
<!-- ========================= SECTION MAIN  ========================= -->
<jsp:include page="main.jsp"></jsp:include>
<!-- ========================= SECTION MAIN END// ========================= -->


<!-- =============== SECTION DEAL =============== -->
<jsp:include page="deal.jsp"></jsp:include>
<!-- =============== SECTION DEAL // END =============== -->

<!-- =============== SECTION 1 =============== -->
<jsp:include page="apparel.jsp"></jsp:include>
<!-- =============== SECTION 1 END =============== -->

<!-- =============== SECTION 2 =============== -->
<jsp:include page="electronics.jsp"></jsp:include>
<!-- =============== SECTION 2 END =============== -->



<!-- =============== SECTION REQUEST =============== -->
<jsp:include page="request.jsp"></jsp:include>
<!-- =============== SECTION REQUEST .//END =============== -->


<!-- =============== SECTION ITEMS =============== -->
<jsp:include page="items.jsp"></jsp:include>
<!-- =============== SECTION ITEMS .//END =============== -->


<!-- =============== SECTION SERVICES =============== -->
<jsp:include page="services.jsp"></jsp:include>
<!-- =============== SECTION SERVICES .//END =============== -->

<!-- =============== SECTION REGION =============== -->
<jsp:include page="region.jsp"></jsp:include>
<!-- =============== SECTION REGION .//END =============== -->

<article class="my-4">
	<img src="resources/images/banners/ad-sm.png" class="w-100">
</article>
</div>  
<!-- container end.// -->

<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<jsp:include page="../share/subscribe.jsp"></jsp:include>
<!-- ========================= SECTION SUBSCRIBE END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<jsp:include page="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->



</body>
</html>