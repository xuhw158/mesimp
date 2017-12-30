<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/tagLib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>产业调查企业数量</title>
		<jsp:include page="../include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/createChart.js" ></script>
		<script type="text/javascript">
		var testData1 = [{
			"cityCode": "110000",
			"cityName": "沈阳市",
			"number": 870,
			"sort": 1
		},
		{
			"cityCode": "116000",
			"cityName": "大连市",
			"number": 1897,
			"sort": 2
		},
		{
			"cityCode": "113000",
			"cityName": "抚顺市",
			"number": 43,
			"sort": 4
		},
		{
			"cityCode": "118000",
			"cityName": "丹东市",
			"number": 789,
			"sort": 6
		},
		{
			"cityCode": "121000",
			"cityName": "锦州市",
			"number": 980,
			"sort": 7
		},
		{
			"cityCode": "115000",
			"cityName": "营口市",
			"number": 456,
			"sort": 8
		},
		{
			"cityCode": "124000",
			"cityName": "盘锦市",
			"number": 546,
			"sort": 11
		},
		{
			"cityCode": "125000",
			"cityName": "葫芦岛市",
			"number": 879,
			"sort": 14
		}
		];	
		
		var testData2 = [
			     			{
			     				"cityCode": "116000",
			     				"cityName": "中山区",
			     				"number": 177,
			     				"sort": 1
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "西岗区",
			     				"number": 159,
			     				"sort": 2
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "沙河口区",
			     				"number": 228,
			     				"sort": 3
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "甘井子区",
			     				"number": 155,
			     				"sort": 4
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "旅顺口区",
			     				"number": 209,
			     				"sort": 5
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "金州新区",
			     				"number": 228,
			     				"sort": 6
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "庄河市",
			     				"number": 192,
			     				"sort": 7
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "瓦房店市",
			     				"number": 188,
			     				"sort": 8
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "普兰店区",
			     				"number": 163,
			     				"sort": 9
			     			},
			     			{
			     				"cityCode": "116000",
			     				"cityName": "长海县",
			     				"number": 198,
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
		<jsp:include page="inc/ind_left.jsp"></jsp:include>
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
							<div class="radio"><label><input type="radio" name="sel_city" value="110000" /> 沈阳市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="116000" /> 大连市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="114000" /> 鞍山市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="113000" /> 抚顺市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="117000" /> 本溪市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="118000" /> 丹东市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="121000" /> 锦州市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="115000" /> 营口市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="123000" /> 阜新市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="111000" /> 辽阳市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="124000" /> 盘锦市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="112000" /> 铁岭市</label></div>
							<div class="radio"><label><input type="radio"  name="sel_city" value="122000" /> 朝阳市</label></div>
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
					<h4>产业调查企业数量</h4>
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