var CreateChart = {
		
		/*
		 * 生成饼图
		 * @param divId 放置图表的DIV的id 
		 * @param titleField 显示标题字段
		 * @param valueField 值字段
		 * @param dataProvider 数据列表json数组格式
		 */
		createPie : function (divId , titleField , valueField , dataProvider){
			return AmCharts.makeChart(divId, {
                "type": "pie",
                "dataProvider": dataProvider,
                "titleField": titleField,
                "valueField": valueField,
                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>"
                /*,"legend": {
                    "align": "right",
                    "markerType": "circle"
                }*/
            });
		},
		
		createSerial : function (divId , titleField , valueField , dataProvider){
			return AmCharts.makeChart(divId, {
				  "type": "serial",
				  "theme": "light",
				  "dataProvider": dataProvider,
				  "startDuration": 1,
				  "graphs": [{
				    "balloonText": "<b>[[category]]: [[value]]</b>",
				    "fillAlphas": 0.9,
				    "lineAlpha": 0.2,
				    "type": "column",
				    "valueField": valueField
				  }],
				  /*"chartCursor": {
				    "categoryBalloonEnabled": false,
				    "cursorAlpha": 0,
				    "zoomable": false
				  },*/
				  "categoryField": titleField,
				  "categoryAxis": {
				    "gridPosition": "start",
				    "labelRotation": 45
				  }

				});
		},
		
		createPieWithTable : function(divId , titleField , valueField ,columns, dataProvider,totalName){
			var mainDiv = $('#'+divId).addClass('row');
			
			var chartDiv = $('<div class="col-sm-6" id="chart_'+ divId+'">').css('height','100%');
			var tableDiv = $('<div class="col-sm-6" id="table_'+ divId+'">').css('height','100%').css('padding-top','30px');
			var table = $('<table class="table">');
			tableDiv.append(table);
			
			mainDiv.html('').append(chartDiv).append(tableDiv);
			
			var chart = CreateChart.createPie('chart_' + divId , titleField , valueField , dataProvider);
			
			var tabelData = $.extend([],dataProvider);
			// 总量统计
			if(totalName){
				var total=0;
				$.each(tabelData,function(k,v){
					total += parseInt(v[valueField]);
				});
				var totalObj = {};
				totalObj[titleField] = totalName;
				totalObj[valueField] = total;
				tabelData.push(totalObj);
			}
			// 表格基础设置
			var tableOptions = {
				striped : true, // 是否显示行间隔色
				pagination : false, // 是否显示分页（*）
				//cache : true, // 是否启用缓存
				undefinedText : '', // undefined时显示文本
				checkboxHeader : false, // 是否显示全选
				columns:columns,
				data:tabelData
			};
			table.bootstrapTable(tableOptions);// 加载基本表格
			if(mainDiv.height() < tableDiv.height()){
				mainDiv.height(tableDiv.height());
			}
			chartDiv.height(mainDiv.height());
			
			return {chart:chart , table:table};
		},
		
		
		createSerialWithTable : function (divId , titleField , valueField ,columns , dataProvider,totalName){
			var mainDiv = $('#'+divId).addClass('row');
			
			var chartDiv = $('<div class="col-sm-6" id="chart_'+ divId+'">').css('height','100%');
			var tableDiv = $('<div class="col-sm-6" id="table_'+ divId+'">').css('height','100%').css('padding-top','30px');
			var table = $('<table class="table">');
			tableDiv.append(table);
			
			mainDiv.html('').append(chartDiv).append(tableDiv);
			
			var chart = CreateChart.createSerial('chart_' + divId , titleField , valueField , dataProvider);
			
			var tabelData = $.extend([],dataProvider);
			// 总量统计
			if(totalName){
				var total=0;
				$.each(tabelData,function(k,v){
					total += parseInt(v[valueField]);
				});
				var totalObj = {};
				totalObj[titleField] = totalName;
				totalObj[valueField] = total;
				tabelData.push(totalObj);
			}
			// 表格基础设置
			var tableOptions = {
				striped : true, // 是否显示行间隔色
				pagination : false, // 是否显示分页（*）
				//cache : true, // 是否启用缓存
				undefinedText : '', // undefined时显示文本
				checkboxHeader : false, // 是否显示全选
				columns:columns,
				data:tabelData
			};
			table.bootstrapTable(tableOptions);// 加载基本表格
			if(mainDiv.height() < tableDiv.height()){
				mainDiv.height(tableDiv.height());
			}
			chartDiv.height(mainDiv.height());
			
			
			return {chart:chart , table:table};
		}
};
