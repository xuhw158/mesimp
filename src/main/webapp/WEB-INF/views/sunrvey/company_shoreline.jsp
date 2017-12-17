<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../include/tagLib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用海岸线长度</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/createChart.js" ></script>
		<script type="text/javascript">
		var testData1 = [
     			{
     				"cityCode": "116000",
     				"cityName": "大连市",
     				"number": 875,
     				"sort": 1
     			},
     			{
     				"cityCode": "118000",
     				"cityName": "丹东市",
     				"number": 368,
     				"sort": 2
     			},
     			{
     				"cityCode": "124000",
     				"cityName": "盘锦市",
     				"number": 136,
     				"sort": 3
     			},
     			{
     				"cityCode": "121000",
     				"cityName": "锦州市",
     				"number": 324,
     				"sort":4
     			},
     			{
     				"cityCode": "115000",
     				"cityName": "营口市",
     				"number": 246,
     				"sort": 5
     			},
     			{
     				"cityCode": "125000",
     				"cityName": "葫芦岛市",
     				"number": 468,
     				"sort": 6
     			}
     			];	
     		
     			$(function(){
     				_search();
     			});
     			
     			function _search(){
     				
     				/* var $cityInput = $(':radio[name="sel_city"]:checked');
     				var codes = '';
     				$cityInput.each(function(i , obj){
     					codes += (obj.value + '|');
     				});
     				codes = codes.substring(0,codes.length-1); */
     				var param = {'codes':$(':radio[name="sel_city"]:checked').val()};
     				
     	        	var columns =[ // 列设置
     					    		{
     					    			field : 'cityName', // 数据属性名
     					    			title : '地区', // 表格列头
     					    			align:'center'
     					    		},
     					    		{
     					    			field : 'number',
     					    			title : '数量',
     					    			align:'center'
     					    		}];
     	        	
     	        	CreateChart.createSerialWithTable('chartdiv1','cityName','number',columns,testData1,'总数');
     	        	resizeWrap();
     			}
		</script>
	</head>
	<body>
		<jsp:include page="inc/left.jsp"></jsp:include>
		<div class="content_right">
			<div class="c_wrap">
				<div class="c_wrap_title">
					<h4>查询条件</h4>
				</div>
				<div class="c_wrap_content">
					<form class="form-horizontal">
						<div class="form-inline">
							<label class="control-label">行政区名称：</label>
							<div class="radio"><label><input type="radio" name="sel_city" value="liaoning" checked="checked"/> 辽宁省</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="116000"/> 大连市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="118000" /> 丹东市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="121000" /> 锦州市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="115000" /> 营口市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="124000" /> 盘锦市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="125000" /> 葫芦岛市</label></div>
						</div>
						<div class="form-group" style="margin-top:5px;">
							<div class="col-sm-12">
								<button type="button" class="btn btn-primary" onclick="_search()">查询</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="c_wrap">
				<div class="c_wrap_title">
					<h4>图表展示</h4>
				</div>
				<div class="c_wrap_content">
					 <div id="chartdiv1" style="min-height: 450px;"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			window.onresize = resizeWrap;
		</script>
	</body>
</html>