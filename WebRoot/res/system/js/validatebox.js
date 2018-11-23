$.extend($.fn.validatebox.defaults.rules, {           
	checkWSDL: {     
		validator: function(value,param){               
			var reg = "^(http://|([0-9]{1,3}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}:[0-9]{1,4}))[/a-zA-Z0-9._%&:=(),?+]*[?]{1}wsdl$";  
			return reg.test(value);  
		},     
		message: '请输入合法的WSDL地址'     
	},
	phone: {  
        // 验证手机号码  
        validator: function (value) {  
            return /^(13|15|18)\d{9}$/i.test(value); //这里就是一个正则表达式  
        },  
        message: '手机号码格式不正确'           //这里是错误后的提示信息  
    },  
	ip : {// 验证IP地址  
		validator : function(value) {  
			var reg = /^((1?\d?\d|(2([0-4]\d|5[0-5])))\.){3}(1?\d?\d|(2([0-4]\d|5[0-5])))$/ ;  
			return reg.test(value);  
		},  
		message : 'IP地址格式不正确'  
    }  
});