<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
	   <section class="site-section pt-5 pb-5">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="owl-carousel owl-theme home-slider">           
                <c:forEach var="item" items="${sliders}">
                	<div>
	                  <a href='<c:url value="/detail?id=${item.id}"/>' class="a-block d-flex align-items-center height-lg" style="background-image: url(${item.image}); ">
	                    <div class="text half-to-full">
	                      <c:forEach var="category" items="${item.categorys}">
	                        	<span class="category mb-5">${category.name}</span>
	                       </c:forEach>
	                     	 <div class="post-meta">                        
		                        <span class="author mr-2"><img src="template/web/images/person_1.jpg" alt="Colorlib"> ${item.createdBy}</span>&bullet;
		                        <span class="mr-2">March 15, 2018 </span> &bullet;
		                        <span class="ml-2">${item.views} views</span>
		                        
		                     	 </div>
		                      	<h3>${item.name}</h3>
		                     	 <div class="post-meta"> 
		                   		&bullet;  <br>
		                   		${item.shortDescription}
	                   		</div>
	                    </div>
	                  </a>
                </div>
                </c:forEach>
              </div>
              
            </div>
          </div>
          
        </div>


      </section>
