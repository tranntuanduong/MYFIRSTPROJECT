<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="blogAPI" value="/api/blog"/>
<c:url var="editURL" value="/admin/blog/edit"/>
<c:url var="adminBlogURL" value="/admin/blog"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit - Blog</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang chủ</a></li>
					<li><a href="#">quản lí bài viêt</a></li>
					<li>thêm bài viêt</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<form:form class="form-horizontal" method="post" id="formEdit" modelAttribute="model">
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Tiêu đề</b></label>
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="text" class="form-control input-sm" name="name" value="${blogDetail.name}"/>
									</div>
								</div>
							</div>			
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Link ảnh</b></label>
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="text" class="form-control input-sm" name="image" value="${blogDetail.image}"/>
									</div>
								</div>
							</div>	
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Thể loại</b></label>
								</div>
								<div class="col-sm-3">
									<!-- test check box in dropdown -->
										<div class="container">
										  <div class="row">
										       <div class="col-lg-6">
											     <div class="button-group">
											        <button class="btn btn-primary" type="button" data-toggle="dropdown">Thể loại<span ></span> <span class="caret"></span></button>
													<ul class="dropdown-menu">
														<c:forEach var="item" items="${categorys}">
															<%boolean checked = false; %>															
															<c:forEach var="category" items="${blogDetail.categorys}">
																<c:if test="${item.id == category.id}">
																	<li><a class="small"><input type="checkbox" name="categoryId" value="${item.id}" checked/>&nbsp;${item.name}</a></li>
																	<%checked = true; %>
																</c:if>										
															</c:forEach>	
																<%
																  if(!checked) {
																 %>	  
																 	<li><a class="small"><input type="checkbox" name="categoryId" value="${item.id}" />&nbsp;${item.name}</a></li>
																 <%
																  }
																 %> 				 
														</c:forEach>				
													</ul>
											 	 </div>
												</div>
										  </div>
										</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Tags</b></label>
								</div>
								<div class="col-sm-3">
									<!-- test check box in dropdown -->
										<div class="container">
										  <div class="row">
										       <div class="col-lg-6">
											     <div class="button-group">
											        <button class="btn btn-primary" type="button" data-toggle="dropdown">Tags<span ></span> <span class="caret"></span></button>
													<ul class="dropdown-menu">
													
														<c:forEach var="item" items="${tags}">
															<%boolean checked = false; %>															
															<c:forEach var="tag" items="${blogDetail.tags}">
																<c:if test="${item.id == tag.id}">
																	<li><a class="small"><input type="checkbox" name="tagId" value="${item.id}" checked/>&nbsp;${item.name}</a></li>
																	<%checked = true; %>
																</c:if>										
															</c:forEach>	
																<%
																  if(!checked) {
																 %>	  
																 	<li><a class="small"><input type="checkbox" name="tagId" value="${item.id}" />&nbsp;${item.name}</a></li>
																 <%
																  }
																 %> 				 
														</c:forEach>														
													</ul>
											 	 </div>
												</div>
										  </div>
										</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Hiển thị lên slider</b></label>
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="checkbox" value="${1}" name="slider" ${blogDetail.slider == 1 ? 'checked' :''}>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Mô tả ngắn</b></label>
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="text" class="form-control input-sm" name="shortDescription" value="${blogDetail.shortDescription}"/>
									</div>
								</div>
							</div>
							
							
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Ảnh blog</b></label>						
								</div>
								<div class="col-sm-3">
									<div class="fg-line">
										<label class="block clearfix">
											<input type="file" name="file" class="btn btn-info">
										</label>
									</div>
								</div>
							</div>
							<!-- content -->
							<div class="form-group">
								<div class="col-sm-1">
									<label><b>Nội dung</b></label>
								</div>
								<div class="col-sm-9">
									<div class="fg-line">										
										<textarea name="content" id="content">${blogDetail.content}</textarea>
									</div>
								</div>
							</div>
							<input type="hidden" name="id" value="${model.id}" id="blogId"/>
							
							
							</form:form>
								
							<div class="form-group">
								<c:if test="${empty model.id}">
									<div class = "col-sm-1 col-sm-offset-3">
										<button class = "btn btn-success" id="btnAddOrUpdateBlog">Thêm bài viêt</button>
									</div>
								</c:if>
								<c:if test="${not empty model.id}">
									<div class = "col-sm-1 col-sm-offset-3">
										<button class = "btn btn-success" id="btnAddOrUpdateBlog">Cập nhật bài viêt</button>
									</div>
								</c:if>
							</div>		
							<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>
				</div>
			</div>
			
			
		</div>
	</div>
	<!-- /.main-content -->
<script type="text/javascript">
	var editor = '';
	$(document).ready(function(){
		editor = CKEDITOR.replace('content');
	});
	
	$( "#btnAddOrUpdateBlog" ).click(function() {
	  	addOrUpdateBlog();
	});	
	
	function addOrUpdateBlog() {
		var blogId = $('#blogId').val();
		var formData = $('#formEdit').serializeArray();
		var data = {};
		var categoryIds = [];
		var tagIds = [];
		$.each(formData, function (index, v ) {
			if (v.name != 'categoryId' && v.name != 'tagId') {
				data[""+v.name+""] = v.value;
			} else if(v.name != 'tagId') {
				categoryIds.push(v.value);
			} else {
				tagIds.push(v.value);
			}
		});
		data['content'] = editor.getData();
		data['categoryIds'] = categoryIds;
		data['tagIds'] = tagIds;
		if (blogId =='') {
			addBlog(data);
		} else {
			editBlog(data, blogId);
		}
	}
	
	function addBlog(data,id) {
		$.ajax({
			url: '${blogAPI}',
			data: JSON.stringify(data),
			type: 'POST',	
			contentType: 'application/json',
			dataType: 'json',
	
			success: function(data) {
				window.location.href = "${editURL}?action=EDIT&id="+data.id+"&message=insert_success";
			},		
			error: function() {
				window.location.href = "${adminBlogURL}?action=LIST&page=1&maxPageItem=3&sortName=name&sortBy=ASC&message=insert_success";
			}
		});
	}
	function editBlog(data, id) {
		$.ajax({
			url: '${blogAPI}',
			data: JSON.stringify(data),
			type: 'PUT',	
			contentType: 'application/json',	
			success: function(data) {
				window.location.href = "${editURL}?action=EDIT&id="+id+"&message=update_success";
			},		
			error: function() {
				window.location.href = "${editURL}?action=EDIT&id="+data.id+"&message=errorsystem";
			}
		});
	}	
	
	
	var options = [];
	$( '.dropdown-menu a' ).on( 'click', function( event ) {
	   var $target = $( event.currentTarget ),
	       val = $target.attr( 'data-value' ),
	       $inp = $target.find( 'input' ),
	       idx;
	   if ( ( idx = options.indexOf( val ) ) > -1 ) {
	      options.splice( idx, 1 );
	      setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
	   } else {
	      options.push( val );
	      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
	   }
	   $( event.target ).blur();   
	   console.log( options );
	   return false;
	});
</script>

</body>
</html>














