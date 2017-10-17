var CreateChart = {
		
		/*
		 * 生成饼图
		 * @param divId 放置图表的DIV的id 
		 * @param titleField 显示标题字段
		 * @param valueField 值字段
		 * @param dataProvider 数据列表json数组格式
		 */
		createPie : function (divId , titleField , valueField , dataProvider){
			AmCharts.makeChart(divId, {
                "type": "pie",
                "dataProvider": dataProvider,
                "titleField": titleField,
                "valueField": valueField,
                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
                "legend": {
                    "align": "center",
                    "markerType": "circle"
                }
            });
		}
};
