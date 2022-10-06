<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
   <%@include file="side_bar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="list"></i></div>
                                            <spring:message code="notice"/>
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
                                            <th>제목</th>
                                            <th>요약</th>
                                            <th>작성자</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="notice" items="${noticelist}">
                                    <tr>
							    		<td>${notice.no}</td>
							    		<td><a href="javascript:goDetail(${notice.no})">${notice.title}</a></td>
							    		<td>${notice.preview}</td>
							    		<td>${notice.name}</td>
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
        <%--jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
		<%-- bootstrap --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <%-- table --%>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <script src="${path}/a02_com_fun/calDuration.js"></script>
        <script type="text/javascript">
        	calDuration(11)
	    	function goDetail(no){
	    		let f = document.createElement('form');
	    		let obj;
	    		obj = document.createElement('input');
	    		obj.setAttribute('type','hidden');
	    		obj.setAttribute('name','no');
	    		obj.setAttribute('value',no);
	    		
	    		f.appendChild(obj);
	    		f.setAttribute('method','post');
	    		f.setAttribute('action','noticeDetail.do');
	    		document.body.appendChild(f);
	    		f.submit();
	    	}
        </script>
    </body>
</html>
    