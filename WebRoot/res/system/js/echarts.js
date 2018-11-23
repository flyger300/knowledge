function drawLineChart(chart) {

	require.config({
		paths : {
			echarts : 'res/echarts-2.2.0/build/dist'
		}
	});

	require([ 
		'echarts', 
		'echarts/chart/pie',
		'echarts/chart/line' ], function(ec) {

		var myChart = ec.init(document.getElementById(chart.id));

		option = {

			tooltip : {
				trigger : 'axis',
				formatter: function (params) {
		            params = params[0];
		            var date = new Date(params.name);
		            return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
		        },
			},
			backgroundColor:'white' ,
			dataZoom : {
				start : 0,
				end : 100
			},
			legend : {
				data : [ '最高气温' ]
			},
			calculable : true,
			grid : {
				x : 40,
				y : 20,
				x2 : 30,
				y2 : 60,
				show:'true',
				borderWidth:'0'
			},
			xAxis : [ {
				show : true,
				type : 'time',
				scale : true,
				boundaryGap : false,
				splitLine:{  
                    show:false  
                },
                min:new Date('17:25'),max:new Date('17:55')
			} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [ {
				name : '最高气温',
				type : 'line',
				data : [ [ new Date('9:05'), 120 ],
						[ new Date('9:10'), 100 ],
						[ new Date('9:15'), 80 ] ],
			} ]
		};

		var getData = function() {

			$.ajax({
				async : false,
				url : chart.url,
				success : function(data, textStatus, jqXHR) {
					
					var json;
					
					var d = chart.url.length-"json".length;
				    if (d>=0&&chart.url.lastIndexOf("json")==d) {
				    	json = data;
				    } else {			    	
				    	json = JSON.parse(data);
				    }
					
					var Series = [];
					var legends = [];

					option.xAxis[0].min = new Date(json.min);
					option.xAxis[0].max = new Date(json.max);
					option.xAxis[0].splitNumber = json.splitNumber;

					$.each(json.data, function(i, item) {
						Series.push(item);
						legends.push(item.name);
						$.each(item.data, function(j, d) {
							d[0] = new Date(d[0]);
						});
					});
					option.legend.data = legends;
					option.series = Series;

					myChart.setOption(option, true);

				},
				error : function(jqXHR, textStatus, errorMsg) {
					alert(jqXHR.responseText);
				}
			});

			return
		}

		var timeTicket;
		clearInterval(timeTicket);
		timeTicket = setInterval(getData(), 20000);

	});
}

function drawPieChart(chart) {

	require.config({
		paths : {
			echarts : '/UMP/res/echarts-2.2.0/build/dist'
		}
	});

	require([ 'echarts', 'echarts/chart/pie' ], function(ec) {

		var myChart = ec.init(document.getElementById(chart.id));

		option = {
			title : {
				show : false,
				text : '设备类型',
				x : 'center'
			},
			backgroundColor:'white' ,
			tooltip : {
				trigger : 'item',
				formatter : "{a} <br/>{b} : {c} ({d}%)"
			},
			legend : {
				orient : 'vertical',
				x : 'left',
				data : [ '路由器', '交换机', '服务器', '防火墙', '其他' ]
			},
			calculable : true,
			series : [ {
				name : '访问来源',
				type : 'pie',
				radius : '85%',
				center : [ '50%', '48%' ],
				itemStyle : {
					normal : {
						label : {
							show : false
						},
						labelLine : {
							show : false
						}
					}
				},
				data : [ {
					value : 335,
					name : '路由器'
				}, {
					value : 310,
					name : '交换机'
				}, {
					value : 234,
					name : '服务器'
				}, {
					value : 135,
					name : '防火墙'
				}, {
					value : 1548,
					name : '其他'
				} ]
			} ]
		};

		var series = [ {
			'value' : 10,
			'name' : '路由器'
		}, {
			'value' : 4,
			'name' : '交换机'
		}, {
			'value' : 55,
			'name' : '服务器'
		}, {
			'value' : 20,
			'name' : '其他'
		} ];
		var legends = [ '路由器', '交换机', '服务器', '其他' ];

		option.series[0].data = series;
		option.legend.data = legends;
		myChart.setOption(option, true);

		$.ajax({
			async : false,
			url : chart.url,
			success : function(data, textStatus, jqXHR) {
				var series = [];
				var legends = [];
				
				var json;
				
				var url = chart.url;
				
				var d = url.length-"json".length;
			    if (d>=0&&url.lastIndexOf("json")==d) {
			    	json = data;
			    } else {			    	
			    	json = JSON.parse(data);
			    }
				
				$.each(json, function(i, item) {
					series.push(item);
					legends.push(item.name);
				});

				option.series[0].data = series;
				option.legend.data = legends;
				myChart.setOption(option, true);
			},
			error : function(jqXHR, textStatus, errorMsg) {
				alert(jqXHR);
			}
		});

	});
}

function drawRadarChart(chart) {

	require.config({
		paths : {
			echarts : '/UMP/res/echarts-2.2.0/build/dist'
		}
	});

	require([ 'echarts', 'echarts/chart/radar' ], function(ec) {

		var myChart = ec.init(document.getElementById(chart.id));

		option = {
			tooltip : {
				trigger : 'axis'
			},
			backgroundColor:'white',
			legend : {
				orient : 'vertical',
				x : 'left',
				data : [ '192.168.2.200', '10.10.10.2' ]
			},
			calculable : true,
			polar : [ {
				indicator : [ {
					text : '一般',
					max : 20
				}, {
					text : '次要',
					max : 20
				}, {
					text : '主要',
					max : 20
				}, {
					text : '紧急',
					max : 20
				}, {
					text : '严重',
					max : 20
				} ],
				radius : '80%'
			} ],
			series : [ {
				name : '完全实况球员数据',
				type : 'radar',
				itemStyle : {
					normal : {
						areaStyle : {
							type : 'default'
						}
					}
				},
				data : [ {
					value : [ 10, 5, 4, 8, 2 ],
					name : '192.168.2.200'
				}, {
					value : [ 15, 8, 2, 7, 0 ],
					name : '10.10.10.2'
				} ]
			} ]
		};
		myChart.setOption(option, true);

		$.ajax({ 
			async : false, 
			url : chart.url, 
			success : function(data,textStatus, jqXHR) { 
				var series = []; 
				var legends = []; 
				
				var json;
				var url = chart.url;
								
				var d = url.length-"json".length;
			    if (d>=0&&url.lastIndexOf("json")==d) {
			    	json = data;
			    } else {			    	
			    	json = JSON.parse(JSON.parse(data));
			    }			
				
				$.each(json, function(i, item) { 
					series.push(item);
					legends.push(item.name); });
				option.series[0].data = series; 
				option.legend.data = legends;
				myChart.setOption(option, true); 
			}, 
			error : function(jqXHR,textStatus, errorMsg) { 
				alert(jqXHR); 
			} 
		});
		 
		
	});
}

function drawGaugeChart(chart) {

	require.config({
		paths : {
			echarts : 'res/echarts-2.2.0/build/dist'
		}
	});

	require([ 'echarts', 'echarts/chart/gauge' ], function(ec) {

		var myChart = ec.init(document.getElementById(chart.id));

		option = {
			backgroundColor:'white',
			series : [ {
				name : '业务指标',
				type : 'gauge',
				radius : '100%',
				detail : {
					formatter : '{value}%'
				},
				data : [ {
					value : 50,
					name : '使用率'
				}]
			} ]
		};

		var getData = function() {
			$.ajax({
				async : false,
				url : chart.url,
				success : function(data, textStatus, jqXHR) {
					
					var json;
										
					var d = chart.url.length-"json".length;
				    if (d>=0&&chart.url.lastIndexOf("json")==d) {
				    	json = data;
				    } else {			    	
				    	json = JSON.parse(data);
				    }
					
					option.series[0].data = json;
					
					myChart.setOption(option, true);
				},
				error : function(jqXHR, textStatus, errorMsg) {
					alert(jqXHR.responseText);
				}
			});
			return;
		}

		var timeTicket;
		clearInterval(timeTicket);
		timeTicket = setInterval(getData(), 20000);

	});
}

function drawBarChart(chart) {
	require.config({
        paths: {
            echarts: 'res/echarts-2.2.0/build/dist'
        }
    });
    require(
            [
                'echarts',
                'echarts/chart/pie',//,  按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/bar'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById(chart.id));
                option = {
                    tooltip : {
                        show: true,
                        trigger: 'item'
                    },
                    backgroundColor:'white',
                    calculable : true,
                    legend: {
                        data:['5级-紧急','6级-严重']
                    },
                    grid:{
                        x:40,
                        y:30,
                        x2:30,
                        y2:40
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ['10.1.1.210','101.5.4.3','101.5.5.20','10.3.7.8','10.5.6.3']
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            name:'5级-紧急',
                            type:'bar',
                            barWidth: 20,
                            itemStyle: {        // 系列级个性化样式，纵向渐变填充
                                normal: {
                                    borderRadius: 5,
                                    color : (function (){
                                        var zrColor = require('zrender/tool/color');
                                        return zrColor.getLinearGradient(
                                                0, 400, 0, 300,
                                                [[0, 'orange'],[1, 'orange']]
                                        )
                                    })(),
                                    label : {
                                        show : true,
                                        textStyle : {
                                            fontSize : '10',
                                            fontFamily : '微软雅黑',
                                            fontWeight : 'bold'
                                        }
                                    }
                                }
                            },
                            data:[5, 8,6, 7, 5, 10, 12]
                        },
                        {
                            name:'6级-严重',
                            type:'bar',
                            barWidth: 20,                   // 系列级个性化，柱形宽度
                            itemStyle: {
                                normal: {                   // 系列级个性化，横向渐变填充
                                    borderRadius: 5,
                                    color : (function (){
                                        var zrColor = require('zrender/tool/color');
                                        return zrColor.getLinearGradient(
                                                0, 0, 1000, 0,
                                                [[0, 'red'],[1, 'red']]
                                        )
                                    })(),
                                    label : {
                                        show : true,
                                        textStyle : {
                                            fontSize : '10',
                                            fontFamily : '微软雅黑',
                                            fontWeight : 'bold'
                                        }
                                    }
                                }
                            },
                            data:[15, 10,11,9, 10, 3, 1]
                        }
                    ]
                };
                myChart.setOption(option, true);
            }

    );
}

function drawLinePieChart(chart) {
	require.config({
        paths: {
            echarts: 'res/echarts-2.2.0/build/dist'
        }
    });
    require(
            [
                'echarts',
                'echarts/chart/pie',//,  按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/line'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById(chart.id));
                // original
                var data = [30, 20, 54, 21, 90, 30, 10];

                var gap = 0;
                var total = 0;
                var maxIndex;
                var dataArray = (function(){
                    var max = Math.max.apply(Math, data);
                    var min = Math.min.apply(Math, data);
                    gap = Math.round((max - min));
                    var nd = [{value:data[0] + gap,symbol:'none'}];
                    for (var i = 0, l = data.length; i < l; i++) {
                        if (data[i] == max) {
                            maxIndex = i;
                        }
                        total += data[i];
                        nd.push(data[i] + gap);
                    }
                    nd.push({value:data[data.length - 1] + gap,symbol:'none'});
                    return nd;
                })();

                option = {
                    backgroundColor:'white',
                    legend: {
                        data:['销量', '占比'],
                        x: 'left',
                        orient: 'vertical',
                        selectedMode: false
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: function(params){
                            if (params.seriesName == '占比') {
                                return '总量 : ' + total + '<br/>'
                                        + params.name + ' : ' + params.value + '<br/>'
                                        + '占比 : ' +  params.percent + '%';
                            }
                            else if (params.name != '占位'){
                                update(params);
                                return params.seriesName + '<br/>'
                                        + params.name + ' : ' + params.value;
                            }
                        },
                        axisPointer: {
                            type: 'none'
                        }
                    },
                    grid:{
                        backgroundColor:'#ccc',
                        borderWidth:0
                    },
                    xAxis : [
                        {
                            type : 'category',
                            boundaryGap : false,
                            show : false,
                            data : ['占位','周一','周二','周三','周四','周五','周六','周日','占位']
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value',
                            boundaryGap:[0,0.5],
                            show : false
                        }
                    ],
                    animation: false,
                    series : [
                        {
                            name:'销量',
                            type:'line',
                            symbol: 'emptyCircle',
                            symbolSize: 3,
                            showAllSymbol:true,
                            smooth:true,
                            itemStyle: {normal: {areaStyle: {type: 'default'}}},
                            data: dataArray
                        },
                        {
                            name:'遮罩',
                            type:'pie',
                            clickable:false,
                            tooltip: {show:false},
                            radius : [50, 90],
                            itemStyle: {
                                normal: {color: '#fff',label:{show:false},labelLine:{show:false}},
                                emphasis: {color:'rgba(0,0,0,0)'}
                            },
                            data:[
                                {value:100, name:'直接访问'}
                            ]
                        },
                        {
                            name:'占比',
                            type:'pie',
                            clickable: false,
                            clockWise: true,
                            radius : [55, 63],
                            data:[
                                {
                                    itemStyle: {normal: {
                                        label:{
                                            position:'inside',
                                            formatter: '\n{b} : {c}\n\n( {d}% )',
                                            textStyle: {
                                                fontSize: 15,
                                                baseline: 'top',
                                                color: '#1e90ff'
                                            }
                                        },
                                        labelLine:{show:false}
                                    }}
                                },
                                {
                                    name:'其他',
                                    tooltip: {show:false},
                                    itemStyle: {normal: {color: '#fff',label:{show:false},labelLine:{show:false}}}
                                }
                            ]
                        }
                    ]
                };
                function changePieSeries(params) {
                    var curData = params.value - gap;
                    option.series[2].startAngle = -90 + (curData / total * 360) / 2;
                    option.series[2].data[0].name = params.name;
                    option.series[2].data[0].value = curData;
                    option.series[2].data[1].value = total - curData;

                    for (var i = 1, l = option.series[0].data.length - 1; i < l; i++) {
                        if (option.series[0].data[i].symbol) {
                            option.series[0].data[i].symbol = 'emptyCircle';
                            option.series[0].data[i].symbolSize = 6;
                        }
                    }
                    option.series[0].data[params.dataIndex] = {
                        name : params.name,
                        value : params.value,
                        symbol: 'emptyDiamond',
                        symbolSize: 10
                    }
                }
                function update(params){
                    changePieSeries(params);
                    option.animation = true;
                    myChart.setOption(option);
                }
                changePieSeries({
                    name : option.xAxis[0].data[maxIndex + 1],
                    value : option.series[0].data[maxIndex + 1],
                    dataIndex: maxIndex + 1
                });
                myChart.setOption(option, true);
            }

    );
}