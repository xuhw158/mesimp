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
		}
};
