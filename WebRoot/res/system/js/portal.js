function showPortal(div,data) { 
		
	var sectionClass;
    	
	switch (data.columnNum) {
		case 1:
			sectionClass = "col-lg-12 connectedSortable";
			break;
		case 2:
			sectionClass = "col-lg-6 connectedSortable";
			break;
		case 3:
			sectionClass = "col-lg-4 connectedSortable";
			break;
		case 4:
			sectionClass = "col-lg-3 connectedSortable";
			break;	    			
	}
    	
	var sections = [];
	for (var i=0;i<data.columnNum;i++) {
		sections[i] = '<section class="' + sectionClass + '">';	    		
	}
    	
	$.each(data.rows, function(i, item) {
		
		item.id = generateUUID();	
		sections[item.column] += portletContent("read",item);			
		
	});
    	    	
	var context = "";
	for (var i=0;i<data.columnNum;i++) {
		sections[i] += '</section>';
		context += sections[i];
	}		
	
	div.html(context);
		
	$.each(data.rows, function(i, item) {
		if (item.type == 1) {
			drawChart(item.id,item.url);
		} else if (item.type == 3) {			
			
			$('#' + item.id).load(item.url,function() {
				
				var url = $('#' + item.id).find('input.url').val();				
				$.ajax({
					async : false,
					url: url + "?" + item.params,
					success: function( data, textStatus, jqXHR ){
						json = JSON.parse(data);
						$('#' + item.id).find('form.easyui-form').form('load',json);
						
					} ,
					error: function(jqXHR, textStatus, errorMsg){
						alert(jqXHR);
					}
				});
				
			});		
			
		} else if (item.type == 4) {			
			
			$('#' + item.id).load(item.url,function() {
				
				var url = $('#' + item.id).find('input.url').val();				
				$('#' + item.id).find('table.easyui-datagrid').datagrid({
	                url: url + '?' + item.params
				});
				
			});		
			
		} 
	});
			
	$.parser.parse(div);
				
	$.getScript("res/jquery/jquery-ui.js"); 
	$.getScript("res/system/js/portlet-drag.js"); 
}

function loadPortal(id,data) { 
		
	var sectionClass;
    	
	switch (data.columnNum) {
		case 1:
			sectionClass = "col-lg-12 connectedSortable";
			break;
		case 2:
			sectionClass = "col-lg-6 connectedSortable";
			break;
		case 3:
			sectionClass = "col-lg-4 connectedSortable";
			break;
		case 4:
			sectionClass = "col-lg-3 connectedSortable";
			break;	    			
	}
    	
	var sections = [];
	for (var i=0;i<data.columnNum;i++) {
		sections[i] = '<section class="' + sectionClass + '">';	    		
	}
	
	$.each(data.rows, function(i, item) {

		//item.id = generateUUID();	
		sections[item.column] += portletContent("write",item);	
		console.log(sections[item.column]);
		
	});
	
	var context = "";
	for (var i=0;i<data.columnNum;i++) {
		sections[i] += '</section>';
		context += sections[i];
	}	
	console.log(context);
	
	$('#' + id).html(context);
	
	$.each(data.rows, function(i, item) {
		if (item.type == 1) {
			drawPieChart(item.id,item.url);
		} else if (item.type == 3) {			
			
			$('#' + item.id).load(item.url,function() {
				
				var url = $('#' + item.id).find('input.url').val();				
				$.ajax({
					async : false,
					url: url + "?" + item.params,
					success: function( data, textStatus, jqXHR ){
						json = JSON.parse(data);
						$('#' + item.id).find('form.easyui-form').form('load',json);
						
					} ,
					error: function(jqXHR, textStatus, errorMsg){
						alert(jqXHR);
					}
				});
				
			});		
			
		} else if (item.type == 4) {			
			
			$('#' + item.id).load(item.url,function() {
				
				var url = $('#' + item.id).find('input.url').val();				
				$('#' + item.id).find('table.easyui-datagrid').datagrid({
	                url: url + '?' + item.params
				});
				
			});		
			
		} 
	});	
	
	$.parser.parse($('#' + id));
				
	$.getScript("res/jquery/jquery-ui.js"); 
	$.getScript("res/system/js/portlet-drag.js"); 
}

function portletContent(type,item) { 	
	
	var content = '<div id="dfg_' + item.id + '" class="nav-tabs-custom">';
	content += '<div id="solid_' + item.id + '" class="box box-solid" style="" >';
	content += '<div id="header_' + item.id + '" class="box-header" style="padding-left: 10px">';
	content += '<h3 id="ttl_' + item.id + '"  class="box-title">' + item.name + '</h3>';
	content += '<div id="tools_' + item.id + '" class="box-tools pull-right">';
	content += '<button type="button" class="btn btn-box-tool" onclick="javascript:maximize(this,\'' + item.url + '\',' + item.type + ');"><i class="fa fa-expand"></i></button>';
	content += '<button type="button" class="btn btn-box-tool" onclick="javascript:collapse(this);"><i class="fa fa-minus"></i></button>';
	
	if (type == "write") {
		content += '<button id="cfg_' + item.id + '" type="button" class="btn btn-box-tool" content=\'' + JSON.stringify(item) + '\' onclick="javascript:configure(this);"><i class="fa fa-gear"></i></button>';
		content += '<button id="cfg_' + item.id + '" type="button" class="btn btn-box-tool" content=\'' + JSON.stringify(item) + '\' onclick="javascript:remove(this);"><i class="fa fa-close"></i></button>';
	}	
	 
	content += '</div></div>';
	if (item.type == 1) {//图表
		content += '<div id="' + item.id + '" class="easyui-panel" border="false" style="width: 100%;height:' + item.height + 'px;">';
	} else if(item.type == 2) {//外部链接
		content += '<div id="' + item.id + '" class="easyui-panel" border="false" style="width: 100%;height:' + item.height + 'px;">';
		content +=  '<iframe style="vertical-align:top" frameborder=0 width=100% height=100% src="' + item.url + '"></iframe>'
	} else if(item.type == 3){//内部链接
		content += '<div id="' + item.id + '" class="easyui-panel" border="false" style="width: 100%;height:' + item.height + 'px;">';		
	} else {//内部链接
		content += '<div id="' + item.id + '" class="easyui-panel" border="false" style="width: 100%;height:' + item.height + 'px;">';
	}
	
	content += '</div></div><input id="ipt_' + item.id + '" type="hidden" value=\'' + JSON.stringify(item) +'\'>'
	content += '</div>';

	return  content;
}


function addPortlet(obj,item) { 
	
	var items = [];
	var i = 0;
	item.id = generateUUID();	
	
	var content = "";
	var rows = obj.children(".nav-tabs-custom");
	rows.each( function() {
		var portlet = $(this).children("input");		
		var json = JSON.parse(portlet.val());
		items[i] = json;
		i ++;
		content += portletContent("write",json);		
	});
	
	items[i] = item;
	content += portletContent("write",item);
	obj.html(content);
	
	$.each(items, function(i, o) {
		if (o.type == 1) {
			drawChart(o.id,o.url);
		} else if (o.type == 3) {			
			
			$('#' + o.id).load(o.url,function() {
				
				var url = $('#' + o.id).find('input.url').val();				
				$.ajax({
					async : false,
					url: url + "?" + o.params,
					success: function( data, textStatus, jqXHR ){
						json = JSON.parse(data);
						$('#' + o.id).find('form.easyui-form').form('load',json);
						
					} ,
					error: function(jqXHR, textStatus, errorMsg){
						alert(errorMsg);
					}
				});
				
			});		
			
		} else if (o.type == 4) {			
			
			$('#' + o.id).load(o.url,function() {
				
				var url = $('#' + o.id).find('input.url').val();				
				$('#' + o.id).find('table.easyui-datagrid').datagrid({
	                url: url + '?' + o.params
				});
				
			});		
			
		} 
	});
			
	$.parser.parse(obj);
				
	$.getScript("res/jquery/jquery-ui.js"); 
	$.getScript("res/system/js/portlet-drag.js"); 
}

function updatePortlet(item) { 
	
	$('#cfg_' + item.id).attr("content",JSON.stringify(item));
	$('#ttl_' + item.id).html(item.name);
	$('#ipt_' + item.id).val(JSON.stringify(item));	

	$('#' + item.id).panel({
		height:item.height
	});
	
	if (item.type == 1) {
		drawChart(item.id,item.url);
	} else if (item.type == 3) {			
		
		$('#' + item.id).load(item.url,function() {
			
			var url = $('#' + item.id).find('input.url').val();				
			$.ajax({
				async : false,
				url: url + "?" + item.params,
				success: function( data, textStatus, jqXHR ){
					json = JSON.parse(data);
					$('#' + item.id).find('form.easyui-form').form('load',json);
					
				} ,
				error: function(jqXHR, textStatus, errorMsg){
					alert(jqXHR);
				}
			});
			
		});		
		
	} else if (item.type == 4) {			
		
		$('#' + item.id).load(item.url,function() {
			
			var url = $('#' + item.id).find('input.url').val();				
			$('#' + item.id).find('table.easyui-datagrid').datagrid({
                url: url + '?' + item.params
			});
			
		});		
		
	} 
							
	$.getScript("res/jquery/jquery-ui.js"); 
	$.getScript("res/system/js/portlet-drag.js"); 
	
}

