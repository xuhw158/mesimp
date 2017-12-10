<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../include/tagLib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>数据分析——产业调查</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/createChart.js" ></script>
		<script type="text/javascript">
			$(function(){
				loadSelect();
				_search();
				$('#type').on('change',function(e){
					loadSelect();
				});
			});
			
			function loadSelect(){
				var quota = $('#quota').html('');
				if($('#type').val() == 1){
					quota.append('<option>海水养殖产量 </option>');
					quota.append('<option>海洋捕捞产量 </option>');
					quota.append('<option>远洋捕捞产量 </option>');
					quota.append('<option>海产品销售量 </option>');
					quota.append('<option>海产品销售金额 </option>');
					quota.append('<option>渔业灾情直接经济损失</option>');
				}else if ($('#type').val() == 2){
					quota.append('<option>水产品年加工产量 </option>');
					quota.append('<option>海产品加工产量 </option>');
				}
			}
			
			function _search(){
				
				$.ajax({
					url:base_path + '/analysis/industry/getData',
				    type:'POST',
				    dataType:'json', 
				    success:function(data){
				        if(data && data.code == 0){
				        	var datas = data.data;
				        	
				        	var columns =[ // 列设置
								    		{
								    			field : 'cityName', // 数据属性名
								    			title : '地区', // 表格列头
								    			align:'center'
								    		},
								    		{
								    			field : 'number',
								    			title : '产量',
								    			align:'center'
								    		}];
				        	
				        	if($('#type').val() == '2'){
					        	CreateChart.createSerialWithTable('chartdiv1','cityName','number',columns,datas,1);
				        	}else{
					        	CreateChart.createPieWithTable('chartdiv1','cityName','number',columns,datas,1);
				        	}
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
					      <select class="form-control" id="type">
					      	<option value="1">海洋渔业</option>
					      	<option value="2">海洋水产品加工业</option>
					      	<option>海洋油气业</option>
					      	<option>海洋矿业</option>
					      	<option>海洋盐业</option>
					      	<option>海洋船舶工业</option>
					      	<option>海洋工程装备制造业</option>
					      	<option>海洋化工业</option>
					      	<option>海洋药物和生物制品业</option>
					      	<option>海洋工程建筑业</option>
					      	<option>海洋可再生资源利用业</option>
					      	<option>海水利用业</option>
					      	<option>海洋交通运输业</option>
					      </select>
					    </div>
					 </div>
					 <div  class="col-sm-4 form-group" >
					 	<label class="col-sm-4 control-label">指标：</label>
					    <div class="col-sm-8">
					      <select class="form-control" id="quota">
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
				 <div id="chartdiv1"  style="height: 450px;"></div>
			</div>
		</div>
	</body>
</html>