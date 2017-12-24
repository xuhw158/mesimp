<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/tagLib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>请登录</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script type="text/javascript">
			window.parent.toLogin();
		</script>
	</head>
	<body >
		<h1>您没有权限访问该模块</h1>
	</body>
</html>