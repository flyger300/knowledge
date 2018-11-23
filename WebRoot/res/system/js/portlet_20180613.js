 function maximize(obj,url,type){
	var iobj = obj.firstChild;
	var iobj = $(iobj);

	var pppobj = obj.parentNode.parentNode.parentNode;
	var pppobj = $(pppobj);
		        
	var bodyObj = pppobj.children(".panel");
	if (bodyObj.length > 0) {//panel中直接添加内容
		bodyObj = pppobj.children(".panel").children(".easyui-panel");
	} else {//panel中通过href添加代码片段
		bodyObj = pppobj.children(".easyui-panel");
	}
	
	if (iobj.hasClass("fa-expand")) {
		$(obj).attr("oldWidth",pppobj[0].style.width);
		pppobj.removeClass();
		pppobj.addClass("abc");
		
		pppobj[0].style.left = $("#mainTabs").offset().left + "px";
		pppobj[0].style.top = $("#mainTabs").offset().top + "px";
		pppobj[0].style.width = $("#mainTabs").width() + "px";//或者(pppobj.get(0)).style.width = '96%';	
		
		$(obj).attr("oldHeight",bodyObj.height());
		
		bodyObj.panel({
			height:$("#mainTabs").height() - 80
		});

		iobj.removeClass();
		iobj.addClass("fa fa-compress") ;

	} else {
		pppobj[0].style.left = "";
		pppobj[0].style.top = "";
		pppobj.removeClass();
		pppobj.addClass("box box-solid") ;
		//alert($(obj).attr("oldWidth"));
		pppobj[0].style.width = $(obj).attr("oldWidth");
		bodyObj.panel({
			height:$(obj).attr("oldHeight")
		});		

		iobj.removeClass();
		iobj.addClass("fa fa-expand") ;
	}
	
	if (type == 1) {
		drawChart(bodyObj.panel('options').id,url);
	} else if (type == 2) {
		drawPieChart(bodyObj.panel('options').id,url);
	} else if (type == 3) {
		drawRealGaugeChart(bodyObj.panel('options').id,url);
	} else if (type == 4) {
		drawRadarChart(bodyObj.panel('options').id,url);
	}
	
//	$.parser.parse(bodyObj);
}
 
 function collapse(obj){

     var iobj = obj.firstChild;
     var iobj = $(iobj);

     var pppobj = obj.parentNode.parentNode.parentNode;
     var pppobj = $(pppobj);
     
     var bodyObj = pppobj.children(".panel").children(".easyui-panel");

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
 