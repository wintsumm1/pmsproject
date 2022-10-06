<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
   <%@include file="side_bar.jsp" %>
            <div id="layoutSidenav_content">
            	<form id="goGantt" method="post" action="${path}/gantt.do">
            	<input type="hidden" name="id">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="list"></i></div>
                                            Analistics
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4 row">
                            	<!-- Pie chart with legend example-->
                                <div class="card col-sm">
                                    <div class="card-header">Clicked Menu</div>
                                    	<div class="card-body">
                                        <div class="chart-pie mb-4">
                                        <canvas id="myChart" width="100%" height="50%"></canvas>
										<script type="text/javascript">
										$(document).ready(function(){
											$.ajax({
									    		type:"post",
									    		url: "getClickMenu.do",
									    		dataType: "json",
									    		success : function(data){
									    			console.log(data)
									    			console.log(data.clickMenuData)
									    			var menuName = []
									    			var menuCnt = []
									    			for (var i = 0; i<data.clickMenuData.length;i++) {
									    				menuName.push(data.clickMenuData[i].menuName.toString())
									    				menuCnt.push(data.clickMenuData[i].cnt.toString())
									    			}
									    			console.log(menuName)
									    			const ctx = document.getElementById('myChart')
													const myChart = new Chart(ctx, {
														type: 'doughnut',
										    			data: {
															labels: menuName,
															datasets: [{
															    data: menuCnt,
															    backgroundColor: [
															        'rgba(255, 99, 132, 0.2)',
															        'rgba(54, 162, 235, 0.2)',
															        'rgba(255, 206, 86, 0.2)',
															        'rgba(75, 192, 192, 0.2)',
															        'rgba(153, 102, 255, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)'
															    ],
															    borderColor: [
															    	'rgba(255, 99, 132, 0.2)',
															        'rgba(54, 162, 235, 0.2)',
															        'rgba(255, 206, 86, 0.2)',
															        'rgba(75, 192, 192, 0.2)',
															        'rgba(153, 102, 255, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)'
															    ],
															    borderWidth: 1
															}]
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
                                        
                                       	<div class="card-footer">
                                       	<div class="list-group list-group-flush">
                                            <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                <div class="me-3">
                                                    <i class="fas fa-circle fa-sm me-1 text-blue"></i>
                                                    Direct
                                                </div>
                                                <div class="fw-500 text-dark">55%</div>
                                            </div>
                                            <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                <div class="me-3">
                                                    <i class="fas fa-circle fa-sm me-1 text-purple"></i>
                                                    Social
                                                </div>
                                                <div class="fw-500 text-dark">15%</div>
                                            </div>
                                            <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                <div class="me-3">
                                                    <i class="fas fa-circle fa-sm me-1 text-green"></i>
                                                    Referral
                                                </div>
                                                <div class="fw-500 text-dark">30%</div>
                                            </div>
                                        </div>
                                        </div>
                                </div>
                                
                                <div class="card col-sm">
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
									    			console.log(data)
									    			console.log(data.clickMenuData)
									    			var menuName = []
									    			var menuCnt = []
									    			for (var i = 0; i<data.clickMenuData.length;i++) {
									    				menuName.push(data.clickMenuData[i].menuName.toString())
									    				menuCnt.push(data.clickMenuData[i].duration.toString())
									    			}
									    			console.log(menuName)
									    			const ctx = document.getElementById('myChart1')
													const myChart = new Chart(ctx, {
														type: 'doughnut',
										    			data: {
															labels: menuName,
															datasets: [{
															    data: menuCnt,
															    backgroundColor: [
															        'rgba(255, 99, 132, 0.2)',
															        'rgba(54, 162, 235, 0.2)',
															        'rgba(255, 206, 86, 0.2)',
															        'rgba(75, 192, 192, 0.2)',
															        'rgba(153, 102, 255, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)'
															    ],
															    borderColor: [
															    	'rgba(255, 99, 132, 0.2)',
															        'rgba(54, 162, 235, 0.2)',
															        'rgba(255, 206, 86, 0.2)',
															        'rgba(75, 192, 192, 0.2)',
															        'rgba(153, 102, 255, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)',
															        'rgba(255, 159, 64, 0.2)'
															    ],
															    borderWidth: 1
															}]
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
                                        
                                       	<div class="card-footer">
                                       	<div class="list-group list-group-flush">
                                            <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                <div class="me-3">
                                                    <i class="fas fa-circle fa-sm me-1 text-blue"></i>
                                                    Direct
                                                </div>
                                                <div class="fw-500 text-dark">55%</div>
                                            </div>
                                            <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                <div class="me-3">
                                                    <i class="fas fa-circle fa-sm me-1 text-purple"></i>
                                                    Social
                                                </div>
                                                <div class="fw-500 text-dark">15%</div>
                                            </div>
                                            <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                <div class="me-3">
                                                    <i class="fas fa-circle fa-sm me-1 text-green"></i>
                                                    Referral
                                                </div>
                                                <div class="fw-500 text-dark">30%</div>
                                            </div>
                                        </div>
                                        </div>
                                </div>
                    </div>
                </main>
		    	</form>
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
        <%-- jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" crossorigin="anonymous"></script>
        <%-- JQuery --%>
		<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
    </body>
</html>
    