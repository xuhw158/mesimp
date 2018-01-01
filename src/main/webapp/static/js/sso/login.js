var loginLayer;

function toLogin(s){
	if(!s){
		removeTab($('.nav li.active a').attr('id').replace('menuTab',''));
	}
	
	var layerOptions = {
			  id:'login-layer',
		      type: 1,
		      title:false,
		      skin:'login-layer',
		      shade: 0.7,
		      area: ['426px', '238px'],
		      content:$('#toLogin')
		  };
	loginLayer = layer.open(layerOptions);
	
	$('#loginForm').ajaxForm(function(data){
		if(data.code == 0){
			layer.close(loginLayer);
			
			/*var username = data.data.username;
			$('#userInfo').html('<span>欢迎，'+username+'。</span><button class="btn btn-link" onclick="toLogout()">退出</button>')
			
			layer.alert('登录成功！');*/
		}else{
			layer.msg('用户名或密码错误，登录失败！');
		}
	})
}


function toLogout(){
	location.href = base_path + '/sso/doLogout';
}

function hasLogin(){
	$.ajax({
		  url: base_path + '/hasLogin',
		  type: 'get',
		  dataType: 'json',
		  success: function (data, status) {
			  var username = data.data.username;
			$('#userInfo').html('<span>欢迎，'+username+'。</span><button class="btn btn-link" onclick="toLogout()">退出</button>')
		  }
	})
}

$(function(){
//	hasLogin();
})