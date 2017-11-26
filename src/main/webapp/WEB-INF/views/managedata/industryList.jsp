<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../include/tagLib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>单位清查数量</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/tableUtils.js" ></script>
		<script type="text/javascript">
			$(function(){
				_search();
			});
			
			function _search(){
				
				var options = {
						columns : [ // 列设置
					    		{
					    			field : 'order', // 数据属性名
					    			title : '序号', // 表格列头
					    			formatter : function(value, row, index) { // 自定义格式
					    				return index + 1;
					    			},
					    			align:'center'
					    		},
					    		{
					    			field : 'enterpriseName',
					    			title : '企业名称',
					    			align:'center'
					    		},
					    		{
					    			field : 'area',
					    			title : '所属区域',
					    			align:'center'
					    		},
					    		{
					    			field : 'address',
					    			title : '地址',
					    			align:'center'
					    		},
					    		{
					    			field : 'enterpriseCode',
					    			title : '组织机构代码证号',
					    			align:'center'
					    		},
					    		{
					    			field : 'contacts',
					    			title : '联系人',
					    			align:'center'
					    		},
					    		{
					    			field : 'telephone',
					    			title : '联系电话',
					    			align:'center'
					    		},
					    		{
					    			field : 'industryType',
					    			title : '所属产业类别',
					    			align:'center'
					    		},
					    		{
					    			field : 'managementSituation',
					    			title : '企业生产经营情况',
					    			align:'center'
					    		}
			    			],
			    		url : base_path + '/managedata/industry/list'
				};
				
				TableUtils.createTable('#baseTable',options);
			}
			
		</script>
	</head>
	<body>
		<div class="c_wrap">
			<div class="c_wrap_title">
				<h4>查询条件</h4>
			</div>
			<div class="c_wrap_content row">
				<form class="form-horizontal">
					<div  class="col-sm-4 form-group" >
					 	<label for="areaType" class="col-sm-4 control-label">所属区域：</label>
					    <div class="col-sm-8">
							  <select class="form-control">
							  	<option>全部</option>
							  	<option>沈阳市</option>
							    <option>大连市</option>
							    <option>鞍山市</option>
							    <option>抚顺市</option>
							    <option>本溪市</option>
							    <option>丹东市</option>
							    <option>锦州市</option>
							    <option>营口市</option>
							    <option>阜新市</option>
							    <option>辽阳市</option>
							    <option>盘锦市</option>
							    <option>铁岭市</option>
							    <option>朝阳市</option>
							    <option>葫芦岛市</option>
							  </select>
					    </div>
					 </div>
					<div  class="col-sm-4 form-group" >
					 	<label  class="col-sm-4 control-label">产业类别：</label>
					    <div class="col-sm-8">
					      <select class="form-control">
					      	<option>全部</option>
					      	<option>海洋渔业</option>
					      </select>
					    </div>
					 </div>
					 <div  class="col-sm-4 form-group" >
					 	<label for="enterpriseName" class="col-sm-4 control-label">企业名称：</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" id="enterpriseName" placeholder="" >
					    </div>
					 </div>
					<div class="col-sm-4 form-group">
						<button type="button" class="btn btn-primary" onclick="_search()">查询</button>
					</div>
				</form>
			</div>
		</div>
		<div class="c_wrap">
			<div class="c_wrap_title">
				<h4>数据展示</h4>
			</div>
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