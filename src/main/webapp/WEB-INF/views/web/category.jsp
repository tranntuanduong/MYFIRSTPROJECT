<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="col-md-12 col-lg-8 main-content">
			<div class="row mb-4">
	          <div class="col-md-6">
	            <h2 class="mb-4">Category: ${model.categoryName}</h2>
	          </div>
	        </div>
            <div class="row mb-5 mt-5">

              <div class="col-md-12">
              	<!-- post -->
              	<c:forEach var="item" items="${model.listResult}">
              		<div class="post-entry-horzontal">
	                  <a href='<c:url value="/detail?id=${item.id}"/>'>
	                    <div class="image element-animate fadeIn element-animated" data-animate-effect="fadeIn" style="background-image: url(${item.image});"></div>
	                    <span class="text">
	                      <div class="post-meta">
	                        <span class="author mr-2"><img src="template/web/images/person_1.jpg" alt="Colorlib"> Người dùng</span>•
	                        <span class="mr-2">March 15, 2018 </span> •
	                        
	                        <c:forEach var="category" items="${item.categorys}">
	                        	<span class="mr-2">${category.name}</span> •
	                        </c:forEach>
	                        <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
	                      </div>
	                      <h2>${item.shortDescription}</h2>
	                    </span>
	                  </a>
	                </div>
              	</c:forEach>
                <!-- END post -->
              </div>
            </div>

            <div class="row mt-5">
              <div class="col-md-12 text-center">
                <nav aria-label="Page navigation" class="text-center">
                  <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                    <li class="page-item  active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                
                    <li class="page-item"><a class="page-link" href="#">6</a></li>
                    <li class="page-item"><a class="page-link" href="#">7</a></li>
                    <li class="page-item"><a class="page-link" href="#">8</a></li>
                    <li class="page-item"><a class="page-link" href="#">9</a></li>
                    <li class="page-item"><a class="page-link" href="#">10</a></li>
                    <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
</body>
</html>