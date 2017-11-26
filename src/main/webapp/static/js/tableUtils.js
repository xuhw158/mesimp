var TableUtils = {
		
		createTable : function (tableSelector,options){
			
			// 表格基础设置
			var tableOptions = {
				method : "post", // 请求方式（*）
				dataType : "json", // 返回结果格式
				striped : true, // 是否显示行间隔色
				pagination : false, // 是否显示分页（*）
				//cache : true, // 是否启用缓存
				undefinedText : '', // undefined时显示文本
				checkboxHeader : false, // 是否显示全选
				//search : true, // 是否开启搜索功能
				//onClickRow : onClickRow
			};
			/*function onClickRow(row, tr, field) {// 记录单选行id，并赋予天蓝色底纹
				clickRowId = row.id;
				$(".clickRow").removeClass("clickRow");
				$(tr).addClass("clickRow");
			}*/
			tableOptions = jQuery.extend(tableOptions, options);
			return $(tableSelector).bootstrapTable(tableOptions);// 加载基本表格
		},
		
		
		modelLayer : function(options){
			var layerOptions = {
				      type: 2,
				      skin:'',
				      shade: 0.7,
				      area: ['800px', '400px']
				  };
			layerOptions = jQuery.extend(layerOptions, options);
			layer.open(layerOptions);
		}
}