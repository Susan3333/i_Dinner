<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>点餐</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/table.css" rel="stylesheet" type="text/css"
	media="all">
	<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">
<link href="${path}/css/login.css" rel="stylesheet" type="text/css"
	media="all">
<script type="text/javascript">
function insertOrdersSubmit() {
	//提交form
	document.insertordersForm.action="${pageContext.request.contextPath }/orders/insertOrdersSubmit.action";
	document.insertordersForm.submit();
}	
function insertOrdersdetail() {
	//提交form
	document.insertordersForm.action="${pageContext.request.contextPath }/orders/insertOrdersdetail.action";
	document.insertordersForm.submit();
}	
</script>
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
	<form name="insertordersForm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${ordersWaiter.id }" /> <input
			type="hidden" name="orders_id" value="${ordersWaiter.orders_id }" />
<br>
<br>
		
<table class="bordered1">

			<tr>
				<td>桌号</td>
				<td><input type="text" name="table_id"
					value="${ordersWaiter.table_id}" /></td>
			</tr>
			<tr>
				<td>客人人数</td>
				<td><input type="text" name="coutom_num"
					value="${ordersWaiter.coutom_num}" /></td>
			</tr>
			<tr>
				<td>您的工号</td>
				<td><input type="text" name="waiter_id"
					value="${ordersWaiter.waiter_id}" /></td>
			</tr>


		</table>
<br>
<br>

<div style="text-align:center">
				<input type="button" value="继续点餐"
					onclick="insertOrdersSubmit()" style="width:100px;height:50px;background-color:#dce9f9;border-radius:15px;" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- <input type="button" value="堂食点餐"
					onclick="insertOrdersdetail()" style="width:100px;height:50px;background-color:#dce9f9;border-radius:15px;"/> -->
</div>	
</form>
</body>

</html>