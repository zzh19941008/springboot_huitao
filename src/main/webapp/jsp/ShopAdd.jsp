<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<script type="text/javascript" src="<%=request.getContextPath() %>/jsp/js/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/jsp/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/jsp/css/bootstrap.min.css" />
	</head>

	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/shop/insert" method="post">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">商品名字</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"  name="sname" placeholder="商品名字">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">商品价格</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="sprice" placeholder="商品价格">
							</div>
						</div>
					   <div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">商品净重</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="sweight" placeholder="商品净重">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">商品材质</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="smaterial" placeholder="商品材质">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">添加</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</body>

</html>