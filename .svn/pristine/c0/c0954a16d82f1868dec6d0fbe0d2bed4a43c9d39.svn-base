<!-- script -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!-- <head> -->
   <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ISAAC PMS</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
        <%-- jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
        <script type="text/javascript">
        	var loginno = "${login.no}"
       		function updateCount(no){
       			
       			$.ajax({
       				type: "post",
       				url: "${path}/menuCountUp.do",
       				data: "no="+no,
       				dataType: "json",
       				success : function(data) {
       					switch(no) {
       						case 1 : location.href = "${path}/main.do" 
       							break;
       						case 2 : location.href = "${path}/prjDb.do"
       							break;
       						case 3 : location.href = "${path}/projectList.do"
       							break;
       						case 4 : location.href = "${path}/projectCreateForm.do" 
       							break;
       						case 5 : location.href = "${path}/projectAdmin.do" 
       							break;
       						case 6 : location.href = "${path}/issueList.do?owner_id="+loginno 
       							break;
       						case 7 : location.href = "${path}/riskSub.do?owner_id="+loginno 
       							break;
       						case 8 : location.href = "${path}/memberlist.do" 
       							break;
       						case 9 : location.href = "${path}/groupList.do" 
       							break;
       						case 10 : location.href = "${path}/orgGroup.do" 
       							break;
       						case 11 : location.href = "${path}/notice.do" 
       							break;
       						case 12 : location.href = "${path}/noticeAdmin.do" 
       							break;
       						case 13 : location.href = "${path}/calendar.do" 
       							break;
       						case 14 : location.href = "${path}/minutesList.do" 
       							break;
       						case 15 : location.href = "${path}/analistics.do"
       							break;
       						default : location.href = "${path}/main.do"
       					}
       					
       				},
       				error : function(error) {
       					alert("메뉴 카운트업 오류")
       					console.log(error)
       				}
   				})
       		}
        	
        </script>
        <script type="text/javascript">
       	 function logout(){
       		alert("로그아웃 완료")
       		location.href="${path}/logout.do"
       	 }
       	 </script>
       	 <script type="text/javascript">
			$(document).ready(function(){
				$("#exampleFormControlSelect1").val("${param.lang}")
				$("#exampleFormControlSelect1").change(function(){
					if($(this).val()!=""){
						$("[name=lang]").val($(this).val())						
						$("#frm99").attr("action","${path}/language.do").submit();
					}
				});
			});
		</script>
    </head>
<!-- top nav -->
<body class="nav-fixed">
        <nav class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white" id="sidenavAccordion">
            <!-- Sidenav Toggle Button-->
            <button class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0" id="sidebarToggle"><i data-feather="menu"></i></button>
            <!-- Navbar Brand-->
            <!-- * * Tip * * You can use text or an image for your navbar brand.-->
            <!-- * * * * * * When using an image, we recommend the SVG format.-->
            <!-- * * * * * * Dimensions: Maximum height: 32px, maximum width: 240px-->
            <a class="navbar-brand pe-3 ps-4 ps-lg-2" onclick="updateCount(1)">ISAAC PMS</a>
            <!-- Navbar Search Input-->
            <!-- * * Note: * * Visible only on and above the lg breakpoint-->
            <form class="form-inline me-auto d-none d-lg-block me-3">
                <div class="input-group input-group-joined input-group-solid">
                    <input class="form-control pe-0" type="search" placeholder="<spring:message code="search"/>" aria-label="Search" />
                    <div class="input-group-text"><i data-feather="search"></i></div>
                </div>
            </form>

<!-- Navbar Items-->
            <ul class="navbar-nav align-items-center ms-auto">
                <!-- Documentation Dropdown-->
                <li class="nav-item dropdown no-caret d-none d-md-block me-3">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownDocs" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         <div class="fw-500"><spring:message code="chlang"/></div>
                        <i class="fas fa-chevron-right dropdown-arrow"></i>

                     <div class="dropdown-menu dropdown-menu-end py-0 me-sm-n15 me-lg-0 o-hidden animated--fade-in-up" aria-labelledby="navbarDropdownDocs">
                        <a class="dropdown-item py-3" href="${path}/language.do?lang=en" >
                            <div class="icon-stack bg-primary-soft text-primary me-4"><i data-feather="feather"></i></div>
                            <div> 
                            <spring:message code="en"/>
                            </div>
                        </a>
                        <div class="dropdown-divider m-0"></div>
                        <a class="dropdown-item py-3" href="${path}/language.do?lang=ko" >
                            <div class="icon-stack bg-primary-soft text-primary me-4"><i data-feather="feather"></i></div>
                            <div>
                            <spring:message code="ko"/>
                            </div>
                        </a>
                    </div>
                </li>
                <!-- Navbar Search Dropdown-->
                <!-- * * Note: * * Visible only below the lg breakpoint-->
                <li class="nav-item dropdown no-caret me-3 d-lg-none">
                    <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="searchDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="search"></i></a>
                    <!-- Dropdown - Search-->
                    <div class="dropdown-menu dropdown-menu-end p-3 shadow animated--fade-in-up" aria-labelledby="searchDropdown">
                        <form id="frm99" class="form-inline me-auto w-100">
                            <div class="input-group input-group-joined input-group-solid">
                            <input type="hidden" name="lang" value=""/>
                                <input class="form-control pe-0" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                                <div class="input-group-text"><i data-feather="search"></i></div>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- Alerts Dropdown-->
                <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
                    <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="bell"></i></a>
                    <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts">
                        <h6 class="dropdown-header dropdown-notifications-header">
                            <i class="me-2" data-feather="bell"></i>
                            Alerts Center
                        </h6>
                        <!-- Example Alert 1-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <div class="dropdown-notifications-item-icon bg-warning"><i data-feather="activity"></i></div>
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-details">December 29, 2021</div>
                                <div class="dropdown-notifications-item-content-text">This is an alert message. It's nothing serious, but it requires your attention.</div>
                            </div>
                        </a>
                        <!-- Example Alert 2-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <div class="dropdown-notifications-item-icon bg-info"><i data-feather="bar-chart"></i></div>
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-details">December 22, 2021</div>
                                <div class="dropdown-notifications-item-content-text">A new monthly report is ready. Click here to view!</div>
                            </div>
                        </a>
                        <!-- Example Alert 3-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <div class="dropdown-notifications-item-icon bg-danger"><i class="fas fa-exclamation-triangle"></i></div>
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-details">December 8, 2021</div>
                                <div class="dropdown-notifications-item-content-text">Critical system failure, systems shutting down.</div>
                            </div>
                        </a>
                        <!-- Example Alert 4-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <div class="dropdown-notifications-item-icon bg-success"><i data-feather="user-plus"></i></div>
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-details">December 2, 2021</div>
                                <div class="dropdown-notifications-item-content-text">New user request. Woody has requested access to the organization.</div>
                            </div>
                        </a>
                        <a class="dropdown-item dropdown-notifications-footer" href="#!">View All Alerts</a>
                    </div>
                </li>
                <!-- Messages Dropdown-->
                <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
                    <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" href="${path}/chatRoom.do" role="button" aria-haspopup="true" aria-expanded="false"><i data-feather="mail"></i></a>
                    <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownMessages">
                        <h6 class="dropdown-header dropdown-notifications-header">
                            <i class="me-2" data-feather="mail"></i>
                        </h6>
<%--          
                        <!-- Example Message 1  -->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <img class="dropdown-notifications-item-img" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-2.png" />
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                                <div class="dropdown-notifications-item-content-details">Thomas Wilcox � 58m</div>
                            </div>
                        </a>
                        <!-- Example Message 2-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <img class="dropdown-notifications-item-img" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-3.png" />
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                                <div class="dropdown-notifications-item-content-details">Emily Fowler � 2d</div>
                            </div>
                        </a>
                        <!-- Example Message 3-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <img class="dropdown-notifications-item-img" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-4.png" />
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                                <div class="dropdown-notifications-item-content-details">Marshall Rosencrantz � 3d</div>
                            </div>
                        </a>
                        <!-- Example Message 4-->
                        <a class="dropdown-item dropdown-notifications-item" href="#!">
                            <img class="dropdown-notifications-item-img" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-5.png" />
                            <div class="dropdown-notifications-item-content">
                                <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                                <div class="dropdown-notifications-item-content-details">Colby Newton � 3d</div>
                            </div>
                        </a>
                        <!-- Footer Link-->
                        <a class="dropdown-item dropdown-notifications-footer" href="#!">Read All Messages</a>
                        --%>
                    </div> 
                </li>
                <!-- User Dropdown-->
                <li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
                    <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="img-fluid" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-1.png" /></a>
                    <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
                        <h6 class="dropdown-header d-flex align-items-center">
                            <img class="dropdown-user-img" src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/illustrations/profiles/profile-1.png" />
                            <div class="dropdown-user-details">
                                <div class="dropdown-user-details-name">${login.name}</div>
                                <div class="dropdown-user-details-email">${login.id}</div>
                            </div>
                        </h6>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="${path}/account.do">
                            <div class="dropdown-item-icon"><i data-feather="settings"></i></div>
                            Account
                        </a>
                        <a class="dropdown-item" onclick="logout()">
                            <div class="dropdown-item-icon"><i data-feather="log-out"></i></div>
                            Logout
                        </a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
        	<div id="layoutSidenav_nav">
				<nav class="sidenav shadow-right sidenav-light">
					<div class="sidenav-menu">
						<div class="nav accordion" id="accordionSidenav">
						<div class="sidenav-menu-heading d-sm-none">Account</div>
						<!-- Sidenav Link (Alerts)-->
						<!-- * * Note: * * Visible only on and above the sm breakpoint-->
						<a class="nav-link d-sm-none" href="#!">
							<div class="nav-link-icon">
								<i data-feather="bell"></i>
							</div> Alerts <span class="badge bg-warning-soft text-warning ms-auto">4
								New!</span>
						</a>
						<!-- Sidenav Link (Messages)-->
						<!-- * * Note: * * Visible only on and above the sm breakpoint-->
						<a class="nav-link d-sm-none" href="#!">
							<div class="nav-link-icon">
								<i data-feather="mail"></i>
							</div> Messages <span
							class="badge bg-success-soft text-success ms-auto">2 New!</span>
						</a>
						<!-- Sidenav Menu Heading (Core)-->
						<div class="sidenav-menu-heading">Core</div>
						<!-- Sidenav Accordion (Dashboard)-->
						<a class="nav-link collapsed" id="dashboard_nav" href="javascript:void(0);"
							data-bs-toggle="collapse" data-bs-target="#collapseDashboards"
							aria-expanded="false" aria-controls="collapseDashboards">
							<div class="nav-link-icon">
								<i data-feather="bar-chart"></i>
							</div> <spring:message code="dashboard"/>
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseDashboards"
							data-bs-parent="#accordionSidenav">
							<nav class="sidenav-menu-nested nav accordion"
								id="accordionSidenavPages">
								<a id="main_dashboard_menu" class="nav-link" onclick="updateCount(1)"> <spring:message code="default"/>
									<span class="badge bg-primary-soft text-primary ms-auto">Updated</span>
								</a>
								<a id="project_dashboard_menu" class="nav-link" onclick="updateCount(2)"><spring:message code="projectdb"/></a>
								<a id="analytics_menu" class="nav-link" onclick="updateCount(15)"><spring:message code="analytics"></spring:message></a>
							</nav>
						</div>
						<!-- Sidenav Heading (Menu)-->
						<div class="sidenav-menu-heading">Project</div>
							<!-- Sidenav Accordion (Project Center)-->
						<a id="project_center_nav" class="nav-link collapsed" href="javascript:void(0);"
							data-bs-toggle="collapse" data-bs-target="#collapseProjects"
							aria-expanded="false" aria-controls="collapsePages">
							<div class="nav-link-icon">
								<i data-feather="globe"></i>
							</div> <spring:message code="projectcen"/>
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						
						<div class="collapse" id="collapseProjects"
							data-bs-parent="#accordionSidenav">
							<nav class="sidenav-menu-nested nav">
								<a id="project_list_menu" class="nav-link" onclick="updateCount(3)"><spring:message code="projectlist"/></a> 
								<a id="project_create_menu" class="nav-link" onclick="updateCount(4)" ><spring:message code="createpj"/></a> 
								<a id="project_admin_menu" class="nav-link" onclick="updateCount(5)"><spring:message code="pjlistad"/></a>
							</nav>
						</div>
							<a id="issue_menu" class="nav-link" onclick="updateCount(6)">
								<div class="nav-link-icon"><i data-feather="grid"></i></div><spring:message code="issues"/></a>
							<a id="risk_menu" class="nav-link" onclick="updateCount(7)">
								<div class="nav-link-icon"><i data-feather="activity"></i></div><spring:message code="risks"/></a>
						<!-- Nested Sidenav Accordion (Pages -> Error)-->
						<div class="sidenav-menu-heading">Member</div>
						<a id="member_nav" class="nav-link collapsed" href="javascript:void(0);"
							data-bs-toggle="collapse" data-bs-target="#collapseMember"
							aria-expanded="false" aria-controls="collapseMember">
							<div class="nav-link-icon">
								<i data-feather="repeat"></i>
							</div> <spring:message code="mbmanage"/>
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseMember"
							data-bs-parent="#accordionSidenavPagesMenu">
							<nav class="sidenav-menu-nested nav">
								<a id="member_list_menu" class="nav-link" onclick="updateCount(8)"><spring:message code="memlist"/></a>
								<a id="group_list_menu" class="nav-link" onclick="updateCount(9)"><spring:message code="grplist"/></a>
								<a id="organization_menu" class="nav-link" onclick="updateCount(10)"><spring:message code="orgdetail"/></a>
							</nav>
						</div>
						<div class="sidenav-menu-heading">schedule</div>
						<nav>
							<a id="notice_menu" class="nav-link" onclick="updateCount(11)">
								<div class="nav-link-icon"><i data-feather="tool"></i></div><spring:message code="notice"/></a>
							<a id="notice_admin_menu" class="nav-link" onclick="updateCount(12)" >
								<div class="nav-link-icon"><i data-feather="tool"></i></div><spring:message code="noticead"/></a>
							<a id="calendar_menu" class="nav-link" onclick="updateCount(13)" >
								<div class="nav-link-icon"><i data-feather="layout"></i></div><spring:message code="calendar"/></a>
							<a id="minutes_menu" class="nav-link" onclick="updateCount(14)">
								<div class="nav-link-icon"><i data-feather="package"><</i></div><spring:message code="minutes"/></a>
						</nav>
						</div>
					</div>
                    <!-- Sidenav Footer-->
                    <div class="sidenav-footer">
                        <div class="sidenav-footer-content">
                            <div class="sidenav-footer-subtitle">Logged in as:</div>
                            <div class="sidenav-footer-title">${login.name}</div>
                        </div>
                    </div>
                </nav>
            </div>
            
         
            
            
            
            
        <script>
        
        // 권한에 따라 메뉴 조회
      	 if("${login.auth}" == 'admin' || "${login.auth}" == 'PM'){
        	console.log("${login.auth} 관리자 로그인");
           $("#new_project").show();
           $("#project_list_menu").hide();
           $("#notice_menu").hide();
        }else{
        	console.log("일반 사용자");
        	$("#project_admin_menu").prop('hidden','true');
        	$("#project_create_menu").attr('hidden','true');
        	$("#notice_admin_menu").attr('hidden','true');
        	$("#notice_admin_menu").attr('hidden','true');
        }
      	
        // 사이드바 액티브 처리
       	let currentUrl = location.href;
        console.log("현재 url: "+currentUrl);
        if(currentUrl.includes("projectList.do")){ // 프로젝트 리스트
        	$("#project_center_nav").attr('class','nav-link active');
        	$("#project_center_nav").attr('aria-expanded','true');
        	$("#collapseProjects").attr('class','collapse show');
        	$("#project_list_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("prjDb.do")){ // 프로젝트 대시보드
        	$("#collapseDashboards").attr('class','collapse show');
        	$("#dashboard_nav").attr('class','nav-link active'); 
        	$("#dashboard_nav").attr('aria-expanded','true');
        	$("#project_dashboard_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("main.do")){ // 메인 대시보드
        	$("#collapseDashboards").attr('class','collapse show');
        	$("#dashboard_nav").attr('aria-expanded','true');
        	$("#dashboard_nav").attr('class','nav-link active');
        	$("#main_dashboard_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("projectAdmin.do")){ // 프로젝트 리스트 (어드민)
        	$("#project_center_nav").attr('class','nav-link active');
        	$("#project_center_nav").attr('aria-expanded','true');
        	$("#collapseProjects").attr('class','collapse show');
        	$("#project_admin_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("projectCreateForm.do")){ // 프로젝트 생성
        	$("#project_center_nav").attr('class','nav-link active');
        	$("#project_center_nav").attr('aria-expanded','true');
        	$("#collapseProjects").attr('class','collapse show');
        	$("#project_create_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("riskSub.do")){ // 리스크 관리
        	$("#risk_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("issueList.do")){ // 이슈 관리
        	$("#issue_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("memberlist.do")){ // 멤버 리스트
        	$("#member_nav").attr('class','nav-link active');
        	$("#member_nav").attr('aria-expanded','true');
        	$("#collapseMember").attr('class','collapse show');
        	$("#member_list_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("groupList.do")){ // 그룹 리스트
        	$("#member_nav").attr('class','nav-link active');
        	$("#member_nav").attr('aria-expanded','true');
        	$("#collapseMember").attr('class','collapse show');
        	$("#group_list_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("orgGroup.do")){ // 기관 상세
        	$("#member_nav").attr('class','nav-link active');
        	$("#member_nav").attr('aria-expanded','true');
        	$("#collapseMember").attr('class','collapse show');
        	$("#organization_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("notice.do")){ // 공지사항 리스트
        	$("#notice_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("noticeAdmin.do")){ // 공지사항 리스트 (어드민)
        	$("#notice_admin_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("calendar.do")){ // 캘린더
        	$("#calendar_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("minutesList.do")){ // 회의록
        	$("#minutes_menu").attr('class','nav-link active');
        }else if(currentUrl.includes("analistics.do")){
        	$("#collapseDashboards").attr('class','collapse show');
        	$("#dashboard_nav").attr('class','nav-link active'); 
        	$("#dashboard_nav").attr('aria-expanded','true');
        	$("#analytics_menu").attr('class','nav-link active');
        }
        </script>