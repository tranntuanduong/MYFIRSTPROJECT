<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="builddingAPI" value="/api-admin-building"/>
<c:url var = "buildingURL" value = "/admin-building"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
						<form class="form-horizontal" role="form" id="formEdit">
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Tiêu đề</b></label>
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="text" class="form-control input-sm" name="name" value="${model.name}"/>
									</div>
								</div>
							</div>			
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Thể loại</b></label>
								</div>
								<div class="col-sm-3">
									check box ?
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Tags</b></label>
								</div>
								<div class="col-sm-3">
									check box ?
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-3">
									<label><b>Mô tả ngắn</b></label>
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="text" class="form-control input-sm" name="ward" value="${model.shortDescription}"/>
									</div>
								</div>
							</div>
							
								<div class="form-group">
								<div class="col-sm-3">
									<label><b>Hình ảnh cho sản phẩm</b></label>						
								</div>
								<div class="col-sm-3">
									<div class="fg-line">
										<label class="block clearfix">
											<input type="file" name="file" class="btn btn-info">
										</label>
									</div>
								</div>
							</div>
							<input type="hidden" name="id" value="${model.id}" id="buildingId"/>
							</form>
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
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.main-content -->
<script type="text/javascript">
	$( "#btnAddOrUpdateBuilding" ).click(function() {
	  	addOrUpdateBuilding();
	});	
	
	function addOrUpdateBuilding() {
		var buildingId = $('#buildingId').val();
		var formData = $('#formEdit').serializeArray();
		var data = {};
		var buildingTypes = [];
		$.each(formData, function (index, v ) {
			if (v.name == 'buildingTypes') {
				buildingTypes.push(v.value);
			} else {
				data[""+v.name+""] = v.value;
			}			
		});
		data['buildingTypes'] = buildingTypes;
		var dataArray = $('input[name="staffId"]:checked').map(function () {
			return $(this).val();			
		}).get();
		data['ids'] = dataArray;
		if (buildingId =='') {
			addBuilding(data);
		} else {
			editBuilding(data, buildingId);
		}
	}
	
	function addBuilding(data,id) {
		$.ajax({
			//url: '${builddingAPI}',
			url : 'http://localhost:8087/api/building',
			data: JSON.stringify(data),
			type: 'POST',	
			contentType: 'application/json',
			dataType: 'json',
	
			success: function(data) {
				window.location.href = "${buildingURL}?action=EDIT&id="+data.id+"&message=insert_success";
			},		
			error: function() {
				window.location.href = "${buildingURL}?action=LIST&message=insert_success";
			}
		});
	}
	function editBuilding(data, id) {
		$.ajax({
			//url: '${builddingAPI}',
			url : 'http://localhost:8087/api/building',
			data: JSON.stringify(data),
			type: 'PUT',	
			contentType: 'application/json',	
			success: function(data) {
				window.location.href = "${buildingURL}?action=EDIT&id="+id+"&message=update_success";
			},		
			error: function() {
				window.location.href = "${buildingURL}?action=LIST&message=errorsystem";
			}
		});
	}	
</script>
</body>
</html>














