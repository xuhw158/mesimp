<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="include/tagLib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>辽宁海洋经济调查信息管理平台</title>
		<jsp:include page="include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/common-menu.js" ></script>
		<script type="text/javascript">
		$(document).ready(function(){
			jQuery.navlevel2 = function(level1,dytime) {
				
			  $(level1).mouseenter(function(){
				  varthis = $(this);
				  delytime=setTimeout(function(){
						    varthis.find('ul.more150').find('li').css('width','150px');
					   	     varthis.find('ul.more150').find('li').find('a').css('width','150px');
							   varthis.find('ul.more200').find('li').css('width','200px');
					   	     varthis.find('ul.more200').find('li').find('a').css('width','200px');
					varthis.find('ul').slideDown();
				},dytime);
				
			  });
			  $(level1).mouseleave(function(){
				 clearTimeout(delytime);
				 $(this).find('ul').slideUp();
			  });
			  
			};
		  $.navlevel2("li.mainlevel",200);
		});
		</script>
	</head>
	<body>
		<div class="index_container">
			<div class="header" id="index_header">
				<ul id="nav">
					<%-- <li class="mainlevel">
						<a href="#"><img alt="" src="${basePath }/static/img/menu01.png" width="50">地图导航</a>
				        <ul>
				        	<li><a href="#">地图导航</a></li>
				            <li><a href="#">地图导航</a></li>
				            <li><a href="#">地图导航</a></li>
				        </ul>
				    </li> --%>
					<li class="mainlevel">
						<a href="#"  data-mid="1"><img alt="" src="${basePath }/static/img/menu02.png" width="50">调查成果</a>
						<ul>
				        	<li><a href="#" data-mid="1-1" data-src="/flex/index_Main.html">单位清查</a></li>
				            <li><a href="#" data-mid="1-2" data-src="/flex/index_Main.html">产业调查</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#"  data-mid="2"  data-src="/flex/index_Main.html"><img alt="" src="${basePath }/static/img/menu07.png" width="50">地图联动</a>
					</li>
					<li class="mainlevel">
						<a href="#"  data-mid="3"><img alt="" src="${basePath }/static/img/menu04.png" width="50">专题调查</a>
						<ul class="more150">
				        	<li><a href="#" data-mid="3-1" data-src="/flex/index_Main.html">海洋工程项目</a></li>
				            <li><a href="#" data-mid="3-2">围填海规模</a></li>
							<li><a href="#" data-mid="3-3">防灾减灾</a></li>
							<li><a href="#" data-mid="3-4">海洋节能减排</a></li>
							<li><a href="#" data-mid="3-5">临海开发区</a></li>
							<li><a href="#" data-mid="3-6">海岛海洋经济</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="4"><img alt="" src="${basePath }/static/img/menu06.png" width="50">经济地图</a>
					<ul class="more200">
				        	<li><a href="#" data-mid="4-1">渔港分布图</a></li>
				            <li><a href="#" data-mid="4-2">海洋油气企业分布图</a></li>
							<li><a href="#" data-mid="4-3">海洋矿业企业分布图</a></li>
							<li><a href="#" data-mid="4-4">海洋盐业企业分布图</a></li>
							<li><a href="#" data-mid="4-5">海洋船舶工业企业分布图</a></li>
							<li><a href="#" data-mid="4-6">海洋工程装备企业分布图</a></li>
							<li><a href="#" data-mid="4-7">海洋化工企业分布图</a></li>
							<li><a href="#" data-mid="4-8">海洋生物医疗企业分布图</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="5"><img alt="" src="${basePath }/static/img/menu03.png" width="50">地图分析</a>
					<ul class="more150">
				        	<li><a href="#" data-mid="5-1">区域数据统计</a></li>
				            <li><a href="#" data-mid="5-2">产业等密度分析</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="6"><img alt="" src="${basePath }/static/img/menu08.png" width="50">数据分析</a>
					  <ul>
				        	<li><a href="#" data-mid="6-1">单位清查</a></li>
				            <li><a href="#" data-mid="6-2">产业调查</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="7"><img alt="" src="${basePath }/static/img/menu04.png" width="50">数据管理</a>
					  <ul>
				        	<li><a href="#" data-mid="7-1">单位清查</a></li>
				            <li><a href="#" data-mid="7-2">产业调查</a></li>
				            <li><a href="#" data-mid="7-3">专题调查</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="8"><img alt="" src="${basePath }/static/img/menu09.png" width="50">用户管理</a>
						
					</li>
					<%-- <li class="mainlevel">
						<a href="#"><img alt="" src="${basePath }/static/img/menu10.png" width="50">系统工具</a>
					</li> --%>
				</ul>
			</div>
			<div id="index_banner">
				<ul  class="nav nav-tabs">
					<!-- <li  class="active">
						<a href="#A" data-toggle="tab">  
					       海洋船舶工业企业分布图
					       <label data-dismiss="close">&nbsp;&nbsp;&times;</label>
				        </a> 
						
					</li>
					<li>
						<a href="#B" data-toggle="tab">
							区域数据统计
							<label data-dismiss="close">&nbsp;&nbsp;&times;</label>
						</a>
					</li> -->
				</ul>
			</div>
			<div id="index_main" class="tab-content">
				<%-- <div class="tab-pane  fade in active" id="A">
					<iframe width="100%"  height="100%"  frameborder="0" src="${basePath }/flex/index_Main.html"></iframe>
				</div>
				<div class="tab-pane  fade" id="B">
					<iframe width="100%"  height="100%"  frameborder="0" src="http://www.baidu.com"></iframe>
				</div> --%>
			</div>
		</div>
		<jsp:include page="include/foot.jsp"></jsp:include>
		<script type="text/javascript">
			resizeIndex();
			window.onresize = resizeIndex;
		</script>
	</body>
</html>