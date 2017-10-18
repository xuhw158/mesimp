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
				
				var $provinceInput = $(':checkbox[name="sel_province"]:checked');
				var codes = '';
				$provinceInput.each(function(i , obj){
					codes += (obj.value + '|');
				});
				codes = codes.substring(0,codes.length-1);
				var param = {'codes':codes};
				
				$.ajax({
					url:base_path + '/sunrvey/company/num/getData',
				    type:'POST',
				    data:param,
				    dataType:'json', 
				    success:function(data){
				        if(data && data.code == 0){
				        	var datas = data.data;
				        	CreateChart.createPie('chartdiv1','provinceName','number',datas);
				        	CreateChart.createSerial('chartdiv2','provinceName','number',datas);
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
							<div class="checkbox"><label><input type="checkbox" name="sel_province" value="110000" checked="checked"/> 沈阳市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="116000" checked="checked"/> 大连市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="114000" checked="checked"/> 鞍山市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="113000" checked="checked"/> 抚顺市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="117000" checked="checked"/> 本溪市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="118000" checked="checked"/> 丹东市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="121000" checked="checked"/> 锦州市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="115000" checked="checked"/> 营口市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="123000" checked="checked"/> 阜新市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="111000" checked="checked"/> 辽阳市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="124000" checked="checked"/> 盘锦市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="112000" checked="checked"/> 铁岭市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="122000" checked="checked"/> 朝阳市</label></div>
							<div class="checkbox"><label><input type="checkbox"  name="sel_province" value="125000" checked="checked"/> 葫芦岛市</label></div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<button type="button" class="btn btn-xs btn-primary" onclick="_search()">查询</button>
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
					<div class="row">
						 <div id="chartdiv1" class="col-sm-6" style="height: 450px;"></div>
						 <div id="chartdiv2" class="col-sm-6" style="height: 450px;"></div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			resizeWrap();
			window.onresize = resizeWrap;
		</script>
	</body>
</html>