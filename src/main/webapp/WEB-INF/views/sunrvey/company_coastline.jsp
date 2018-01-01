<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/tagLib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>涉海单位占用海岸线企业数量</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/createChart.js" ></script>
		<script type="text/javascript">
		var testData1 = [
			{
				"cityCode": "116000",
				"cityName": "大连市",
				"number": 356,
				"sort": 1
			},
			{
				"cityCode": "118000",
				"cityName": "丹东市",
				"number": 45,
				"sort": 2
			},
			{
				"cityCode": "124000",
				"cityName": "盘锦市",
				"number": 12,
				"sort": 3
			},
			{
				"cityCode": "121000",
				"cityName": "锦州市",
				"number": 24,
				"sort":4
			},
			{
				"cityCode": "115000",
				"cityName": "营口市",
				"number": 32,
				"sort": 5
			},
			{
				"cityCode": "125000",
				"cityName": "葫芦岛市",
				"number": 67,
				"sort": 6
			}
		];	
		
		var testData2 = [
		     			{
		     				"cityCode": "116000",
		     				"cityName": "中山区",
		     				"number": 29,
		     				"sort": 1
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "西岗区",
		     				"number": 38,
		     				"sort": 2
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "沙河口区",
		     				"number": 30,
		     				"sort": 3
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "甘井子区",
		     				"number": 38,
		     				"sort": 4
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "旅顺口区",
		     				"number": 29,
		     				"sort": 5
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "金州新区",
		     				"number": 27,
		     				"sort": 6
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "庄河市",
		     				"number": 34,
		     				"sort": 7
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "瓦房店市",
		     				"number": 36,
		     				"sort": 8
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "普兰店区",
		     				"number": 29,
		     				"sort": 9
		     			},
		     			{
		     				"cityCode": "116000",
		     				"cityName": "长海县",
		     				"number": 66,
		     				"sort": 10
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
				    			title : '数量（单位：家）',
				    			align:'center'
				    		}];
        	
        	if($(':radio[name="sel_city"]:checked').val() == 'liaoning'){
	        	CreateChart.createPieWithTable('chartdiv1','cityName','number',columns,testData1,'合计');
        	}else{
	        	CreateChart.createPieWithTable('chartdiv1','cityName','number',columns,testData2,'合计');
        	}
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
					<h4>涉海单位占用海岸线企业数量</h4>
				</div>
				<div class="c_wrap_content">
					 <div id="chartdiv1" ></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			window.onresize = resizeWrap;
		</script>
	</body>
</html>