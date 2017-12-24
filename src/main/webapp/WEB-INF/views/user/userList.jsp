<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/tagLib.jsp" %>
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
					                checkbox: true  
					            },
					    		{
					    			field : 'order', // 数据属性名
					    			title : '序号', // 表格列头
					    			formatter : function(value, row, index) { // 自定义格式
					    				return index + 1;
					    			},
					    			align:'center'
					    		},
					    		{
					    			field : 'userName',
					    			title : '用户名',
					    			align:'center'
					    		},
					    		{
					    			field : 'realName',
					    			title : '真实姓名',
					    			align:'center'
					    		},
					    		{
					    			field : 'department',
					    			title : '所属部门',
					    			align:'center'
					    		},
					    		{
					    			field : 'areaType',
					    			title : '所属区域',
					    			align:'center'
					    		},
					    		{
					    			title : '操作',
					    			formatter : function(value, row, index) {
					    				var u = '<button class="btn btn-xs  btn-primary" onclick="edit()">修改</button>';
				    					var d = '<button class="btn btn-xs  btn-danger" onclick="del()">删除</button>';
					    				return u +' ' + d;
					    			},
					    			align:'center'
					    		}
			    			],
			    		url : base_path + '/user/list',
			    		singleSelect : true,
			    		clickToSelect:true,
			    		toolbar:'#toolbar'
				};
				
				TableUtils.createTable('#baseTable',options);
			}
			
			function add(){
				TableUtils.modelLayer({
					type:1,
					title:'新增用户',
					content:$('#userForm'),
					btn:['确定','取消'],
					ok:function(index){
						
						
					}
				});
			}
			
			function edit(){
				TableUtils.modelLayer({
					type:1,
					title:'修改用户',
					content:$('#userForm'),
					btn:['确定','取消'],
					ok:function(index){
						
						
					}
				});
			}
			
			function del(){
				layer.confirm('您确定要删除该用户吗？', {
					  btn: ['确定','取消'] //按钮
					}, function(){
						
					});
			}
		</script>
	</head>
	<body>
		<!-- <div class="c_wrap">
			<div class="c_wrap_title">
				<h4>查询条件</h4>
			</div>
			<div class="c_wrap_content">
				<form class="form-horizontal">
					<div class="form-inline">
						<label class="control-label">行政区名称：</label>
						<div class="checkbox"><label><input type="checkbox" name="sel_city" value="110000" checked="checked"/> 沈阳市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="116000" checked="checked"/> 大连市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="114000" checked="checked"/> 鞍山市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="113000" checked="checked"/> 抚顺市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="117000" checked="checked"/> 本溪市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="118000" checked="checked"/> 丹东市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="121000" checked="checked"/> 锦州市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="115000" checked="checked"/> 营口市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="123000" checked="checked"/> 阜新市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="111000" checked="checked"/> 辽阳市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="124000" checked="checked"/> 盘锦市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="112000" checked="checked"/> 铁岭市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="122000" checked="checked"/> 朝阳市</label></div>
						<div class="checkbox"><label><input type="checkbox"  name="sel_city" value="125000" checked="checked"/> 葫芦岛市</label></div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<button type="button" class="btn btn-xs btn-primary" onclick="_search()">查询</button>
						</div>
					</div>
				</form>
			</div>
		</div> -->
		<div class="c_wrap">
			<div class="c_wrap_title">
				<h4>用户管理</h4>
			</div>
			<div class="c_wrap_content">
				<div class="row">
					 <div  class="col-sm-12" >
					 	<div id="toolbar">
					 		<button class="btn btn-primary" onclick="add()">添加</button>
					 	</div>
					 	<table class="table" id="baseTable"></table>
					 </div>
				</div>
			</div>
		</div>
		<jsp:include page="userForm.jsp"></jsp:include>
	</body>
</html>