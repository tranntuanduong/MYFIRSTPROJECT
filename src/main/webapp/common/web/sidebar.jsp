<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!-- sidebar -->
			<div class="col-md-12 col-lg-4  sidebar">
              <div class="sidebar-box search-form-wrap">
                <form action="${searchURL}" class="search-form">
                  <div class="form-group">
                    <span class="icon fa fa-search"></span>
                    <input type="text" class="form-control" id="s" name="name" placeholder="Tìm kiếm: ${model.name}">
                    
                  </div>
                </form>
              </div>
              <!-- END sidebar-box -->
              <div class="sidebar-box">
                <div class="bio text-center">
                  <img src="template/web/images/duong.jpg" alt="Image Placeholder" class="img-fluid">
                  <div class="bio-body">
                    <h2>JunDZ</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem facilis sunt repellendus excepturi beatae porro debitis voluptate nulla quo veniam fuga sit molestias minus.</p>
                    <p><a href="#" class="btn btn-primary btn-sm rounded">Read my bio</a></p>
                    <p class="social">
                      <a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
                      <a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
                      <a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
                      <a href="#" class="p-2"><span class="fa fa-youtube-play"></span></a>
                    </p>
                  </div>
                </div>
              </div>
              <!-- END sidebar-box -->  
              <div class="sidebar-box">
                <h3 class="heading">Popular Posts</h3>
                <div class="post-entry-sidebar">
                  <ul>
                    <li>
                      <a href="">
                        <img src="template/web/images/img_2.jpg" alt="Image placeholder" class="mr-4">
                        <div class="text">
                          <h4>How to Find the Video Games of Your Youth</h4>
                          <div class="post-meta">
                            <span class="mr-2">March 15, 2018 </span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="">
                        <img src="template/web/images/img_4.jpg" alt="Image placeholder" class="mr-4">
                        <div class="text">
                          <h4>How to Find the Video Games of Your Youth</h4>
                          <div class="post-meta">
                            <span class="mr-2">March 15, 2018 </span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="">
                        <img src="template/web/images/img_12.jpg" alt="Image placeholder" class="mr-4">
                        <div class="text">
                          <h4>How to Find the Video Games of Your Youth</h4>
                          <div class="post-meta">
                            <span class="mr-2">March 15, 2018 </span>
                          </div>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <!-- END sidebar-box -->

              <div class="sidebar-box">
                <h3 class="heading">Categories</h3>
                <ul class="categories">                
                  <c:forEach var="item" items="${categorys}">
                  	<c:if test="${item.count != null}">
                  		<li><a href='<c:url value="/category?categoryName=${item.name}&categoryId=${item.id}"/>'>${item.name} <span>(${item.count})</span></a></li>
                  	</c:if>
                  </c:forEach>
                </ul>
              </div>
              <!-- END sidebar-box -->
			  
              <div class="sidebar-box">
                <h3 class="heading">Tags</h3>
                <ul class="tags">
                  <li><a href='<c:url value="/web-home"/>'>Hủy tìm kiếm theo tags (Click me)</a></li>
                  <c:forEach var="item" items="${tags}">
                  	 <li><a href='<c:url value="/web-home?tagId=${item.id}"/>'>${item.name}</a></li>
                  </c:forEach>
                </ul>
              </div>
            </div>
		<!-- end sidebar -->
			
          
