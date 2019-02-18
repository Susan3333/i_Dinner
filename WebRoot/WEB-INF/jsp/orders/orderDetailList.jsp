<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>本单</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/table.css" rel="stylesheet" type="text/css"
	media="all">
<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">
<link href="${path}/css/login.css" rel="stylesheet" type="text/css"
	media="all">
</head>
<body>

	<div class="header">
		<div class="header_top">
			<span>管理员${name}：您好！</span>
			<ul class="login">
				<li class="login_top">
				<li class="sign"><a
					href="${pageContext.request.contextPath }/logout.action"> <img
						src="<%=request.getContextPath()%>/img/lock.png" /> <span>退出</span>
				</a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	
	<form
		action="${pageContext.request.contextPath }/orders/displayOrdersDetail.action"
		method="post" name="ordersDetailForm" enctype="multipart/form-data">
		<table class="bordered1">
			<tr>
				<td>订单序号</td>
				<td>菜品</td>
				<td>数量</td>
			</tr>
			
			<c:forEach items="${ordersdetailWaiterList}" var="ordersdetail">
			 <tr>
					 <td>${ordersdetail.orders_id}</td>
					 <td>${ordersdetail.dish_id}</td>
					 <td>${ordersdetail.dish_num}</td>
			</tr> 
			</c:forEach>
		</table>
		<div style="text-align:center">
		<input type="button" value="返回" onclick="history.back()" style="width: 100px; height: 50px; background-color: #dce9f9; border-radius: 15px;">
		</div>
	</form>
</body>

</html>