<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JunBlog-Home</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
	<!--code-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="template/web/assets/prettify.css">
    <script src="template/web/assets/prettify.js"></script>
    <script>
      !function ($) {
        $(function(){
          window.prettyPrint && prettyPrint()
        })
      }(window.jQuery)
    </script>
    <!--code-->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700|Inconsolata:400,700" rel="stylesheet">
    <link rel="stylesheet" href="template/web/css/bootstrap.css">
    <link rel="stylesheet" href="template/web/css/animate.css">
    <link rel="stylesheet" href="template/web/css/owl.carousel.min.css">
    <link rel="stylesheet" href="template/web/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="template/web/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="template/web/fonts/flaticon/font/flaticon.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="template/web/css/style.css">   
    <!-- ckeditor code snippet -->
    <link rel="stylesheet" href="<c:url value='/template/ckeditor1/monokai_sublime.css' />" />		
    <script src="<c:url value='/template/ckeditor1/highlight.pack.js' />"></script>
	<script>hljs.initHighlightingOnLoad();</script> 	
</head>
<body>
<div class="wrap">
		<%@include file="/common/web/header.jsp"%>		
			<section class="site-section py-sm">
				<div class="container">
					<div class="row blog-entries">
						<dec:body></dec:body>
						<%@include file="/common/web/sidebar.jsp"%>
					</div>
				</div>
			</section>	
		<%@include file="/common/web/footer.jsp"%>
</div>

 <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>
    <script src="template/web/js/jquery-3.2.1.min.js"></script>
    <script src="template/web/js/jquery-migrate-3.0.0.js"></script>
    <script src="template/web/js/popper.min.js"></script>
    <script src="template/web/js/bootstrap.min.js"></script>
    <script src="template/web/js/owl.carousel.min.js"></script>
    <script src="template/web/js/jquery.waypoints.min.js"></script>
    <script src="template/web/js/jquery.stellar.min.js"></script>
    <script src="template/web/js/main.js"></script>
    <script src="<c:url value='/template/admin/assets/js/paging/jquery.twbsPagination.js'/>"></script>
    
</body>
</html>