function openTab(thisObj){
	var id = $(thisObj).attr('data-mid');
	var src = $(thisObj).attr('data-src');
	var title = $(thisObj).text();
	
	if(src){
		createTab(id,title,src);
        document.getElementsByTagName('iframe')[0].contentWindow.document.getElementById("index_Main").flexFunction();
    }
}

function createTab(id,title,src){
	var tabId = 'menuTab' + id;
	var penelId = 'menuPenel' + id;
	
	if($('#' + tabId).length > 0){
		$('#' + tabId).click();
	}else{
		var tabHtml = $('<li><a href="#'+penelId+'" data-toggle="tab" id="'+ tabId +'">' + title +
		'<label data-dismiss="close" onclick="removeTab(\''+id+'\')">&nbsp;&nbsp;&times;</label></a></li>');
		var panelHtml = $('<div class="tab-pane  fade" id="'+penelId+'">\
				<iframe width="100%"  height="100%"  frameborder="0" src="'+ base_path + src+'"></iframe></div>');
		
		$('#index_banner  ul').append(tabHtml);
		$('#index_main').append(panelHtml);
		
		$('#' + tabId).click();
	}
}

function removeTab(id){
	var tabId = 'menuTab' + id;
	var penelId = 'menuPenel' + id;
	
	$('#' + tabId).parent().remove();
	$('#' + penelId).remove();

	if($('#index_banner  ul li[class=active]').length == 0){
		$('#index_banner  ul li:first > a').click();
	}
}

$(function(){
	$('#nav li > a').on('click',function(){
		openTab(this);
	});
	
});