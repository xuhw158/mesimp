function resizeIndex(){
	var otherHeight = $("#index_header").outerHeight() + $("#index_banner").outerHeight() + $("#index_footer").outerHeight();
	$("#index_main").height($(window).height() - otherHeight);
}