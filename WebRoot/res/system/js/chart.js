function drawBarChart(chart) {

	var myChart = new FusionCharts({
		type : 'realtimecolumn',
		id : chart.id,
		renderAt : "c_" + chart.id,
		"width" : "100%",
		"height" : "100%",
		dataFormat : 'json',
		dataSource : {
			chart : {
				// "caption": "Real-time stock price monitor",
				"paletteColors" : "#FFB90F",
				"paletteThemeColor" : "#eb0909",
				"bgColor" : "#005189",
				"bgAlpha" : "100",
				"showBorder" : "0",
				"showCanvasBorder" : "0",
				"usePlotGradientColor" : "0",
				"plotBorderAlpha" : "10",
				"placeValuesInside" : "1",
				"valueFontColor" : "#4EEE94",
				"showAxisLines" : "10",
				"canvasBgColor" : "#005189",
				"canvasBgAlpha" : "100",
				"axisLineAlpha" : "100",
				"xAxisLineColor" : "#0b91ed",
				"yAxisLineColor" : "#0b91ed",
				"divLineAlpha" : "100",
				"divLineColor" : "#FFB90F",
				"alignCaptionWithCanvas" : "0",
				"showAlternateVGridColor" : "1",
				"captionFontSize" : "14",
				"subcaptionFontSize" : "14",
				"subcaptionFontBold" : "0",
				"toolTipColor" : "#ffffff",
				"toolTipBorderThickness" : "0",
				"toolTipBgColor" : "#4EEE94",
				"toolTipBgAlpha" : "0",
				"toolTipBorderRadius" : "2",
				"toolTipPadding" : "5",
				"showBorder" : "0",
				"chartTopMargin" : "10",
				"chartBottomMargin" : "-10",
				"slantLabels" : "0",
				"showAlternateHGridColor" : "0",
				"alpha" : "10",
				"plotSpacePercent" : "30"
			},
			"categories" : [ {
				"category" : [ {
					"label" : "12:50"
				} ]
			} ],
			"dataset" : [ {
				"seriesname" : "",
				"alpha" : "100",
				"data" : [ {
					"value" : "3"
				} ]
			} ]
		}
	});

	return myChart;

}

function drawLineChart(chart) {

	var myChart = new FusionCharts({
		type : "realtimeline",
		id : chart.id,
		renderAt : "c_" + chart.id,
		width : "100%",
		height : "100%",
		dataFormat : 'json',
		dataSource : {
			chart : {
				"caption": chart.caption,
				"canvasBgColor" : "#ffffff",
				"bgColor" : "#ffffff",
				"showBorder" : "0",
				"showAxisLines" : "0",
				"showCanvasBorder" : "0",
				"slantLabels":"1", 
		        "refreshinterval": "60",
		        //"clearChartInterval":"2",
		        "showRealTimeValue":"1",
		        "numdisplaysets": "6",
		        //"labeldisplay": "rotate",
		        "showValues": "0",
		        "showRealTimeValue": "0",
		        "theme": "fint"
			},
			"categories" : [ {
				"category" : chart.category
			} ],
			"dataset" : chart.dataset
		},
		"events": {
	           "initialized": function (e) {
	        	   
	        	   var curTime = 0;
	        	   
	               function addLeadingZero(num){
	                   return (num <= 9)? ("0"+num) : num;
	               }
	               function updateData() {
                    
	                    var chartRef = FusionCharts(chart.id);
	                    var strData = "";
	                    var value = "&value=";
	                    
	                    $.ajax({
	            			async : false,
	            			url : chart.url,
	            			success : function(data, textStatus, jqXHR) {
	            				
	            				
	            				var json = JSON.parse(data);
	            				
	            				$.each(chart.name,function(i,item) {
	            					
	            					$.each(json,function(j,o) {
		            					
	            						curTime = o.time;
	            						if (o.name == item.name) {		            						
		            						value = value + parseFloat(o.value).toFixed(2) + "|";
		            					}
		            					
		            				});
	            					
	            				});
	            				
	            				/*$.each(json, function(i, item) {
	            					
	            					curTime = item.time;
	            					
	            					for (var j=0;j<chart.name.length;j++) {
	            						if (item.name == chart.name[j].name) {
		            						
		            						value = value + parseFloat(item.value).toFixed(2) + "|";
		            					}
	            						
	            					}
	            					 
	            										
	            				});*/
	            				
	            				//alert(chart.preTime + "," + data + "," + value);
	            				
	            			},
	            			error : function(jqXHR, textStatus, errorMsg) {
	            				alert(errorMsg);
	            			}
	                    });
	                    
	                    var label = "&label=" + timestampToTime(curTime);
	                    
	                    if (chart.preTime == curTime) {
	                    	strData = "";
	                    } else {
	                    	chart.preTime = curTime;
	                    	strData = label;
		                    
		                    if (value.substr(value.length-1,1) == "|") {
		                    	strData = strData + value.substr(0,value.length - 1);
		                    } else {
		                    	strData = strData + value;
		                    }
		                    chartRef.feedData(strData);
	                    }
	                    
	                }

	               var myVar = setInterval(function () {
	                   updateData();
	               }, 60000);
	           }
	       }
		
	});
	
	return myChart;

}

function drawCylinderChart(chart) {
	var myChart = new FusionCharts({
		type : "cylinder",
		id : chart.id,
		renderAt : "c_" + chart.id,
		width : "100%",
		height : "100%",
		dataFormat : 'json',
		dataSource : {
			"chart" : {
				// "caption": "Fuel Meter",
				// "subcaption": "Diesel level in generator Bakersfield
				// Central",
				// "subcaptionFontBold": "0",
				"paletteThemeColor" : "#eb0909",
				"showBorder" : "0",
				"lowerLimit" : "0",
				"upperLimit" : "120",
				"lowerLimitDisplay" : "Empty",
				"upperLimitDisplay" : "Full",
				"numberSuffix" : " ltrs",
				"showValue" : "0",
				"showhovereffect" : "1",
				"bgCOlor" : "#005189",
				"bgAlpha" : "100",
				"borderAlpha" : "0",
				"cylFillColor" : "#008ee4"
			},
			"value" : "110"
		}
	});

	return myChart;

}

function drawThermometerChart(chart) {

	var myChart = new FusionCharts({
		type : "thermometer",
		id : chart.id,
		renderAt : "c_" + chart.id,
		width : "100%",
		height : "100%",
		dataFormat : 'json',
		dataSource : {
			"chart" : {
				// "caption": "Central cold storage",
				"paletteThemeColor" : "#eb0909",
				"showBorder" : "0",
				"lowerLimit" : "-20",
				"upperLimit" : "20",
				"numberSuffix" : "°C",
				"bgColor" : "#005189",
				"showBorder" : "0",
				"bgAlpha" : "100",
				"thmFillColor" : "#ebcf09",
				"minorTMColor" : "#2ceb09",
				"majorTMNumber" : "#ec350a"
			},
			"value" : "-10"
		}
	});

	return myChart;

}

function drawAngulargaugeChart(chart) {

	var myChart = new FusionCharts({
		type : "angulargauge",
		id : chart.id,
		renderAt : "c_" + chart.id,
		width : "100%",
		height : "100%",
		dataFormat : 'json',
		dataSource : {
			
			"chart": {
	            "caption": chart.caption,
	            //"subcaption": "Last week",
				"bgColor" : "#ffffff",
				"bgAlpha" : "100",
				"showBorder" : "0",
	            "lowerLimit": "0",
	            "upperLimit": "100",
	            "lowerLimitDisplay": "0",
	            "upperLimitDisplay": "100%",
	            "showValue": "1",
	            "valueBelowPivot": "1",
	            "theme": "fint"
	        },
	        "colorRange": {
	            "color": [{
	                "minValue": "0",
	                "maxValue": "60",
	                "code": "#6baa01"
	            }, {
	                "minValue": "60",
	                "maxValue": "80",
	                "code": "#f8bd19"
	            }, {
	                "minValue": "80",
	                "maxValue": "100",
	                "code": "#e44a00"
	            }]
	        },
	        "dials": {
	            "dial": [{
	                "value": chart.value
	            }]
	        }
	    }
			
	});
	
		
	return myChart;

}

function drawLedChart(chart) {

	var myChart = new FusionCharts({
		type : "hled",
		id : chart.id,
		renderAt : "c_" + chart.id,
		width : "100%",
		height : "100%",
		dataFormat : 'json',
		dataSource : {
			"chart": {
				/*"caption": chart.caption,*/
				/*"captionAlignment":"left",
				"captionOnTop":"0",
				"captionHorizontalPadding": "200",*/
	            "bgColor" : "#ffffff",
				"bgAlpha" : "100",
				"showBorder" : "0",
	            "lowerLimit": "0",
	            "upperLimit": "15",
	            "lowerLimitDisplay": "0",
	            "upperLimitDisplay": "15G",
	            "numberSuffix": "K",
	            /*"numberSuffix": "%",*/
	           /* "valueFontSize": "24",*/
	            /*"showhovereffect": "1",*/
	            "showhovereffect": "0",
	            "showValue": "0",
	            "origW": "400",
	            "origH": "150",
	            "ledSize": "5",
	            "ledGap": "0",
	            "showTickMarks":"0",
	            "showTickValues":"1", 
	            /*"manageResize": "1",*/
	            "theme": "fint"
	        },
	        // All annotations are grouped under this element
	        /*"annotations": {
	            "showbelow": "1",
	            "groups": [{
	                // Each group needs a unique ID
	                "id": "indicator",
	                "items": [

	                    {
	                        "id": "bgRectAngle",
	                        // Polygon item
	                        "type": "rectangle",
	                        "alpha": "90",
	                        "radius": "1",
	                        "fillColor": "#6baa01",
	                        "x": "$gaugeCenterX - 0",
	                        "tox": "$gaugeCenterX + 20",
	                        "y": "$gaugeEndY + 25",
	                        "toy": "$gaugeEndY + 75"
	                    }
	                ]
	            }]

	        },*/
	        "colorRange": {
	            "color": [{
	                "minValue": "0",
	                "maxValue": "60",
	                "code": "#6baa01"
	            }, {
	                "minValue": "60",
	                "maxValue": "90",
	                "code": "#f8bd19"
	            }, {
	                "minValue": "90",
	                "maxValue": "100",
	                "code": "#e44a00"
	            }]
	        },
	        "value": chart.value
	    },
	    "events": {
	        "drawComplete": function(evt, arg) {
	            var i,
	                // Annotation
	                annotations = evt.sender.annotations,
	                // Value
	                val = evt.sender.getData(),
	                // Color Range Array
	                crArr = evt.sender.args.dataSource.colorRange.color;

	            for (i = crArr.length - 1; i >= 0; i--) {
	                // When value falls within the color range
	                if (val >= crArr[i].minValue && val <= crArr[i].maxValue) {
	                    annotations.update('bgRectAngle', {
	                        "fillColor": crArr[i].code
	                    });
	                }
	            }

	        }
	    }
	});
	
	

	return myChart;

}

function drawHbulletChart(chart) {

	var myChart = new FusionCharts({
		type : "hbullet",
		id : chart.id,
		renderAt : "c_" + chart.id,
		width : "100%",
		height : "100%",
		dataFormat : 'json',
		dataSource : {
			"chart": {
		        "lowerLimit": "0",
		        "upperLimit": "100",
		        "caption": chart.caption,
		       /* "subcaption": "Actual vs Target<br>Bakersfield Central",*/
		        /*"numberPrefix": "$",*/
		        "numberSuffix": "K",
		        "plotFillColor": "#0075c2",
		        "targetColor": "#8e0000",
		        "showHoverEffect": "1",
		        "showBorder": "0",
		        "bgColor": "#ffffff",
		        "showShadow": "0",
		        "colorRangeFillMix": "{light+0}",
		        "valuePadding": "7"
		    },
		    "colorRange": {
		        "color": [
		            {
		                "minValue": "0",
		                "maxValue": "50",
		                "code": "#e44a00",
		                "alpha": "70"
		            },
		            {
		                "minValue": "50",
		                "maxValue": "75",
		                "code": "#f2c500",
		                "alpha": "70"
		            },
		            {
		                "minValue": "75",
		                "maxValue": "120",
		                "code": "#1aaf5d",
		                "alpha": "70"
		            }
		        ]
		    },
		    "value": "82",
		    "target": "90"
	    }
	});
	
	

	return myChart;

}


function drawMapChart(chart) {

	var myChart = new FusionCharts({
		id : chart.id,
		type : 'maps/world',
		renderAt : "c_" + chart.id,
		width : '100%',
		height : '100%',
		dataFormat : 'json',
		dataSource : {
			"chart" : {
				"bgColor" : "#005189",
				"bgAlpha" : "100",
				"caption" : "Global Population",
				"theme" : "fint",
				"formatNumberScale" : "0",
				"numberSuffix" : "M"
			},
			"colorrange" : {
				"color" : [ {
					"minvalue" : "0",
					"maxvalue" : "100",
					"code" : "#E0F0E0",
					"displayValue" : "Below 100M"
				}, {
					"minvalue" : "100",
					"maxvalue" : "500",
					"code" : "#D0DFA3",
					"displayValue" : "100-500M"
				}, {
					"minvalue" : "500",
					"maxvalue" : "1000",
					"code" : "#B0BF92",
					"displayValue" : "500-1000M"
				}, {
					"minvalue" : "1000",
					"maxvalue" : "5000",
					"code" : "#91AF64",
					"displayValue" : "Above 1B"
				} ]
			},
			"data" : [ {
				"id" : "NA",
				"value" : "515"
			}, {
				"id" : "SA",
				"value" : "373"
			}, {
				"id" : "AS",
				"value" : "3875"
			}, {
				"id" : "EU",
				"value" : "727"
			}, {
				"id" : "AF",
				"value" : "885"
			}, {
				"id" : "AU",
				"value" : "32"
			} ]
		}
	});

	return myChart;

}