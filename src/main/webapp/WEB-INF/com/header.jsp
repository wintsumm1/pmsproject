<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISAAC PMS</title>

<script type="text/javascript">
$(document).ready(function(){
	var toggle = false
	var containerWidth = $(".container").width()
	console.log(containerWidth)
	
	$(".wrapper").css("margin-left","250px")
	$("#sidebarToggle").click(function () {
		toggle = !toggle
		if(toggle) {
			$(".wrapper").css("margin-left","0")
			console.log(containerWidth + 250)
		} else {
			$(".wrapper").css("margin-left","250px")
			console.log(containerWidth)
		}
	})
	var id = "${login.id}"
	var name = "${login.name}"
	if(id!=""){
		$(".dropdown-user-details-name").text(name);
		$(".sidenav-footer-title").text(name);
		$(".dropdown-user-details-email").text(id);
	}
})
</script>
</head>

	<nav class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white" id="sidenavAccordion">
	    <!-- Sidenav Toggle Button-->
	    <button class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0" id="sidebarToggle"><i data-feather="menu"></i></button>
	    <!-- Navbar Brand-->
	    <!-- * * Tip * * You can use text or an image for your navbar brand.-->
	    <!-- * * * * * * When using an image, we recommend the SVG format.-->
	    <!-- * * * * * * Dimensions: Maximum height: 32px, maximum width: 240px-->
	    <a class="navbar-brand pe-3 ps-4 ps-lg-2" href="${path}/main.do">ISAAC PMS</a>
	    <!-- Navbar Search Input-->
	    <!-- * * Note: * * Visible only on and above the lg breakpoint-->
	    <form class="form-inline me-auto d-none d-lg-block me-3">
	        <div class="input-group input-group-joined input-group-solid">
	            <input class="form-control pe-0" type="search" placeholder="Search" aria-label="Search">
	            <div class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg></div>
	        </div>
	    </form>
	    <!-- Navbar Items-->
	    <ul class="navbar-nav align-items-center ms-auto">
	        <!-- Documentation Dropdown-->
	        <li class="nav-item dropdown no-caret d-none d-md-block me-3">
	            <a class="nav-link dropdown-toggle" id="navbarDropdownDocs" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                <div class="fw-500">Documentation</div>
	                <svg class="svg-inline--fa fa-chevron-right dropdown-arrow" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z"></path></svg><!-- <i class="fas fa-chevron-right dropdown-arrow"></i> Font Awesome fontawesome.com -->
	            </a>
	            <div class="dropdown-menu dropdown-menu-end py-0 me-sm-n15 me-lg-0 o-hidden animated--fade-in-up" aria-labelledby="navbarDropdownDocs">
	                <a class="dropdown-item py-3" href="${path}/project06/main" target="_blank">
	                    <div class="icon-stack bg-primary-soft text-primary me-4"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg></div>
	                    <div>
	                        <div class="small text-gray-500">Documentation</div>
	                        Usage instructions and reference
	                    </div>
	                </a>
	                <div class="dropdown-divider m-0"></div>
	                <a class="dropdown-item py-3" href="#" target="_blank">
	                    <div class="icon-stack bg-primary-soft text-primary me-4"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg></div>
	                    <div>
	                        <div class="small text-gray-500">Components</div>
	                        Code snippets and reference
	                    </div>
	                </a>
	                <div class="dropdown-divider m-0"></div>
	                <a class="dropdown-item py-3" href="#" target="_blank">
	                    <div class="icon-stack bg-primary-soft text-primary me-4"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg></div>
	                    <div>
	                        <div class="small text-gray-500">Changelog</div>
	                        Updates and changes
	                    </div>
	                </a>
	            </div>
	        </li>
	        <!-- Navbar Search Dropdown-->
	        <!-- * * Note: * * Visible only below the lg breakpoint-->
	        <li class="nav-item dropdown no-caret me-3 d-lg-none">
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="searchDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg></a>
	            <!-- Dropdown - Search-->
	            <div class="dropdown-menu dropdown-menu-end p-3 shadow animated--fade-in-up" aria-labelledby="searchDropdown">
	                <form class="form-inline me-auto w-100">
	                    <div class="input-group input-group-joined input-group-solid">
	                        <input class="form-control pe-0" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
	                        <div class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg></div>
	                    </div>
	                </form>
	            </div>
	        </li>
	        <!-- Alerts Dropdown-->
	        <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path><path d="M13.73 21a2 2 0 0 1-3.46 0"></path></svg></a>
	            <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts">
	                <h6 class="dropdown-header dropdown-notifications-header">
	                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell me-2"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path><path d="M13.73 21a2 2 0 0 1-3.46 0"></path></svg>
	                    Alerts Center
	                </h6>
	                <!-- Example Alert 1-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <div class="dropdown-notifications-item-icon bg-warning"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-details">December 29, 2021</div>
	                        <div class="dropdown-notifications-item-content-text">This is an alert message. It's nothing serious, but it requires your attention.</div>
	                    </div>
	                </a>
	                <!-- Example Alert 2-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <div class="dropdown-notifications-item-icon bg-info"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart"><line x1="12" y1="20" x2="12" y2="10"></line><line x1="18" y1="20" x2="18" y2="4"></line><line x1="6" y1="20" x2="6" y2="16"></line></svg></div>
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-details">December 22, 2021</div>
	                        <div class="dropdown-notifications-item-content-text">A new monthly report is ready. Click here to view!</div>
	                    </div>
	                </a>
	                <!-- Example Alert 3-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <div class="dropdown-notifications-item-icon bg-danger"><svg class="svg-inline--fa fa-triangle-exclamation" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="triangle-exclamation" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M506.3 417l-213.3-364c-16.33-28-57.54-28-73.98 0l-213.2 364C-10.59 444.9 9.849 480 42.74 480h426.6C502.1 480 522.6 445 506.3 417zM232 168c0-13.25 10.75-24 24-24S280 154.8 280 168v128c0 13.25-10.75 24-23.1 24S232 309.3 232 296V168zM256 416c-17.36 0-31.44-14.08-31.44-31.44c0-17.36 14.07-31.44 31.44-31.44s31.44 14.08 31.44 31.44C287.4 401.9 273.4 416 256 416z"></path></svg><!-- <i class="fas fa-exclamation-triangle"></i> Font Awesome fontawesome.com --></div>
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-details">December 8, 2021</div>
	                        <div class="dropdown-notifications-item-content-text">Critical system failure, systems shutting down.</div>
	                    </div>
	                </a>
	                <!-- Example Alert 4-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <div class="dropdown-notifications-item-icon bg-success"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-plus"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="20" y1="8" x2="20" y2="14"></line><line x1="23" y1="11" x2="17" y2="11"></line></svg></div>
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
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></a>
	            <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownMessages">
	                <h6 class="dropdown-header dropdown-notifications-header">
	                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail me-2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
	                    Message Center
	                </h6>
	                <!-- Example Message 1  -->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <img class="dropdown-notifications-item-img" src="assets/img/illustrations/profiles/profile-2.png">
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
	                        <div class="dropdown-notifications-item-content-details">Thomas Wilcox · 58m</div>
	                    </div>
	                </a>
	                <!-- Example Message 2-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <img class="dropdown-notifications-item-img" src="assets/img/illustrations/profiles/profile-3.png">
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
	                        <div class="dropdown-notifications-item-content-details">Emily Fowler · 2d</div>
	                    </div>
	                </a>
	                <!-- Example Message 3-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <img class="dropdown-notifications-item-img" src="assets/img/illustrations/profiles/profile-4.png">
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
	                        <div class="dropdown-notifications-item-content-details">Marshall Rosencrantz · 3d</div>
	                    </div>
	                </a>
	                <!-- Example Message 4-->
	                <a class="dropdown-item dropdown-notifications-item" href="#!">
	                    <img class="dropdown-notifications-item-img" src="assets/img/illustrations/profiles/profile-5.png">
	                    <div class="dropdown-notifications-item-content">
	                        <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
	                        <div class="dropdown-notifications-item-content-details">Colby Newton · 3d</div>
	                    </div>
	                </a>
	                <!-- Footer Link-->
	                <a class="dropdown-item dropdown-notifications-footer" href="#!">Read All Messages</a>
	            </div>
	        </li>
	        <!-- User Dropdown-->
	        <li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="img-fluid" src="assets/img/illustrations/profiles/profile-1.png"></a>
	            <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
	                <h6 class="dropdown-header d-flex align-items-center">
	                    <img class="dropdown-user-img" src="assets/img/illustrations/profiles/profile-1.png">
	                    <div class="dropdown-user-details">
	                        <div class="dropdown-user-details-name"></div>
	                        <div class="dropdown-user-details-email"></div>
	                    </div>
	                </h6>
	                <div class="dropdown-divider"></div>
	                <a class="dropdown-item" href="#!">
	                    <div class="dropdown-item-icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg></div>
	                    Account
	                </a>
	                <a class="dropdown-item" href="#!">
	                    <div class="dropdown-item-icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg></div>
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
					<a class="nav-link collapsed" href="javascript:void(0);"
						data-bs-toggle="collapse" data-bs-target="#collapseDashboards"
						aria-expanded="false" aria-controls="collapseDashboards">
						<div class="nav-link-icon">
							<i data-feather="activity"></i>
						</div> Dashboards
						<div class="sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseDashboards"
						data-bs-parent="#accordionSidenav">
						<nav class="sidenav-menu-nested nav accordion"
							id="accordionSidenavPages">
							<a class="nav-link" href="${path}/main.do"> Default
								<span class="badge bg-primary-soft text-primary ms-auto">Updated</span>
							</a>
							<a class="nav-link" href="${path}/prjDb.do">Project Dashboard</a>
						</nav>
					</div>
					<!-- Sidenav Heading (Menu)-->
					<div class="sidenav-menu-heading">Menu</div>
						<!-- Sidenav Accordion (Project Center)-->
					<a class="nav-link collapsed" href="javascript:void(0);"
						data-bs-toggle="collapse" data-bs-target="#collapsePages"
						aria-expanded="false" aria-controls="collapsePages">
						<div class="nav-link-icon">
							<i data-feather="grid"></i>
						</div> Project Center
						<div class="sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapsePages"
						data-bs-parent="#accordionSidenav">
						<nav class="sidenav-menu-nested nav">
							<a class="nav-link" href="${path}/projectList.do">Projects List</a> <a
								class="nav-link" href="${path}/projectCreate.do">Create Project</a> <a
								class="nav-link" href="#">Project Admin</a>
						</nav>
					</div>
					<!-- Nested Sidenav Accordion (Pages -> Error)-->
					<a class="nav-link collapsed" href="javascript:void(0);"
						data-bs-toggle="collapse" data-bs-target="#pagesCollapseError"
						aria-expanded="false" aria-controls="pagesCollapseError">
						<div class="nav-link-icon">
							<i data-feather="repeat"></i>
						</div> Member management
						<div class="sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="pagesCollapseError"
						data-bs-parent="#accordionSidenavPagesMenu">
						<nav class="sidenav-menu-nested nav">
							<a class="nav-link" href="${path}/memberlist.do">Member List</a>
							<a	class="nav-link" href="#">Groups List</a>
							<a	class="nav-link" href="#">Organization Detail</a>
						</nav>
					</div>
					</div>
					<nav>
							<a class="nav-link" href="#">Issues</a>
							<a class="nav-link" href="${path}/riskSub.do">Risks</a>
							<a class="nav-link" href="${path}/calendar.do">Calendar</a>
							<a class="nav-link" href="${path}/minutesList.do">Minutes</a>
					</nav>
				</div>
				<!-- Sidenav Footer-->
				<div class="sidenav-footer">
				    <div class="sidenav-footer-content">
				        <div class="sidenav-footer-subtitle">Logged in as:</div>
				        <div class="sidenav-footer-title"></div>
				    </div>
				</div>
               </nav>
           </div>
       </div>
        
</html>