<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品信息</title>
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
	<c:if test="${allErrors!=null }">
		<!-- 显示错误信息 -->
		<c:forEach items="${allErrors}" var="error">
		${error.defaultMessage}<br>
</c:forEach>
	</c:if>
		<div style="text-align:center">

	<form id="dishForm"
		action="${pageContext.request.contextPath }/dishes/editDishesSubmit.action"
		method="post" enctype="multipart/form-data">
		<br>
		<input type="hidden" name="id" value="${dishesWaiter.id }" /> 
		<table class="bordered1">
		<tr>
		<td>序号</td>
		<td>${dishesWaiter.id}</td>
		</tr>
			<tr>
				<td>菜品名称</td>
				<td><input type="text" name="name" value="${dishesWaiter.name}" /></td>
			</tr>
			<tr>
				<td>类型</td>
				<td><input type="text" name="type"
					value="${dishesWaiter.type}" /></td>
			</tr>
			<tr>
			<td>原价</td>
				<td><input type="text" name=normal_price
					 value="${dishesWaiter.normal_price }" /></td>
			</tr>
			<tr>
			<td>现价</td>
					<td><input type="text" name=discount_price
					 value="${dishesWaiter.discount_price }" /></td>
			</tr>
			<tr>
				<td>图片</td>
				<td><c:if test="${dishesWaiter.pitcure} !=null}">
						<img src="/pic/${dishesWaiter.pitcure}" width=100 height=100 />
						<br />
					</c:if> 
					<input type="file" name="dishes_pic" value="${dishesWaiter.pitcure}"/> 
					</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交" />
				</td>
			</tr>
		</table>
	</form>
</div>
</body>

</html>