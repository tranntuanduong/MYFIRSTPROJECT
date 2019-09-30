<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JunBlog-Homee</title>
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
</head>
<body>
<div class="wrap">
		<%@include file="/common/web/header.jsp"%>		
		<%@include file="/common/web/slider.jsp"%>	
			<section class="site-section py-sm">
				<div class="container">
					<div class="row blog-entries">
						<!-- content -->
						<div class="col-md-12 col-lg-8 main-content">
		    		<div class="row">
		    			<c:if test="${model.name != ''}">
		    				<h2 class="mb-4">Kết quả tìm kiếmm : ${model.name}</h2>
		    			</c:if>
		    			<c:if test="${model.name == ''}">
				             <h2 class="mb-4">Bài đăng cuối</h2>
		    			</c:if>
			           
		            </div>
              <div class="row">
                <div class="container">
					<div class="card-columns">								
						<!-- blog list -->
						 <c:forEach var="item" items="${model.listResult}">
							<div class="card">
								<a href='<c:url value="/detail?id=${item.id}"/>' class="blog-entry element-animate" data-animate-effect="fadeIn">
									<img src="template/web/images/img_7.jpg" alt="Image placeholder">
									<div class="blog-content-body">
									  <div class="post-meta">
										<span class="author mr-2"><img src="template/web/images/person_2.jpg" alt="Colorlib"> &bullet; ${item.createdBy}</span>&bullet;
										<span class="mr-2">March 15, 2018 </span> &bullet;
										<span class="ml-2"><span class="fa fa-comments"></span> 3</span>
									  </div>
									  <h2>${item.name}</h2>
									  <p>${item.shortDescription}</p>
									</div>
								  </a>
							</div>
						</c:forEach>
						
						
					</div>
				</div>
     
              </div>
			<!-- paging -->
              <div class="row mt-5">
                <div class="col-md-12 text-center">
                 	 <nav aria-label="Page navigation">
				        <ul class="pagination" id="pagination"></ul>
				    </nav>		
                </div>
              </div>
             <!-- end paging -->
				   
            </div>
 	
	<!-- endcontent -->
						<%@include file="/common/web/sidebar.jsp"%>
					</div>
				</div>
			</section>	
		<%@include file="/common/web/footer.jsp"%>
</div>
<form:form id="formSubmit" modelAttribute="model" method="GET">
	<input type="hidden" value="1" id="page" name="page"/>
	<input type="hidden" value="${model.name}" id="name" name="name"/>
	<input type="hidden" value="${model.tagId}" id="tagId" name="tagId"/>
</form:form>
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
    <script src="<c:url value='/template/web/paging/jquery.twbsPagination.js'/>"></script>
    <script type="text/javascript">
    var totalPage = ${model.totalPage};
	var currentPage = ${model.page};
	 	$(function () {
	        window.pagObj = $('#pagination').twbsPagination({
	            totalPages: totalPage,
	            visiblePages: 5,      
	            startPage: currentPage,
	            onPageClick: function (event, page) {   
	            	console.log("page:"+page);
	            	console.log("currentPage:"+currentPage);
	                if(currentPage != page){	                	
	                	$('#page').val(page);
	                	$('#maxPageItem').val(3);
	                	$('#sortName').val('name');
	                	$('#sortBy').val('ASC');
	               	 	$('#formSubmit').submit();	   
	               	}             		                
	            }
	        })
	    });
    </script>
</body>
</html>