/**
 * 加载菜单
 */
function loadTree() {
    menuStr = "";
    $.ajax( {
        async : false,
        url: "getMenuByUser.do",
        success: function( data, textStatus, jqXHR ){
            
            var json = JSON.parse(data);

            var menulist = [];
            $.each(json, function(i, item) {
            	
            	if (item.authority != 0) {
            		menulist.push({
                        id: item.id,
                        name: item.name,
                        parentId: item.parentId,
                        icon: item.icon,
                        order: item.orderNum,
                        type:item.type,
                        authority:item.authority,
                        url:item.url
                    });
            	}            	
                
            });

            for(var i = 0; i < menulist.length; i++) {
                var children = menulist[i].children || [];
                for(var j = 0; j < menulist.length; j++) {
                    if(menulist[j].parentId == menulist[i].id) {
                        children.push(menulist[j]);
                    }
                }
                menulist[i].children = children;
            }

            var treeData = [];
            $.each(menulist, function(i, item) {

                if(item.parentId == 0||item.parentId == null) {
                    treeData.push(item);
                }

            });

            treeData.sort(function(a,b){
                return a.orderNum - b.orderNum
            });

            /*$.each(treeData, function(i, item) {
                menuStr += "<li class=\"treeview\"><a href=\"javascript:;\"><img data-icon-n=\"" + item.icon + "\"" +
                "data-icon-a=\"" + item.icon + "\" src=\"" + item.icon + "\">" +
                "<span>" + item.name +"</span><i class=\"fa fa-angle-left pull-right\"></i></a>"
                menuStr += "<li class=\"treeview\"><a href=\"javascript:;\">" + "<i class=\"" + item.iconCls + "\"></i>" +
                "<span>" + item.text +"</span><i class=\"fa fa-angle-left pull-right\"></i></a>"
                menuStr += loadSubMenu(item);
                menuStr += "</li>";
            });*/
            
            /*$.each(treeData, function(i, item) {
                menuStr += "<li class=\"treeview\"><a href=\"javascript:;\"><img id=\"" + item.icon + "\"" + "src='' />" +
                "<span>" + item.name +"</span><i class=\"fa fa-angle-left pull-right\"></i></a>"
                menuStr += loadSubMenu(item);
                menuStr += "</li>";
            });*/
            
            $.each(treeData, function(i, item) {
                /*menuStr += "<li class=\"treeview\"><a href=\"javascript:;\"><img id=\"" + item.icon + "\"" + "src='' />" +
                "<span>" + item.name +"</span><i class=\"fa fa-angle-left pull-right\"></i></a>"*/
                menuStr += "<li class=\"treeview\"><a href=\"javascript:;\">" + "<i class=\"" + item.icon + "\" style='font-size: 16px;color: white;'></i>" +
                "<span>" + item.name +"</span><i class=\"fa fa-angle-left pull-right\"></i></a>"
                menuStr += loadSubMenu(item);
                menuStr += "</li>";
            });

        } ,
        error: function(jqXHR, textStatus, errorMsg){
        	if (jqXHR.responseText == 'nologin') {//未登录则先跳转到登录页面
        		location.href = "login/index.html";
        	} else {
        		alert(jqXHR.responseText);
        	}
        	
        }
    });
	
	return menuStr;
}

function loadSubMenu(item) {

	var buf = ""
	if (item.children.length != 0) {

		buf += "<ul class='treeview-menu'>"
		for (var j=0; j < item.children.length;j++) {
            //buf +="<li><a href='javascript:' onclick=\"addMainTab('" + item.children[j].text + "','" + item.children[j].attributes + "')\">" + item.children[j].text;
			var url = "";
			if (item.children[j].type == 5) {
				url = "operation/topology/topology_view.html?id=" + item.children[j].url + "&authority=" + item.children[j].authority;
			} else {
				url = item.children[j].url + "?authority=" + item.children[j].authority;
				//url = item.children[j].url + "";
			}
			
			buf +="<li><a href='javascript:' onclick=\"addMainTab('" + item.children[j].name + "','" + url + "','" + item.children[j].type + "')\"><i></i>" + item.children[j].name + "</a></li>";
		}

		buf += "</ul>";
	}
	
	return buf;
	
}

/**
 * 菜单事件
 */
function treeBeforeSelect(node) {
    if(node.children && node.children.length > 0) {
        if(node.state == "open") {
            $(this).tree("collapse", node.target);
        }else {
            $(this).tree("expand", node.target);
        }
        return false;
    } 
}
/**
 * 菜单事件
 */
function treeSelect(node) {
	addMainTab(node.text, node.attributes);
}

/**
 * 增加一个主窗口
 */
function addMainTab(text, url,type) {
	if (type == 3) {
		window.open(url,'big','fullscreen=yes')
	} else {
		
		if(!$('#mainTabs').tabs("exists", text)) {	
			
			if (text == '设备视图1') {
				$('#mainTabs').tabs('add',{
		            title: text,
		            href:url,
		            closable:true,
					style:"background-color: #f1f1f1;"
		        });
			} else {
				$('#mainTabs').tabs('add',{
		            title: text,
		            content:'<iframe border="0" frameborder="no" scrolling="no" allowtransparency="yes" src="' + url + '" width="100%" height="99%" style="overflow:hidden"/>',
		            closable:true,
					style:"background-color: #f1f1f1;"
		        });		
				
			}
			
				        
	    }else {
	        $('#mainTabs').tabs("select", text);
	    }
		
		
	
    }

}

/**
 * 全屏
 */
function fullScreen() {
	if($("#fullScreen").find(".glyphicon-screenshot").length > 0) {
		$("#layout").layout('expand', 'west').layout('expand', 'north');
		$("#fullScreen").find(".l-btn-icon").addClass("glyphicon-fullscreen").removeClass("glyphicon-screenshot");
	}else {
		$("#layout").layout('collapse', 'north').layout('collapse', 'west');
		$("#fullScreen").find(".l-btn-icon").addClass("glyphicon-screenshot").removeClass("glyphicon-fullscreen");
		$(".layout-expand").hide();
	}
	
}

function openFullWindow(url)
{
	 
   var strFeatures = "scrollbars=0,left=0,screenX=0,top=0,screenY=0";  
   if (window.screen) {
       //获取屏幕的分辨率
        var maxh = screen.availHeight-30;
        var maxw = screen.availWidth-10;
        strFeatures += ",height="+maxh;
        strFeatures += ",innerHeight="+maxh;
         strFeatures += ",width="+maxw;
        strFeatures += ",innerwidth="+maxw;
        
   } else {
       strFeatures +=",resizable";        
   }
   
   window.open(url,strFeatures);
}