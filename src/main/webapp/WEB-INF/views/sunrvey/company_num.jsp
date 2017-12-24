<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/tagLib.jsp" %>
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
				
				/* var $cityInput = $(':radio[name="sel_city"]:checked');
				var codes = '';
				$cityInput.each(function(i , obj){
					codes += (obj.value + '|');
				});
				codes = codes.substring(0,codes.length-1); */
				var param = {'codes':$(':radio[name="sel_city"]:checked').val()};
				
				$.ajax({
					url:base_path + '/sunrvey/company/num/getData',
				    type:'POST',
				    data:param,
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
								    			title : '数量',
								    			align:'center'
								    		}];
				        	
				        	CreateChart.createPieWithTable('chartdiv1','cityName','number',columns,datas,'总数');
				        	resizeWrap();
				        }else{
				        	alert(data.desc);
				        }
				    }
				});
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