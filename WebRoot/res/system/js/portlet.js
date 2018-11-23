 function maximize(obj,url,type){
	var iobj = obj.firstChild;
	var iobj = $(iobj);

	var pppobj = obj.parentNode.parentNode.parentNode;
	var pppobj = $(pppobj);
		        	
	var bodyObj = pppobj.children("div:last-child");
	
	var mainTab = $("#mainTabs", window.top.document);

	if (iobj.hasClass("fa-expand")) {
		$(obj).attr("oldWidth",pppobj[0].style.width);
		pppobj.removeClass();
		pppobj.addClass("abc");
						
		if (window.self === window.top) {//判断是否有窗口嵌套
			pppobj[0].style.left = mainTab.offset().left + "px";
			pppobj[0].style.top = mainTab.offset().top + "px";
			pppobj[0].style.width = mainTab.width() + "px";
		} else {
			pppobj[0].style.left = "0px";
			pppobj[0].style.top = "0px";
			pppobj[0].style.width = mainTab.width() + "px";
		}		
			
		$(obj).attr("oldHeight",bodyObj.height());
				
		bodyObj.width(mainTab.width());
		bodyObj.height(mainTab.height() - 80);
		
		bodyObj.css({"backgroundColor":"white"});

		iobj.removeClass();
		iobj.addClass("fa fa-compress") ;

	} else {
		pppobj[0].style.left = "";
		pppobj[0].style.top = "";
		pppobj.removeClass();
		pppobj.addClass("box box-solid") ;
		pppobj[0].style.width = $(obj).attr("oldWidth");
		
		bodyObj.width($(obj).attr("oldWidth"));
		bodyObj.height($(obj).attr("oldHeight"));	

		iobj.removeClass();
		iobj.addClass("fa fa-expand") ;
	}
	
	if (type == 1) {
		
		var chart = [];
		chart.id = bodyObj.attr("id");
		chart.url = url;
		drawLineChart(chart);
		
	} else if (type == 2) {
		
		var chart = [];
		chart.id = bodyObj.attr("id");
		chart.url = url;
		drawPieChart(chart);
		
	} else if (type == 3) {
		
		var chart = [];
		chart.id = bodyObj.attr("id");
		chart.url = url;
		drawGaugeChart(chart);
		
	} else if (type == 4) {
		
		var chart = [];
		chart.id = bodyObj.attr("id");
		chart.url = url;
		drawRadarChart(chart);
		
	} else if (type == 5) {
		
		var chart = [];
		chart.id = bodyObj.attr("id");
		chart.url = url;
		drawBarChart(chart);
		
	} else if (type == 6) {
		
		var chart = [];
		chart.id = bodyObj.attr("id");
		chart.url = url;
		drawLinePieChart(chart);
		
	}
	
//	$.parser.parse(bodyObj);
}
 
 function collapse(obj){

     var iobj = obj.firstChild;
     var iobj = $(iobj);

     var pppobj = obj.parentNode.parentNode.parentNode;
     var pppobj = $(pppobj);
     
     var bodyObj = pppobj.children("div:last-child");

     if (iobj.hasClass("fa-minus")) {
         bodyObj.hide();
         iobj.removeClass();
         iobj.addClass("fa fa-plus") ;
     } else {
         bodyObj.show();
         iobj.removeClass();
         iobj.addClass("fa fa-minus") ;
     }
 } 
 
function collapse_all(obj,id,height,url){
     var iobj = obj.firstChild;
     var iobj = $(iobj);

     var ppppobj = obj.parentNode.parentNode.parentNode.parentNode;
     var ppppobj = $(ppppobj);

     if (iobj.hasClass("fa-angle-double-up")) {
         $("#" + id).layout('remove','north');
         iobj.removeClass();
         iobj.addClass("fa fa-angle-double-down") ;
     } else {
         var region = $("#" + id).val();
         var options = {
             id:id + "n",
             region: 'north',
             border:false
         };
         options.height = height;
         options.href = url;

         $("#" + id).layout('add', options);
         var tmpDiv = document.getElementById(id + "n");
         tmpDiv.style.backgroundColor = "#b3b3b3";
         iobj.removeClass();
         iobj.addClass("fa fa-angle-double-up") ;
     }
 }
 
function configure(obj){
	
	var content = $(obj).attr("content");
	
	var width = 350;
	var height = 250;
	
	var left = (document.body.clientWidth - width)/2;
	var top = (document.body.clientHeight - height)/2;

    $('#winPortlet').window({width:width,height:height,left:left, top:top,title:'<b>portlet->配置</b>',href:'portal/portlet_configure.html',content:content});
    $('#winPortlet').window('open');   
	
}

function remove(obj){

	var ppppobj = obj.parentNode.parentNode.parentNode.parentNode;
	var pppppobj = ppppobj.parentNode;
	pppppobj.removeChild(ppppobj);
	
}
 