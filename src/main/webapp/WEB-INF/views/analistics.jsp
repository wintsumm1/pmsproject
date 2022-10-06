<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<%@ include file="side_bar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="activity"></i></div>
                                            <spring:message code="analytics"/>
                                        </h1>
                                        <div class="page-header-subtitle">menu summary</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <div class="row">
                            <div class="col-xxl-4 col-xl-6 mb-4">
								<div class="card card-header-actions h-100">
									<div class="card-header">Clicked Menu</div>
									<div class="card-body">
										<div class="chart-pie mb-4">
											<canvas id="myChart" width="100%" height="50"></canvas>
										</div>
										<script type="text/javascript">
										
										$(document).ready(function(){
											$.ajax({
									    		type:"post",
									    		url: "getClickMenu.do",
									    		dataType: "json",
									    		success : function(data){
									    			var menuName = []
									    			var menuCnt = []
									    			var colors = []
									    			for (var i = 0; i<data.clickMenuData.length;i++) {
									    				menuName.push(data.clickMenuData[i].menuName.toString())
									    				menuCnt.push(data.clickMenuData[i].cnt.toString())
									    				colors.push(data.clickMenuData[i].backgroundColor)
									    			}
									    			console.log(colors)
									    			const ctx = document.getElementById('myChart')
													const myChart = new Chart(ctx, {
														type: 'doughnut',
										    			data: {
														    labels: menuName,
															datasets: [{
															    data: menuCnt,
															    backgroundColor: colors,
															    borderColor: colors,
															    hoverBorderColor: "rgba(234, 236, 244, 1)"
															}]
												    	},
												    	options: {
												            maintainAspectRatio: false,
												            tooltips: {
												                backgroundColor: "rgb(255,255,255)",
												                bodyFontColor: "#858796",
												                borderColor: "#dddfeb",
												                borderWidth: 1,
												                xPadding: 15,
												                yPadding: 15,
												                displayColors: false,
												                caretPadding: 10
												            },
												            legend: {
												                display: false
												            },
												            cutoutPercentage: 80
												        }
												    	
													});
									    		},
									    		error : function(err) {
									    			alert("클릭 차트 에러")
									    			console.log(err)
									    		}
									    	})
											
											
										})
										</script>
									</div>
								</div>
							</div>
							<div class="col-xxl-4 col-xl-6 mb-4">
								<div class="card card-header-actions h-100">
									<div class="card-header">Duration Time</div>
									<div class="card-body">
										<div class="chart-pie mb-4">
											<canvas id="myChart1" width="100%" height="50"></canvas>
											<script type="text/javascript">
											$(document).ready(function(){
												$.ajax({
										    		type:"post",
										    		url: "getClickMenu.do",
										    		dataType: "json",
										    		success : function(data){
										    			var menuName = []
										    			var menuDuration = []
										    			var colors = []
										    			for (var i = 0; i<data.clickMenuData.length;i++) {
										    				menuName.push(data.clickMenuData[i].menuName.toString())
										    				menuDuration.push(data.clickMenuData[i].duration)
										    				colors.push(data.clickMenuData[i].backgroundColor)
										    			}
										    			const ctx = document.getElementById('myChart1')
														const myChart = new Chart(ctx, {
															type: 'doughnut',
											    			data: {
											    				labels: menuName,
																datasets: [{
																    data: menuDuration,
																    backgroundColor: colors,
																    borderColor: colors,
																    hoverBorderColor: "rgba(234, 236, 244, 1)"
																}]
													    	},
													    	options: {
													            maintainAspectRatio: false,
													            tooltips: {
													                backgroundColor: "rgb(255,255,255)",
													                bodyFontColor: "#858796",
													                borderColor: "#dddfeb",
													                borderWidth: 1,
													                xPadding: 15,
													                yPadding: 15,
													                displayColors: false,
													                caretPadding: 10
													            },
													            legend: {
													                display: false
													            },
													            cutoutPercentage: 80
													        }
													    	
														});
										    		},
										    		error : function(err) {
										    			alert("클릭 차트 에러")
										    			console.log(err)
										    		}
										    	})
												
												
											})
										</script>
										
										</div>
								</div>
							</div>
						</div>
						
						<div class="col-xxl-4 col-xl-6 mb-4">
							<div class="card card-header-actions h-100">
								<div class="card-header">Total Logined</div>
								<div class="card-body d-flex justify-content-center align-items-center">
									<h1 id="TotalLoginedCount" class="display-1">0</h1>
									<script type="text/javascript">
									$(document).ready(function(){
										$.ajax({
								    		type:"post",
								    		url: "getCountUser.do",
								    		dataType: "json",
								    		success : function(data){
								    			$("#TotalLoginedCount").text(data.countUser)
								    		},
								    		error : function(err) {
								    			alert("로그인 수 에러")
								    			console.log(err)
								    		}
								    	})
										
										
									})
									</script>
								</div>
							</div>
						</div>
                        <!-- Example Charts for Dashboard Demo-->
                        <div class="row">
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Day Clicked Menu
                                        <%--
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="areaChartDropdownExample" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="areaChartDropdownExample">
                                                <a class="dropdown-item" href="#!">Last 12 Months</a>
                                                <a class="dropdown-item" href="#!">Last 30 Days</a>
                                                <a class="dropdown-item" href="#!">Last 7 Days</a>
                                                <a class="dropdown-item" href="#!">This Month</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#!">Custom Range</a>
                                            </div>
                                        </div>
                                        --%>
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-bar"><canvas id="dayClickBarChart" width="100%" height="30"></canvas></div>
                                        <script type="text/javascript">
                                         $.ajax({
								    		type:"post",
								    		url: "${path}/getDayData.do",
								    		dataType: "json",	
								    		success : function(data){
								    			var menuName = []
								    			var dayData = []
								    			data.dayData.forEach((e) => menuName.push(e.today))
								    			data.dayData.forEach((e) => dayData.push(e.cnt))
								    			
								    			console.log("today:"+menuName)
								    			
								    			function number_format(number, decimals, dec_point, thousands_sep) {
								    			    // *     example: number_format(1234.56, 2, ',', ' ');
								    			    // *     return: '1 234,56'
								    			    number = (number + "").replace(",", "").replace(" ", "");
								    			    var n = !isFinite(+number) ? 0 : +number,
								    			        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
								    			        sep = typeof thousands_sep === "undefined" ? "," : thousands_sep,
								    			        dec = typeof dec_point === "undefined" ? "." : dec_point,
								    			        s = "",
								    			        toFixedFix = function(n, prec) {
								    			            var k = Math.pow(10, prec);
								    			            return "" + Math.round(n * k) / k;
								    			        };
								    			    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
								    			    s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
								    			    if (s[0].length > 3) {
								    			        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
								    			    }
								    			    if ((s[1] || "").length < prec) {
								    			        s[1] = s[1] || "";
								    			        s[1] += new Array(prec - s[1].length + 1).join("0");
								    			    }
								    			    return s.join(dec);
								    			}

								    			// Bar Chart Example
								    			var ctx = document.getElementById("dayClickBarChart");
								    			var dayClickBarChart = new Chart(ctx, {
								    			    type: "bar",
								    			    data: {
								    			        labels: menuName,
								    			        datasets: [{
								    			            label: "Revenue",
								    			            backgroundColor: "rgba(0, 97, 242, 1)",
								    			            hoverBackgroundColor: "rgba(0, 97, 242, 0.9)",
								    			            borderColor: "#4e73df",
								    			            data: dayData,
								    			            maxBarThickness: 25
								    			        }]
								    			    },
								    			    options: {
								    			        maintainAspectRatio: false,
								    			        layout: {
								    			            padding: {
								    			                left: 10,
								    			                right: 25,
								    			                top: 25,
								    			                bottom: 0
								    			            }
								    			        },
								    			        scales: {
								    			            xAxes: [{
								    			                time: {
								    			                    unit: "day"
								    			                },
								    			                gridLines: {
								    			                    display: false,
								    			                    drawBorder: false
								    			                },
								    			                ticks: {
								    			                    maxTicksLimit: 12
								    			                }
								    			            }],
								    			            yAxes: [{
								    			                ticks: {
								    			                    min: 0,
								    			                    max: 1000,
								    			                    maxTicksLimit: 20,
								    			                    padding: 10,
								    			                    // Include a dollar sign in the ticks
								    			                    callback: function(value, index, values) {
								    			                        return number_format(value);
								    			                    }
								    			                },
								    			                gridLines: {
								    			                    color: "rgb(234, 236, 244)",
								    			                    zeroLineColor: "rgb(234, 236, 244)",
								    			                    drawBorder: false,
								    			                    borderDash: [2],
								    			                    zeroLineBorderDash: [2]
								    			                }
								    			            }]
								    			        },
								    			        legend: {
								    			            display: false
								    			        },
								    			        tooltips: {
								    			            titleMarginBottom: 10,
								    			            titleFontColor: "#6e707e",
								    			            titleFontSize: 14,
								    			            backgroundColor: "rgb(255,255,255)",
								    			            bodyFontColor: "#858796",
								    			            borderColor: "#dddfeb",
								    			            borderWidth: 1,
								    			            xPadding: 15,
								    			            yPadding: 15,
								    			            displayColors: false,
								    			            caretPadding: 10,
								    			            callbacks: {
								    			                label: function(tooltipItem, chart) {
								    			                    var datasetLabel =
								    			                        chart.datasets[tooltipItem.datasetIndex].label || "";
								    			                    return datasetLabel + " : " + number_format(tooltipItem.yLabel);
								    			                }
								    			            }
								    			        }
								    			    }
								    			});
								    		}
								    		})
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Day Duration Time
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="areaChartDropdownExample" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="areaChartDropdownExample">
                                                <a class="dropdown-item" href="#!">Last 12 Months</a>
                                                <a class="dropdown-item" href="#!">Last 30 Days</a>
                                                <a class="dropdown-item" href="#!">Last 7 Days</a>
                                                <a class="dropdown-item" href="#!">This Month</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#!">Custom Range</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-bar"><canvas id="dayDurationBarChart" width="100%" height="30"></canvas></div>
                                        <script type="text/javascript">
                                        $.ajax({
								    		type:"post",
								    		url: "${path}/getDayData.do",
								    		dataType: "json",	
								    		success : function(data){
								    			var menuName = []
								    			var dayData = []
								    			console.log(data)
								    			console.log(data.dayData)
								    			data.dayData.forEach((e) => menuName.push(e.today))
								    			data.dayData.forEach((e) => dayData.push(e.duration))
								    			
								    			console.log("today:"+menuName)
								    			
								    			function number_format(number, decimals, dec_point, thousands_sep) {
								    			    // *     example: number_format(1234.56, 2, ',', ' ');
								    			    // *     return: '1 234,56'
								    			    number = (number + "").replace(",", "").replace(" ", "");
								    			    var n = !isFinite(+number) ? 0 : +number,
								    			        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
								    			        sep = typeof thousands_sep === "undefined" ? "," : thousands_sep,
								    			        dec = typeof dec_point === "undefined" ? "." : dec_point,
								    			        s = "",
								    			        toFixedFix = function(n, prec) {
								    			            var k = Math.pow(10, prec);
								    			            return "" + Math.round(n * k) / k;
								    			        };
								    			    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
								    			    s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
								    			    if (s[0].length > 3) {
								    			        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
								    			    }
								    			    if ((s[1] || "").length < prec) {
								    			        s[1] = s[1] || "";
								    			        s[1] += new Array(prec - s[1].length + 1).join("0");
								    			    }
								    			    return s.join(dec);
								    			}

								    			// Bar Chart Example
								    			var ctx = document.getElementById("dayDurationBarChart");
								    			var dayDurationBarChart = new Chart(ctx, {
								    			    type: "bar",
								    			    data: {
								    			        labels: menuName,
								    			        datasets: [{
								    			            label: "Duration Time",
								    			            backgroundColor: "rgba(0, 97, 242, 1)",
								    			            hoverBackgroundColor: "rgba(0, 97, 242, 0.9)",
								    			            borderColor: "#4e73df",
								    			            data: dayData,
								    			            maxBarThickness: 25
								    			        }]
								    			    },
								    			    options: {
								    			        maintainAspectRatio: false,
								    			        layout: {
								    			            padding: {
								    			                left: 10,
								    			                right: 25,
								    			                top: 25,
								    			                bottom: 0
								    			            }
								    			        },
								    			        scales: {
								    			            xAxes: [{
								    			                time: {
								    			                    unit: "day"
								    			                },
								    			                gridLines: {
								    			                    display: false,
								    			                    drawBorder: false
								    			                },
								    			                ticks: {
								    			                    maxTicksLimit: 12
								    			                }
								    			            }],
								    			            yAxes: [{
								    			                ticks: {
								    			                    min: 0,
								    			                    max: 10000,
								    			                    maxTicksLimit: 20,
								    			                    padding: 10,
								    			                    // Include a dollar sign in the ticks
								    			                    callback: function(value, index, values) {
								    			                        return number_format(value);
								    			                    }
								    			                },
								    			                gridLines: {
								    			                    color: "rgb(234, 236, 244)",
								    			                    zeroLineColor: "rgb(234, 236, 244)",
								    			                    drawBorder: false,
								    			                    borderDash: [2],
								    			                    zeroLineBorderDash: [2]
								    			                }
								    			            }]
								    			        },
								    			        legend: {
								    			            display: false
								    			        },
								    			        tooltips: {
								    			            titleMarginBottom: 10,
								    			            titleFontColor: "#6e707e",
								    			            titleFontSize: 14,
								    			            backgroundColor: "rgb(255,255,255)",
								    			            bodyFontColor: "#858796",
								    			            borderColor: "#dddfeb",
								    			            borderWidth: 1,
								    			            xPadding: 15,
								    			            yPadding: 15,
								    			            displayColors: false,
								    			            caretPadding: 10,
								    			            callbacks: {
								    			                label: function(tooltipItem, chart) {
								    			                    var datasetLabel =
								    			                        chart.datasets[tooltipItem.datasetIndex].label || "";
								    			                    return datasetLabel + " : " + number_format(tooltipItem.yLabel);
								    			                }
								    			            }
								    			        }
								    			    }
								    			});
								    		}
								    		})
                                        </script>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>
                </main>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; ISAAC PMS 2022</div>
                            <div class="col-md-6 text-md-end small">
                                <a href="#!">Privacy Policy</a>
                                &middot;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-area-demo.js"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-pie-demo.js"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <%-- jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
    </body>
</html>
