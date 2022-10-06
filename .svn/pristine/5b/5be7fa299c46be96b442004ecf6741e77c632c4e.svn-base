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
                                            <spring:message code="projectdb"/>
                                        </h1>
                                        <div class="page-header-subtitle">project summary</div>
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
									<div class="card-header">전체 프로젝트 현황</div>
									<div class="card-body">
										<div class="chart-pie mb-4">
											<canvas id="myPieChart" width="100%" height="50"></canvas>
										</div>
										<div class="list-group list-group-flush">
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-blue"></i> 요청
												</div>
												<div class="fw-500 text-dark" id="requestNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-cyan"></i> 진행
												</div>
												<div class="fw-500 text-dark" id="proceedNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-green"></i> 완료
												</div>
												<div class="fw-500 text-dark" id="completeNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-yellow"></i> 피드백
												</div>
												<div class="fw-500 text-dark" id="feedbackNum"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xxl-4 col-xl-6 mb-4">
								<div class="card card-header-actions h-100">
									<div class="card-header">리스크 현황
										<a class="btn btn-sm btn-primary-soft text-primary" href="${path}/riskSub.do"><spring:message code="more"/></a>
									</div>
									<div class="card-body">
										<div class="chart-pie mb-4">
											<canvas id="myRiskChart" width="100%" height="50"></canvas>
										</div>
										<div class="list-group list-group-flush">
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-pink"></i> 병가
												</div>
												<div class="fw-500 text-dark" id="sickNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-teal"></i> 휴가
												</div>
												<div class="fw-500 text-dark" id="hugaNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-purple"></i> 개인사유
												</div>
												<div class="fw-500 text-dark" id="personalNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-orange"></i> 기타
												</div>
												<div class="fw-500 text-dark" id="etcNum"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xxl-4 col-xl-6 mb-4">
								<div class="card card-header-actions h-100">
									<div class="card-header">인력 배정 현황</div>
									<div class="card-body">
										<div class="chart-pie mb-4">
											<canvas id="myManpowerChart" width="100%" height="50"></canvas>
										</div>
										<div class="list-group list-group-flush">
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text-pink"></i> 배정
												</div>
												<div class="fw-500 text-dark" id="manpowerNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text" style="color:#e0e0e0;"></i> 배정 안 됨
												</div>
												<div class="fw-500 text-dark" id="noNum"></div>
											</div>
											<div
												class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
												<div class="me-3">
													<i class="fas fa-circle fa-sm me-1 text"></i> 전체 인원
												</div>
												<div class="fw-500 text-dark" id="memberNum"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Example Colored Cards for Dashboard Demo-->
                        <div class="row">
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-primary text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">요청</div>
                                                <div class="text-lg fw-bold">${req}</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="calendar"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <%--<a class="text-white stretched-link" href="${path}/projectList.do">View</a> --%>
                                        <div class="text-white">대분류 프로젝트 중 요청된 건수입니다.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-info text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">진행</div>
                                                <div class="text-lg fw-bold">${proc}</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="dollar-sign"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <%--<a class="text-white stretched-link" href="${path}/projectList.do">View</a> --%>
                                        <div class="text-white">대분류 프로젝트 중 진행중인 건수입니다.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-success text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">완료</div>
                                                <div class="text-lg fw-bold">${comp}</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="check-square"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <%-- <a class="text-white stretched-link" href="${path}/projectList.do">View</a>--%>
                                        <div class="text-white">대분류 프로젝트 중 완료된 건수입니다.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-warning text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">피드백</div>
                                                <div class="text-lg fw-bold">${fdback}</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="message-circle"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <div class="text-white">대분류 프로젝트 중 피드백 건수입니다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example Charts for Dashboard Demo-->
                        <div class="row">
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Earnings Breakdown
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
                                        <div class="chart-area"><canvas id="myAreaChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Monthly Revenue
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
                                        <div class="chart-bar"><canvas id="myBarChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example DataTable for Dashboard Demo-->
                        <div class="card card-header-actions mb-4">
                            <div class="card-header">프로젝트 리스트 (대분류)
                            	<a id="goto_prjlist_menu" class="btn btn-sm btn-primary-soft text-primary" href="${path}/projectList.do">프로젝트 리스트로 이동</a>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>프로젝트명</th>
                                            <th>기간</th>
                                            <th>순위</th>
                                            <th>상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
							    	<c:forEach var="prj" items="${prjlist}">
							    	<tr>
							    		<td>${prj.id}</td>
							    		<td>${prj.text}</td>
							    		<td>${prj.start_date}&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;${prj.end_date}</td>
							    		<td><div class="badge text-white rounded-pill" style="background:${prj.pcolor};">${prj.pname}</div></td>
							    		<td><div class="badge text-white rounded-pill" style="background:${prj.color};">${prj.statusName}</div></td>
							    	</tr>
							    	</c:forEach>
							    	</tbody>
                                </table>
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
		<script src="${path}/a02_com_fun/calDuration.js"></script>
        <script type="text/javascript">
        calDuration(2)
        $(document).ready(function(){
            $.ajax({
            	type: "POST",
            	url: "${path}/prjAjax.do",
            	dataType: "json",
            	success: function(data){
            		console.log("차트 데이터")
            		myPieChart.data.datasets[0].data = [data.request, data.proceed, data.complete, data.feedback];
                    myPieChart.update();
                    console.log(myPieChart.data.datasets[0]);
                    $("#requestNum").text(data.request);
                    $("#proceedNum").text(data.proceed);
                    $("#completeNum").text(data.complete);
                    $("#feedbackNum").text(data.feedback);
                    console.log("리스크 차트 데이터")
                    myRiskChart.data.datasets[0].data = [data.sick, data.huga, data.personal, data.etc];
                    myRiskChart.update();
                    console.log(myRiskChart.data.datasets[0]);
                    $("#sickNum").text(data.sick);
                    $("#hugaNum").text(data.huga);
                    $("#personalNum").text(data.personal);
                    $("#etcNum").text(data.etc);
                    console.log("인력 차트 데이터")
                    myManpowerChart.data.datasets[0].data = [data.manpower, data.memberCnt-data.manpower];
                    myManpowerChart.update();
                    console.log(myManpowerChart.data.datasets[0]);
                    $("#manpowerNum").text(data.manpower);
                    $("#noNum").text(data.memberCnt-data.manpower);
                    $("#memberNum").text(data.memberCnt);
            	},
            	error:function(error) {
            		console.log(error)
            	}
            })
        })
        
        if("${login.auth}" == 'PM' || "${login.auth}" == 'admin'){
        	$("#goto_prjlist_menu").attr('href','${path}/projectAdmin.do');
        }
        </script>
    </body>
</html>
