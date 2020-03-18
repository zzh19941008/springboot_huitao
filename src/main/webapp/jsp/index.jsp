
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<div class="col-md-10 col-md-offset-1">
				<table class="table table-condensed">
					<caption>
						<h3>
							<strong>
							   <center>
								 商品信息维护
							   </center>
						    </strong>
						</h3>
						<a href="<%=request.getContextPath() %>/jsp/ShopAdd.jsp"><button type="button" class="btn btn-success btn-sm">添加新商品</button></a>

					</caption>
					<thead>
						<tr>
							<th>序号</th>
							<th>商品名</th>
							<th>商品编号</th>
							<th>商品净重</th>
							<th>添加时间</th>
							<th>商品单价</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					 <c:forEach items="${list }" var="shop">
						<tr>
							<td>${shop.sid}</td>
							<td>${shop.sname}</td>
							<td>${shop.scode}</td>
							<td>${shop.sweight}</td>
							<td>
							<fmt:formatDate type="both" 
            dateStyle="medium" timeStyle="medium" 
            value="${shop.saddtime}" />
                             </td>
							<td>
							 <fmt:formatNumber value="${shop.sprice}" 
            type="currency"/></p>
							</td>
							<td>
								 <button type="button" class="btn btn-primary btn-sm">修改</button>
								 <a href="<%=request.getContextPath()%>/shop/delete?id=${shop.sid}">
								   <button type="button" class="btn btn-danger btn-sm">删除</button>
								 </a>
							</td>
						</tr>
					</c:forEach>
					</tbody>

			</div>

		</div>
	</body>

</html>