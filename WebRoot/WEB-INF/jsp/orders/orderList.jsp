<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询菜品列表</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/table.css" rel="stylesheet" type="text/css"
	media="all">
	<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">
<link href="${path}/css/login.css" rel="stylesheet" type="text/css"
	media="all">
<script type="text/javascript">
function insertOrders() {
	//提交form
	document.ordersForm.action="${pageContext.request.contextPath }/orders/insertOrders.action";
	document.ordersForm.submit();
}	
function insertOrders1() {
	//提交form
	document.ordersForm.action="${pageContext.request.contextPath }/orders/insertOrders1.action";
	document.ordersForm.submit();
}
</script>
</head>
<body>
<div class="header">
		<div class="header_top">
			<span style="background-color:white;">管理员${name}：您好！</span>
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
<br>
<br>
<div style="text-align:center">
<input type="button"  value="点餐" onclick="insertOrders()" style="width:100px;height:50px;background-color:#dce9f9;border-radius:15px;">
<input type="button"  value="加菜" onclick="insertOrders1()" style="width:100px;height:50px;background-color:#dce9f9;border-radius:15px;">
</div>
<br>
<br>
	<form
		action="${pageContext.request.contextPath }/orders/displayOrders.action"
		method="post" name="ordersForm">


		<table class="bordered1">
			<tr>

				<td>订单序号</td>
				<td>桌号</td>
				<td>人数</td>
				<td>服务生</td>
<td>详细</td>
			</tr>
			<c:forEach items="${ordersList}" var="orders">
				<tr>
					
					<td>${orders.id}</td>
					<td>${orders.table_id}</td>
					<td>${orders.coutom_num}</td>
					<td>${orders.waiter_id}</td>
					<%-- <td><a
						href="${pageContext.request.contextPath }/orders/editOrders.action?id=${orders.id}">修改</a></td> --%>
					<td><a
						href="${pageContext.request.contextPath }/orders/displayOrdersDetail.action?id=${orders.id}">本单详情</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>

</html>