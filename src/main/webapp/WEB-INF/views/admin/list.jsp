<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var = "buildingURL" value = "/admin/building"/>
<c:url var="builddingAPI" value="/api-admin-building"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dach sách bài viêt	</title>
</head>
<body>

	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang chủ</a></li>
					<li>Dach sách bài viêt</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					<!-- start form -->
						<!--search box-->
						<form:form method="get" id="formSubmit" modelAttribute="model">
							<div class="widget-box table-filter">
								<div class="widget-header">
									<h4 class="widget-title">Tìm kiếm</h4>
									<div class="widget-toolbar">
										<a href="#" data-action="collapse"> <i
											class="ace-icon fa fa-chevron-up"></i>
										</a>
									</div>
								</div>
								<div class="widget-body">
									<div class="widget-main">
										<div class="form-horizontal">
											<div class="form-group">
												<div class="col-sm-12">
													<label><b>Tên bài viết</b></label>
													<div class="fg-line">
														<input type="text" class="form-control input-sm"
															name="name" />
													</div>
												</div>
												
											</div>
																				
											<div class="form-group">
												<div class="col-sm-3">
													<label><b>Thể loại</b></label>
													<div class="fg-line">
														<input type="number" class="form-control input-sm"
															name="category" />
													</div>
												</div>
												<div class="col-sm-3">
													<label><b>Tác giả</b></label>
													<div class="fg-line">
														<input type="text" class="form-control input-sm"
															name="tagegory" />
													</div>
												</div>
												<div class="col-sm-3">
													<label><b>Tag</b></label>
													<div class="fg-line">
														<input type="number" class="form-control input-sm"
															name="tag"  />
													</div>
												</div>			
											</div>
											
											<div class="form-group">
												<div class="col-sm-1">
													<button class="btn btn-success fa fa-search" type="submit">Tìm kiếm</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" value="1" id="page" name="page"/>
						<input type="hidden" value="3" id="maxPageItem" name="maxPageItem"/>
						<input type="hidden" value="ASC" id="sortBy" name="sortBy"/>
						<input type="hidden" value="name" id="sortName" name="sortName"/>
						</form:form>
						<!-- end form -->
						
							<!-- button add, delete -->
						<div class="table-btn-controls">
							<div class="pull-right tableTools-container">
								<div class="dt-buttons btn-overlap btn-group">
									<a  class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
										data-toggle="tooltip"
										title='Thêm bài viêt'		
										href='<c:url value="/admin/blog/edit"/>'> <span><i class="fa fa-plus-circle sbigger-110 purple"></i></span>
									</a>
									<button type="button" id="bntDelete"
											class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
											data-toggle="tooltip" title='Xóa bài viêt'>
											<span><i class="fa fa-trash-o bigger-110 pink"></i></span>
									</button>
									
								</div>
							</div>
						</div>
									
					</div>
				</div>
				<!-- table -->
		
				
				<!-- paging -->
				<div class="container">
				    <nav aria-label="Page navigation">
				        <ul class="pagination" id="pagination"></ul>
				    </nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!-- model content -->
    </div>
  </div>
</div>
	<!-- /.main-content -->
<script type="text/javascript">
	$('#bntDelete').click(function name() {
		var dataArray = $(' tbody input[type=checkbox]:checked').map(function () {
			return $(this).val();			
		}).get();
		deleteBuilding(dataArray);	
	})
	
	function deleteBuilding(data) {
		$.ajax({
			url : 'http://localhost:8087/api/building',
			data: JSON.stringify(data),
			type: 'DELETE',	
			contentType: 'application/json',
			success: function(data) {
				window.location.href = "${buildingURL}?action=LIST&page=1&maxPageItem=3&sortName=name&sortBy=ASC&message=delete_success";
			},		
			error: function() {
				window.location.href = "${buildingURL}?action=LIST&page=1&maxPageItem=3&sortName=name&sortBy=ASC&message=errorsystem";
			}
		});
	}
	var totalPage = ${model.totalPage};
	var currentPage = ${model.page};
	 $(function () {
	        window.pagObj = $('#pagination').twbsPagination({
	            totalPages: totalPage,
	            visiblePages: 5,      
	            startPage: currentPage,
	            onPageClick: function (event, page) {                 
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














