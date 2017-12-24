<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../../include/tagLib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>企业生产经营情况</title>
		<jsp:include page="../../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/tableUtils.js" ></script>
		<script type="text/javascript">
			$(function(){
				_search();
			});
			
			function _search(){
				
				var options = {
						columns : [ // 列设置
					    		{
					    			field : 'name',
					    			title : '指标名称',
					    			align:'center'
					    		},
					    		{
					    			field : 'code',
					    			title : '代码',
					    			align:'center'
					    		},
					    		{
					    			field : 'unit',
					    			title : '计量单位',
					    			align:'center'
					    		},
					    		{
					    			field : 'number',
					    			title : '数量',
					    			align:'center'
					    		}
			    			],
			    		url : base_path + '/managedata/industry/situationData'
				};
				
				TableUtils.createTable('#baseTable',options);
			}
			
		</script>
	</head>
	<body>
		<div class="c_wrap">
			<div class="c_wrap_content">
				<div class="row">
					 <div  class="col-sm-12" >
					 	<table class="table" id="baseTable"></table>
					 </div>
				</div>
			</div>
		</div>
	</body>
</html>