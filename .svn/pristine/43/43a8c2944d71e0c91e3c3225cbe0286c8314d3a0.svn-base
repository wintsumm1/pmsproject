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
                                            <spring:message code="dashboard"/>
                                        </h1>
                                        <div class="page-header-subtitle">Dashboard overview and content summary</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <div class="row">
                            <div class="col-xl-4 mb-4">
                                <!-- Dashboard example card 1-->
                                <a id="goto_notice" class="card lift h-100" href="${path}/notice.do">
                                    <div class="card-body d-flex justify-content-center flex-column">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="me-3">
                                                <i class="feather-xl text-primary mb-3" data-feather="package"></i>
                                                <h5><spring:message code="notice"/></h5>
                                                <div class="text-muted small">공지사항을 확인하세요.</div>
                                            </div>
                                            <img src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/browser-stats.svg" alt="공지사항" style="width: 8rem" />
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-4 mb-4">
                                <!-- Dashboard example card 2-->
                                <a class="card lift h-100" href="${path}/minutesList.do">
                                    <div class="card-body d-flex justify-content-center flex-column">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="me-3">
                                                <i class="feather-xl text-secondary mb-3" data-feather="book"></i>
                                                <h5><spring:message code="minutes"/></h5>
                                                <div class="text-muted small">회의록을 확인하세요.</div>
                                            </div>
                                            <img src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/processing.svg" alt="회의록" style="width: 8rem" />
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-4 mb-4">
                                <!-- Dashboard example card 3-->
                                <a class="card lift h-100" href="${path}/calendar.do">
                                    <div class="card-body d-flex justify-content-center flex-column">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="me-3">
                                                <i class="feather-xl text-green mb-3" data-feather="layout"></i>
                                                <h5><spring:message code="calendar"/></h5>
                                                <div class="text-muted small">일정 관리</div>
                                            </div>
                                            <img src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/windows.svg" alt="캘린더" style="width: 8rem" />
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xxl-8">
                                <!-- Tabbed dashboard card example-->
                                <div class="card mb-4">
                                    <div class="card-header border-bottom">
                                        <!-- Dashboard card navigation-->
                                        <ul class="nav nav-tabs card-header-tabs" id="dashboardNav" role="tablist">
                                            <li class="nav-item me-1"><a class="nav-link active" id="overview-pill" href="#overview" data-bs-toggle="tab" role="tab" aria-controls="overview" aria-selected="true"><spring:message code="overview"/></a></li>
                                            <li class="nav-item"><a class="nav-link" id="activities-pill" href="#activities" data-bs-toggle="tab" role="tab" aria-controls="activities" aria-selected="false"><spring:message code="activites"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="card-body">
                                        <div class="tab-content" id="dashboardNavContent">
                                            <!-- Dashboard Tab Pane 1-->
                                            <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview-pill">
                                                <div class="chart-area mb-4 mb-lg-0" style="height: 20rem"><canvas id="myAreaChart" width="100%" height="30"></canvas></div>
                                            </div>
                                            <!-- Dashboard Tab Pane 2-->
                                            <div class="tab-pane fade" id="activities" role="tabpanel" aria-labelledby="activities-pill">
                                                <table id="datatablesSimple">
                                                    <thead>
                                                        <tr>
                                                            <th>Date</th>
                                                            <th>Event</th>
                                                            <th>Time</th>
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Date</th>
                                                            <th>Event</th>
                                                            <th>Time</th>
                                                        </tr>
                                                    </tfoot>
                                                    <tbody>
                                                        <tr>
                                                            <td>01/13/20</td>
                                                            <td>
                                                                <i class="me-2 text-green" data-feather="zap"></i>
                                                                Server online
                                                            </td>
                                                            <td>1:21 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/13/20</td>
                                                            <td>
                                                                <i class="me-2 text-red" data-feather="zap-off"></i>
                                                                Server restarted
                                                            </td>
                                                            <td>1:00 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/12/20</td>
                                                            <td>
                                                                <i class="me-2 text-purple" data-feather="shopping-cart"></i>
                                                                New order placed! Order #
                                                                <a href="#!">1126550</a>
                                                            </td>
                                                            <td>5:45 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/12/20</td>
                                                            <td>
                                                                <i class="me-2 text-blue" data-feather="user"></i>
                                                                Valerie Luna submitted
                                                                <a href="#!">quarter four report</a>
                                                            </td>
                                                            <td>4:23 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/12/20</td>
                                                            <td>
                                                                <i class="me-2 text-yellow" data-feather="database"></i>
                                                                Database backup created
                                                            </td>
                                                            <td>3:51 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/12/20</td>
                                                            <td>
                                                                <i class="me-2 text-purple" data-feather="shopping-cart"></i>
                                                                New order placed! Order #
                                                                <a href="#!">1126549</a>
                                                            </td>
                                                            <td>1:22 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/11/20</td>
                                                            <td>
                                                                <i class="me-2 text-blue" data-feather="user-plus"></i>
                                                                New user created:
                                                                <a href="#!">Sam Malone</a>
                                                            </td>
                                                            <td>4:18 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/11/20</td>
                                                            <td>
                                                                <i class="me-2 text-purple" data-feather="shopping-cart"></i>
                                                                New order placed! Order #
                                                                <a href="#!">1126548</a>
                                                            </td>
                                                            <td>4:02 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/11/20</td>
                                                            <td>
                                                                <i class="me-2 text-purple" data-feather="shopping-cart"></i>
                                                                New order placed! Order #
                                                                <a href="#!">1126547</a>
                                                            </td>
                                                            <td>3:47 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/11/20</td>
                                                            <td>
                                                                <i class="me-2 text-green" data-feather="zap"></i>
                                                                Server online
                                                            </td>
                                                            <td>1:19 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/11/20</td>
                                                            <td>
                                                                <i class="me-2 text-red" data-feather="zap-off"></i>
                                                                Server restarted
                                                            </td>
                                                            <td>1:00 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/10/20</td>
                                                            <td>
                                                                <i class="me-2 text-purple" data-feather="shopping-cart"></i>
                                                                New order placed! Order #
                                                                <a href="#!">1126547</a>
                                                            </td>
                                                            <td>5:31 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/10/20</td>
                                                            <td>
                                                                <i class="me-2 text-purple" data-feather="shopping-cart"></i>
                                                                New order placed! Order #
                                                                <a href="#!">1126546</a>
                                                            </td>
                                                            <td>12:13 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td>01/10/20</td>
                                                            <td>
                                                                <i class="me-2 text-blue" data-feather="user"></i>
                                                                Diane Chambers submitted
                                                                <a href="#!">quarter four report</a>
                                                            </td>
                                                            <td>10:56 AM</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Illustration dashboard card example-->
                                <div class="card mb-4">
                                    <div class="card-header"><spring:message code="pos"/></div>
                                    <div class="card-body">
                                    	<div class="chart-area mb-4 mb-lg-0" style="height: 20rem"><canvas id="barChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 mb-4">
                                        <!-- Dashboard activity timeline example-->
                                        <div class="card card-header-actions h-100">
                                            <div class="card-header">
                                                <spring:message code="recentact"/>
                                                <div class="dropdown no-caret">
                                                    <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                                    <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="dropdownMenuButton">
                                                        <h6 class="dropdown-header">활동 분류:</h6>
                                                        <a class="dropdown-item" href="#!"><span class="badge bg-yellow-soft text-yellow my-1">Notice</span></a>
                                                        <a class="dropdown-item" href="#!"><span class="badge bg-blue-soft text-blue my-1">Projects</span></a>
                                                        <a class="dropdown-item" href="#!"><span class="badge bg-green-soft text-green my-1">Minutes</span></a>
                                                        <a class="dropdown-item" href="#!"><span class="badge bg-purple-soft text-purple my-1">Users</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="timeline timeline-xs">
                                                    <!-- Timeline Item 1-->
                                                    <c:forEach var="history" items="${history}" begin="0" end="9">
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text"><fmt:formatDate value="${history.htime}" pattern="dd HH:mm"/></div>
                                                            <div class="timeline-item-marker-indicator" style="background:${history.hcolor}"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            <a class="fw-bold text-dark" href="#!">#${history.hname}</a>
                                                            ${history.htype}되었습니다.
                                                        </div>
                                                    </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 mb-4">
                                        <!-- Pie chart with legend example-->
                                        <div class="card h-100">
                                            <div class="card-header"><spring:message code="trafficsources"/></div>
                                            <div class="card-body">
                                                <div class="chart-pie mb-4"><canvas id="sampleChart" width="100%" height="50"></canvas></div>
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
                                </div>
                            </div>
                            <!-- 사원 목록 -->
                            <div class="col-xxl-4">
                                <div class="row">
                                    <div class="col-xl-6 col-xxl-12">
                                        <!-- Team members / people dashboard card example-->
                                        <div class="card card-header-actions card mb-4">
                                            <div class="card-header">
                                            	<spring:message code="people"/>
                                            	<a class="btn btn-sm btn-primary-soft text-primary" href="${path}/memberlist.do"><spring:message code="more"/></a>
                                            </div>
                                            <div class="card-body">
                                                <!-- Item 1-->
                                                <c:forEach var="m" items="${mlist}" begin="0" end="5" step="1" varStatus="status">
                                                <div class="d-flex align-items-center justify-content-between mb-4">
                                                    <div class="d-flex align-items-center flex-shrink-0 me-3">
                                                        <div class="avatar avatar-xl me-3 bg-gray-200"><img class="avatar-img img-fluid" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-${status.index+1}.png" alt="" /></div>
                                                        <div class="d-flex flex-column fw-bold">
                                                            <a class="text-dark line-height-normal mb-1" href="#!">${m.name}</a>
                                                            <div class="small text-muted line-height-normal">${m.mrg}</div>
                                                        </div>
                                                    </div>
                                                    <div class="dropdown no-caret">
                                                        <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="dropdownPeople1" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="more-vertical"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="dropdownPeople1">
                                                            <a class="dropdown-item" href="#!">상세보기</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-xxl-12">
                                        <!-- Project tracker card example-->
                                        <div class="card card-header-actions mb-4">
                                            <div class="card-header">
                                                <spring:message code="projects"/>
                                                <a id="create_new_project" class="btn btn-sm btn-primary-soft text-primary" href="${path}/projectCreateForm.do">Create New</a>
                                            </div>
                                            <div class="card-body">
                                                <!-- Progress item 1-->
                                                <c:forEach var="mprj" items="${mainprj}" begin="0" end="3">
                                                <div class="d-flex align-items-center justify-content-between small mb-1">
                                                    <div class="fw-bold">${mprj.text}</div>
                                                    <div class="small">${mprj.progress}%</div>
                                                </div>
                                                <div class="progress"><div class="progress-bar" role="progressbar" style="width: ${mprj.progress}%; background:${mprj.color};" aria-valuenow="100" aria-valuemin="0" aria-valuemax="${mprj.progress}"></div></div>
                                            	</c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Illustration dashboard card example-->
                                <div class="card">
                                    <div class="card-body text-center p-5">
                                        <img class="img-fluid mb-4" src="assets/img/illustrations/team-spirit.svg" alt="" style="max-width: 16.25rem" />
                                        <h5><spring:message code="add"/></h5>
                                        <p class="mb-4"></p>
                                        <a class="btn btn-primary p-3" href="${path}/insertMemberForm.do"><spring:message code="reg"/></a>
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
        <%--jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
		<%-- bootstrap --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <%-- chart --%>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-area-demo.js"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-bar.js"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-pie.js"></script>
        <%-- table --%>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <script src="${path}/a02_com_fun/calDuration.js"></script>
        <script>
        calDuration(1)
        // 권한에 따라 메뉴 조회
     	 if("${login.auth}" == 'admin' || "${login.auth}" == 'PM'){
       	console.log("${login.auth} 관리자 로그인");
          $("#create_new_project").show();
          $("#goto_notice").attr('href','${path}/noticeAdmin.do');
       }else{
       	console.log("일반 사용자");
       	$("#create_new_project").hide();
       }
        </script>
    </body>
</html>
    