<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/tagLib.jsp" %>
<div id="toLogin" class="form-content" style="display: none;">
	<div class="login-title">辽宁海洋经济调查信息管理平台登录</div>
	<div class="login-logo">
		<img alt="" src="${basePath }/static/img/logo.png" width="120">
	</div>
	<form id="loginForm" action="${basePath}/sso/doLogin" class="form-horizontal login-form" method="post">
		<div class="row">
			 <div  class="form-group col-sm-12" >
			 	<label for="username" class="col-sm-4 control-label">用户名：</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" name="username" placeholder="" >
			    </div>
			 </div>
			 <div  class="form-group col-sm-12" >
			 	<label for="username" class="col-sm-4 control-label">密码：</label>
			    <div class="col-sm-8">
			      <input type="password" class="form-control" name="userpass" placeholder="" >
			    </div>
			 </div>
			 <div  class="form-group col-sm-12" >
			 	<button class="btn btn-sm btn-primary" type="submit">登录</button>
			 	<button class="btn btn-sm btn-primary" type="button" onclick="layer.close(loginLayer);">取消</button>
			 </div>
		</div>
	</form>
</div>
