<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<%@ include file="side_bar.jsp" %>
<%-- date --%>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
<script>
	$(function() {
		$('input[id="daterange"]').daterangepicker(
				{
					"locale" : {
						format : 'YYYY-MM-DD'
					},
					startDate: "${prj.start_date}", 
					endDate: "${prj.end_date}"
				},
				function(start, end, label) {
					console.log("A new date selection was made: "
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD'));
				});
	});
	
</script>
<div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="file-plus"></i></div>
                                            Create Project
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path}/projectAdmin.do">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            Back to All Projects
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                    <form id="frm01" class="form" action="${path}/projectEdit.do">
                        <div class="row gx-4">
                            <div class="col-lg-8">
                                <div class="card mb-4">
                                    <div class="card-header">프로젝트명</div>
                                    <input type="hidden" name="id" value="${prj.id}"/>
                                    <div class="card-body"><input class="form-control" name="text" type="text" placeholder="Enter project title..." value="${prj.text}"></div>
                                </div>
                                <div class="card mb-4">
                                    <div class="card-header">프로젝트 기간</div>
                                    <div class="card-body">
                                    	<div class="input-group input-group-joined" style="width: 16.5rem;">
										    <span class="input-group-text">
										        <i data-feather="calendar"></i>
										    </span>
										    <input class="form-control ps-0" id=daterange name="start_date" type="text" value="${prj.start_date}"/>
										    <input type="hidden" class="form-control ps-0" id=daterange name="end_date" type="text"/>
										    <input type="hidden" class="form-control ps-0" id=daterange name="duration" type="text"/>
										</div>
                                    </div>
                                </div>
                                <div class="card mb-4 card-header-actions">
                                    <div class="card-header">
                                    	담당자
                                    	<button type="button" class="btn btn-primary bn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">선택</button>
                                    </div>
                                    <div class="card-body">
                                    	<div id="result"></div>
                                    	<input class="form-control" id="owner_id" name="owner_id" type="text" placeholder="Select members..." value="${prj.owner_id}"/>
                                    </div>
                                </div>
                                <div class="card mb-4">
                                    <div class="card-header">우선순위</div>
                                    <div class="card-body">
                                    	<div class="form-check">
										    <input class="form-check-input" id="flexRadioDefault" type="radio" name="priority" value="1"
										    <c:if test="${prj.priority eq 1}">checked</c:if>>
										    <label class="form-check-label" for="flexRadioDefault">&nbsp;긴급</label>
										</div>
                                    	<div class="form-check">
										    <input class="form-check-input" id="flexRadioDefault" type="radio" name="priority" value="2"
										    <c:if test="${prj.priority eq 2}">checked</c:if>>
										    <label class="form-check-label" for="flexRadioDefault">&nbsp;높음</label>
										</div>
										<div class="form-check">
										    <input class="form-check-input" id="flexRadioDefault"  type="radio" name="priority" value="3"
										    <c:if test="${prj.priority eq 3}">checked</c:if>>
										    <label class="form-check-label" for="flexRadioDefault">&nbsp;보통</label>
										</div>
										<div class="form-check">
										    <input class="form-check-input" id="flexRadioDefault"  type="radio" name="priority" value="4"
										    <c:if test="${prj.priority eq 4}">checked</c:if>>
										    <label class="form-check-label" for="flexRadioDefault">&nbsp;낮음</label>
										</div>
										<div class="form-check">
										    <input class="form-check-input" id="flexRadioDefault"  type="radio" name="priority" value="0"
										    <c:if test="${prj.priority eq 0}">checked</c:if>>
										    <label class="form-check-label" for="flexRadioDefault">&nbsp;없음</label>
										</div>
                                    </div>
                                </div>
                                <div class="card mb-4">
                                    <div class="card-header">상태</div>
                                    <div class="card-body">
                                    	<select class="form-control" name="status_no">
                                    		<option class="form-control" value="${prj.status_no}">${prj.statusName}</option>
                                    		<option value="1">요청</option>
                                    		<option value="2">진행중</option>
                                    		<option value="3">완료</option>
                                    		<option value="4">피드백</option>
                                    	</select>
                                    </div>
                                </div>
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        프로젝트 내용
                                        <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="The post preview text shows below the post title, and is the post summary on blog pages."></i>
                                    </div>
                                    <div class="card-body"><textarea name="contents" class="lh-base form-control" type="text" placeholder="Enter your project content..." rows="4">${prj.contents}</textarea></div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card card-header-actions">
                                    <div class="card-header">
                                        Publish
                                        <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="After submitting, your post will be published once it is approved by a moderator."></i>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-grid"><button type="button" class="fw-500 btn btn-primary" onclick="editPrj()">Submit</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
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
            
		<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content" style="width: 700px;">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">담당자를 선택하세요</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
			                        <div class="card">
			                        	<div class="card-header">사원 정보 리스트</div>
			                            <div class="card-body">
			                                <table id="datatablesSimple">
								      		<thead>
								      			<tr>
								      				<th>사원번호</th>
								      				<th>이름</th>
								      				<th>Email</th>
								      				<th>부서</th>
								      				<th>직책</th>
								      				<th>선택</th>
								      			</tr>
								      		</thead>
								      		<tbody>
								      		<c:forEach var="m" items="${mlist}">
								      		<tr>
								      			<td>${m.no}</td>
								      			<td>${m.name}</td>
								      			<td>${m.id}</td>
								      			<td>${m.dept}</td>
								      			<td>${m.mrg}</td>
								      			<td><input type="checkbox" name="select_member" value="${m.no}"/></td>
								      		</tr>
								      		</c:forEach>
								      		</tbody>
										</table>
			                            </div>
			                        </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					        <button type="button" class="btn btn-primary" id="regBtn">등록</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					
		<script type="text/javascript">
		$(document).ready(function(){
			$("#regBtn").click(function(){
				var num = $("input:checkbox[name=select_member]:checked").length;
				if(num>1){
					alert("담당자는 한 명만 선택할 수 있습니다.");
					$("input:checkbox[name=select_member]:checked").prop('checked',false);
				}else{
					$("input:checkbox[name=select_member]:checked").each(function(){
						var checkVal = $(this).val();
						console.log(checkVal);
						$('#owner_id').val(checkVal);
						$('#exampleModal').modal("hide");
					});
				}
			});
		});
		
	        
		var proc = "${proc}"
		if(proc=="upt"){
			alert("수정되었습니다.");
			location.href="${path}/projectAdmin.do";
		}
		
		function editPrj(){
			var date = $("[name=start_date]").val();
			var date1 = date.substring(0,10);
			var date2 = date.substring(13);
			var sdt = new Date(date1);
			var edt = new Date(date2);
			var dateDiff = Math.ceil((edt.getTime()-sdt.getTime())/(1000*3600*24));
			$("[name=start_date]").val(date1);
			$("[name=end_date]").val(date2);
			$("[name=duration]").val(dateDiff);
		
			document.querySelector("#frm01").submit();
		}
		
		
		</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://unpkg.com/easymde/dist/easymde.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/markdown.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <%--
        <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/litepicker.js"></script>
         --%>
    </body>
</html>