function createChartDiv(id,obj) {
		
		var mydiv = document.createElement("div"); 
		mydiv.setAttribute("id","d_" + obj.id);  
		mydiv.style.cssText="position:absolute;left:" + obj.left + "px;top:" + obj.top + "px;width:" + obj.width + "px;height:" + obj.height + "px;border:1px solid #ccc";
		
		mydiv.onclick = function(){
			
			isCDivClick = true;
			
    		$.each(items, function(i, item) {
    			item.style.borderColor = "#ccc";
    		});
    		
    		items = [];
    		items.push(this);
    		this.style.borderColor = "red";
    		
    		var len = this.id.length;
    		var json = {};
    		json.id = this.id.substring(2,len);
    		var div = $("#d_" + json.id);
    		json.width = div.width();
    		json.height = div.height();
    		
    		json.left = div.offset().left;
    		json.top = div.offset().top;
    		
    		var chart = FusionCharts(json.id);
    		
    		json.title = chart.getChartAttribute('caption');
    		json.bgColor = chart.getChartAttribute('bgColor');
    		$('#dashboard_property_form').form('clear');
    		$('#dashboard_property_form').form('load',json);
        }		
		
		var db = $('#' + id);
		db[0].appendChild(mydiv);

		var content = '<div id="t_' + obj.id + '" style="background:#ffffff;padding:0px;"></div>';
		content += '<div id="c_' + obj.id +'" border="false" style="height:100%"></div>';
		content += '<input id="i_' + obj.id + '"type="hidden" value=\'' + JSON.stringify(obj) +'\'></input>'
			
		$(mydiv).html(content);
		
		var myChart;
		if (obj.type == 'bar2d') {
			myChart = drawBarChart(obj);			
		} else if (obj.type == 'line') {
			myChart = drawLineChart(obj);		
		} else if (obj.type == 'cylinder') {
			myChart = drawCylinderChart(obj);		
		} else if (obj.type == 'thermometer') {
			myChart = drawThermometerChart(obj);		
		}			
		
		setInterval("updateData('" + obj.id + "','" + obj.url + "')",obj.internal);
		myChart.render();
		
		$('#d_' + obj.id).draggable({ 
			onDrag:onCcDrag
		});
		
		$('#d_' + obj.id).resizable({ 
			onResize:onCcResize,
			onStopResize:onCcStopResize
		});
		
	}