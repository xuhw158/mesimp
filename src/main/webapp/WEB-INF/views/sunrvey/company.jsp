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
				<div class="c_wrap_content">
					行政区名称：
					<label><input type="checkbox" />沈阳市</label>
					<label><input type="checkbox" />大连市</label>
					<label><input type="checkbox" />营口市</label>
					<label><input type="checkbox" />鞍山市</label>
					<label><input type="checkbox" />本溪市</label>
					<label><input type="checkbox" />丹东市</label>
					<label><input type="checkbox" />朝阳市</label>
					<label><input type="checkbox" />抚顺市</label>
					<label><input type="checkbox" />阜新市</label>
					<label><input type="checkbox" />锦州市</label>
					<label><input type="checkbox" />铁岭市</label>
					<label><input type="checkbox" />盘锦市</label>
					<label><input type="checkbox" />葫芦岛市</label>
				</div>
			</div>
			<div class="c_wrap">
				<div class="c_wrap_title">
					<label>图表展示</label>
				</div>
				<div class="c_wrap_content">
					<script>
			
			            AmCharts.makeChart("chartdiv", {
			                "type": "pie",
			                "dataProvider": [{
			                    "country": "Czech Republic",
			                        "litres": 156.9
			                }, {
			                    "country": "Ireland",
			                        "litres": 131.1
			                }, {
			                    "country": "Germany",
			                        "litres": 115.8
			                }, {
			                    "country": "Australia",
			                        "litres": 109.9
			                }, {
			                    "country": "Austria",
			                        "litres": 108.3
			                }, {
			                    "country": "UK",
			                        "litres": 65
			                }, {
			                    "country": "Belgium",
			                        "litres": 50
			                }],
			                "titleField": "country",
			                "valueField": "litres",
			                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
			                "legend": {
			                    "align": "center",
			                    "markerType": "circle"
			                }
			
			            });
			
			        </script>
					 <div id="chartdiv" style="width: 100%; height: 400px;"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			resizeWrap();
			window.onresize = resizeWrap;
		</script>
	</body>
</html>