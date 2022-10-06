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
                                            <spring:message code="pjlistad"/>
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a id="new_project" class="btn btn-sm btn-light text-primary" href="${path}/projectCreateForm.do">
                                            <i class="me-1" data-feather="plus"></i>
                                            Create New Project
                                        </a>
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
                                            <th>순위</th>
                                            <th>상태</th>
                                            <th>진행</th>
                                            <th>수정/삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
							    	<c:forEach var="prj" items="${prjlist}">
							    	<tr>
							    		<td>${prj.id}</td>
							    		<td><a href="javascript:goToGantt('${prj.id}')">${prj.text}</a></td>
							    		<td>${prj.start_date}&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;${prj.end_date}</td>
							    		<td><div class="badge text-white rounded-pill" style="background:${prj.pcolor};">${prj.pname}</div></td>
							    		<td><div class="badge text-white rounded-pill" style="background:${prj.color};">${prj.statusName}</div></td>
							    		<td><div class="progress">
    										<div class="progress-bar" role="progressbar" style="width: ${prj.progress*100}%; background:${prj.color}" aria-valuenow="${prj.progress*100}" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
    									</td>
							    		<td>
                                          <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" onclick="editPrj(${prj.id})"><i data-feather="edit"></i></a>
                                          <a class="btn btn-datatable btn-icon btn-transparent-dark" onclick="deletePrj(${prj.id},'${prj.text}')"><i data-feather="trash-2"></i></a>
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
        <%-- jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
        <script>
        calDuration(5)
        function deletePrj(id,text){
        	if(confirm(id+"번 프로젝트를 삭제하시겠습니까?")){
        		location.href="${path}/projectDelete.do?id="+id+"&text="+text;
        		}
        	}
        
        var prj = "${prj}"
        if(prj=="del"){
        	alert("삭제되었습니다")
        	location.href="${path}/projectAdmin.do";
        }
        
        function editPrj(id){
        	var idVal = id;
        	if(confirm(idVal+"번 프로젝트를 수정하시겠습니까?")){
	    		let f = document.createElement('form');
	    		let obj;
	    		obj = document.createElement('input');
	    		obj.setAttribute('type','hidden');
	    		obj.setAttribute('name','id');
	    		obj.setAttribute('value',id);
	    		
	    		f.appendChild(obj);
	    		f.setAttribute('method','post');
	    		f.setAttribute('action','projectEditForm.do');
	    		document.body.appendChild(f);
	    		f.submit();
        	}
    	}
        
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
    