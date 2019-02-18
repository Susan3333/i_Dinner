<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加菜</title>
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

	<form id="ordersForm"
		action="${pageContext.request.contextPath }/orders/insertOrdersdetailSubmit.action"
		method="post" enctype="multipart/form-data">
		<table class="bordered1">

			<tr>
				<td>本单编号</td>
				<td><input type="text" name="orders_id"
					value="${ordersdetailWaiter.orders_id}" /></td>
			</tr>

			<tr>
				<td>菜品代码</td>
				<td><input type="text" name="dish_id"
					value="${ordersdetailWaiter.dish_id}" /></td>
			</tr>



			<tr>
				<td>所点份数</td>
				<td><input type="text" name="dish_num"
					value="${ordersdetailWaiter.dish_num}" /></td>
			</tr>
			<tr>
				<td>您的工号</td>
				<td><input type="text" name="waiter_id"
					value="${ordersdetailWaiter.waiter_id}" /></td>
			</tr>
			
		</table>
		
		<br>
		<br>
		
		<div style="text-align:center">
<input type="submit" value="提交"
					style="width: 100px; height: 50px; background-color: #dce9f9; border-radius: 15px;"></input>
		</div>
	</form>
</body>

</html>