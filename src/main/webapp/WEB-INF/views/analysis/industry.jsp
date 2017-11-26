<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../include/tagLib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>单位清查数量</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/createChart.js" ></script>
		<script type="text/javascript">
			$(function(){
				_search();
			});
			
			function _search(){
				
				$.ajax({
					url:base_path + '/analysis/industry/getData',
				    type:'POST',
				    dataType:'json', 
				    success:function(data){
				        if(data && data.code == 0){
				        	var datas = data.data;
				        	CreateChart.createPie('chartdiv1','cityName','number',datas);
				        	CreateChart.createSerial('chartdiv2','cityName','number',datas);
				        }else{
				        	alert(data.desc);
				        }
				    }
				});
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
					 	<label  class="col-sm-4 control-label">产业类别：</label>
					    <div class="col-sm-8">
					      <select class="form-control">
					      	<option>海洋渔业</option>
					      </select>
					    </div>
					 </div>
					 <div  class="col-sm-4 form-group" >
					 	<label class="col-sm-4 control-label">指标：</label>
					    <div class="col-sm-8">
					      <select class="form-control">
					      	<option>海水养殖产量 </option>
					      	<option>海洋捕捞产量 </option>
					      	<option>远洋捕捞产量 </option>
					      	<option>海产品销售量 </option>
					      	<option>海产品销售金额 </option>
					      	<option>渔业灾情直接经济损失</option>
					      </select>
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
				<h4>图表展示</h4>
			</div>
			<div class="c_wrap_content">
				<div class="row">
					 <div id="chartdiv1" class="col-sm-6" style="height: 450px;"></div>
					 <div id="chartdiv2" class="col-sm-6" style="height: 450px;"></div>
				</div>
			</div>
		</div>
	</body>
</html>