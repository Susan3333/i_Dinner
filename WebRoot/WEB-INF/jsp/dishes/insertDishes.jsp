<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加菜品</title>
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

	<form id="dishForm"
		action="${pageContext.request.contextPath }/dishes/insertDishesSubmit.action"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${dishesWaiter.id }" />
		<table class="zebra">
	
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
					</c:if> <input type="file" name="dishes_pic" /></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交" />
			</tr>
		</table>

	</form>
</body>

</html>