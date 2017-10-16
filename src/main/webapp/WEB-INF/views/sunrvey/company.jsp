<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../include/tagLib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>单位清查数量</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="inc/left.jsp"></jsp:include>
		<div class="content_right">
			<div class="c_wrap">
				<div class="c_wrap_title">
					<label>查询条件</label>
				</div>
				<div class="c_wrap_content"></div>
			</div>
			<div class="c_wrap">
				<div class="c_wrap_title">
					<label>图表展示</label>
				</div>
				<div class="c_wrap_content"></div>
			</div>
		</div>
		<script type="text/javascript">
			resizeWrap();
			window.onresize = resizeWrap;
		</script>
	</body>
</html>