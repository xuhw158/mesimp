<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../include/tagLib.jsp"></jsp:include>
<div id="userForm" class="form-content" style="display:none;">
	<form action="" class="form-horizontal">
		 <div  class="col-sm-6 form-group" >
		 	<label for="username" class="col-sm-4 control-label">用户名：</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="username" placeholder="" >
		    </div>
		 </div>
		 <div  class="col-sm-6 form-group" >
		 	<label for="realName" class="col-sm-4 control-label">真实姓名：</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="realName" placeholder="" >
		    </div>
		 </div>
		 <div  class="col-sm-6 form-group" >
		 	<label for="password" class="col-sm-4 control-label">密码：</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="password" placeholder="" >
		    </div>
		 </div>
		 <div  class="col-sm-6 form-group" >
		 	<label for="confirmPwd" class="col-sm-4 control-label">确认密码：</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="confirmPwd" placeholder="" >
		    </div>
		 </div>
		 <div  class="col-sm-6 form-group" >
		 	<label for="department" class="col-sm-4 control-label">所属部门：</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="department" placeholder="" >
		    </div>
		 </div>
		 <div  class="col-sm-6 form-group" >
		 	<label for="areaType" class="col-sm-4 control-label">所属区域：</label>
		    <div class="col-sm-8">
				  <select class="form-control">
				  	<option>沈阳市</option>
				    <option>大连市</option>
				    <option>鞍山市</option>
				    <option>抚顺市</option>
				    <option>本溪市</option>
				    <option>丹东市</option>
				    <option>锦州市</option>
				    <option>营口市</option>
				    <option>阜新市</option>
				    <option>辽阳市</option>
				    <option>盘锦市</option>
				    <option>铁岭市</option>
				    <option>朝阳市</option>
				    <option>葫芦岛市</option>
				  </select>
		    </div>
		 </div>
	</form>
</div>
