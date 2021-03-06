<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="include/tagLib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>辽宁海洋经济调查信息管理平台</title>
		<jsp:include page="include/head.jsp"></jsp:include>
		<script src="${basePath}/static/js/common-menu.js" ></script>
		<script src="${basePath}/static/js/sso/login.js" ></script>
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
	<body style="overflow:hidden;">
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
				        	<li><a href="#" data-mid="1-1" data-src="/sunrvey/company/num">单位清查</a></li>
				            <li><a href="#" data-mid="1-2" data-src="/sunrvey/industry/compNum">产业调查</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="2" ><img alt="" src="${basePath }/static/img/menu07.png" width="50">地图联动</a>
						<ul class="more150">
				        	<li><a href="#" data-mid="2-1"  data-src="/flex/index_DTLD_DW.html">单位清查数量</a></li>
				        	<li><a href="#" data-mid="2-2"  data-src="/flex/index_DTLD_CY.html">产业调查数量</a></li>
				        	<li><a href="#" data-mid="2-3"  data-src="/flex/index_DTLD_QYDW.html">企业定位</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#"  data-mid="3"><img alt="" src="${basePath }/static/img/menu04.png" width="50">专题调查</a>
						<ul class="more150">
				        	<li><a href="#" data-mid="3-1" data-src="/flex/index_ZTDC_HYGCXM.html">海洋工程项目</a></li>
				            <li><a href="#" data-mid="3-2" data-src="/flex/index_ZTDC_WTHGC.html">围填海工程项目</a></li>
							<li><a href="#" data-mid="3-3" data-src="/flex/index_ZTDC_FZJZ.html">防灾减灾机构</a></li>
							<li><a href="#" data-mid="3-4" data-src="/flex/index_ZTDC_ZHSS.html">海洋灾害损失</a></li>
							<li><a href="#" data-mid="3-5" data-src="/flex/index_ZTDC_PWK.html">陆源入海排污口</a></li>
							<li><a href="#" data-mid="3-6" data-src="/flex/index_ZTDC_RHHL.html">入海河流</a></li>
							<li><a href="#" data-mid="3-7" data-src="/flex/index_ZTDC_LHKFQ.html">临海开发区</a></li>
							<li><a href="#" data-mid="3-8" data-src="/flex/index_ZTDC_HDX.html">海岛县</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="4"><img alt="" src="${basePath }/static/img/menu06.png" width="50">经济地图</a>
						<ul class="more200">
				        	<li><a href="#" data-mid="4-1" data-src="/flex/index_JJDT_YY.html">海洋渔业企业分布</a></li>
				            <li><a href="#" data-mid="4-2" data-src="/flex/index_JJDT_YQ.html">海洋油气企业分布</a></li>
							<li><a href="#" data-mid="4-3" data-src="/flex/index_JJDT_JTYS.html">海洋交通运输企业分布</a></li>
							<li><a href="#" data-mid="4-4" data-src="/flex/index_JJDT_YYQY.html">海洋盐业企业分布</a></li>
							<li><a href="#" data-mid="4-5" data-src="/flex/index_JJDT_CBGY.html">海洋船舶工业企业分布</a></li>
							<li><a href="#" data-mid="4-6" data-src="/flex/index_JJDT_GCZB.html">海洋工程装备企业分布</a></li>
							<li><a href="#" data-mid="4-7" data-src="/flex/index_JJDT_HG.html">海洋化工企业分布</a></li>
							<li><a href="#" data-mid="4-8" data-src="/flex/index_JJDT_SWYL.html">海洋生物医疗企业分布</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="5"><img alt="" src="${basePath }/static/img/menu03.png" width="50">地图分析</a>
					<ul class="more150">
				        	<li><a href="#" data-mid="5-1" data-src="/flex/index_DTFX_QYSJTJ.html">区域数据统计</a></li>
				            <li><a href="#" data-mid="5-2" data-src="/flex/index_DTFX_MD.html">产业等密度分析</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="6"><img alt="" src="${basePath }/static/img/menu08.png" width="50">数据分析</a>
					  <ul>
				        	<!-- <li><a href="#" data-mid="6-1">单位清查</a></li> -->
				            <li><a href="#" data-mid="6-2"  data-src="/analysis/industry">产业调查</a></li>
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="7"><img alt="" src="${basePath }/static/img/menu04.png" width="50">数据管理</a>
					  <ul>
				        	<li><a href="#" data-mid="7-1"  data-src="/managedata/name">名录管理</a></li>
				            <li><a href="#" data-mid="7-2" data-src="/managedata/industry">产业调查</a></li>
<!-- 				            <li><a href="#" data-mid="7-3">专题调查</a></li> -->
				        </ul>
					</li>
					<li class="mainlevel">
						<a href="#" data-mid="8"><img alt="" src="${basePath }/static/img/menu09.png" width="50">用户管理</a>
						<ul>
				        	<li><a href="#" data-mid="8-1" data-src="/user">用户管理</a></li>
				        </ul>
					</li>
					<%-- <li class="mainlevel">
						<a href="#"><img alt="" src="${basePath }/static/img/menu10.png" width="50">系统工具</a>
					</li> --%>
				</ul>
			</div>
			<div id="index_banner">
				<div class="row">
					<div class="col-sm-10">
						<ul  class="nav nav-tabs">
							<li  class="active">
								<a href="#home" data-toggle="tab">  
							       首页
							       <label >&nbsp;</label>
						        </a> 
							</li>
							<!-- <li>
								<a href="#B" data-toggle="tab">
									区域数据统计
									<label data-dismiss="close">&nbsp;&nbsp;&times;</label>
								</a>
							</li> -->
						</ul>
					</div>
					<div class="col-sm-2 text-right" id="userInfo">
							<button class="btn btn-link" onclick="toLogin(1)">登陆</button>
					</div>
				</div>
			</div>
			<div id="index_main" class="tab-content">
				 <div class="tab-pane  fade in active" id="home">
					<iframe width="100%"  height="100%"  frameborder="0" src="${basePath }/flex/index_Main.html"></iframe>
				</div>
				<%--<div class="tab-pane  fade" id="B">
					<iframe width="100%"  height="100%"  frameborder="0" src="http://www.baidu.com"></iframe>
				</div> --%>
			</div>
		</div>
		<jsp:include page="include/foot.jsp"></jsp:include>
		<jsp:include page="sso/toLogin.jsp"></jsp:include>
		<script type="text/javascript">
			resizeIndex();
			window.onresize = resizeIndex;
		</script>
	</body>
</html>