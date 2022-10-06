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
                                            <spring:message code="projectlist"/>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>프로젝트명</th>
                                            <th>기간</th>
                                            <th>담당자</th>
                                            <th>순위</th>
                                            <th>상태</th>
                                            <th>진행상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
							    	<c:forEach var="prj" items="${prjlist}">
							    	<tr>
							    		<td>${prj.id}</td>
							    		<td><a href="javascript:goToGantt('${prj.id}')">${prj.text}</a></td>
							    		<td>${prj.start_date}&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;${prj.end_date}</td>
							    		<td>${prj.ownerName}</td>
							    		<td><div class="badge text-white rounded-pill" style="background:${prj.pcolor};">${prj.pname}</div></td>
							    		<td><div class="badge text-white rounded-pill" style="background:${prj.color};">${prj.statusName}</div></td>
							    		<td>
							    			<div class="progress">
    										<div class="progress-bar" role="progressbar" style="width: ${prj.progress*100}%; background:${prj.color}" aria-valuenow="${prj.progress*100}" aria-valuemin="0" aria-valuemax="100">
    										<fmt:formatNumber value="${prj.progress}" type="percent"/></div>
											</div>
    									</td>
							    	</tr>
							    	</c:forEach>
							    	</tbody>
                                </table>
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
        <script>
        calDuration(4)
        function goToGantt(id) {
        	document.querySelector("[name=id]").value = id
        	document.querySelector("#goGantt").submit();
        }
        
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <script src="${path}/a02_com_fun/calDuration.js"></script>
    </body>
</html>
    