<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<%@include file="side_bar.jsp"%>
<head>
<%-- jquery --%>
<link rel="stylesheet" href="${path}/a00_com/jquery.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script data-search-pseudo-elements="" defer=""
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<%-- bootstrap --%>
<link rel="stylesheet"
	href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/components/prism-core.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/plugins/autoloader/prism-autoloader.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/litepicker.js"></script>
<%-- date --%>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
<script src="${path}/a02_com_fun/calDuration.js"></script>
</head>
<div id="layoutSidenav_content">
	<main>
		<header
			class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
			<div class="container-fluid px-4">
				<div class="page-header-content">
					<div class="row align-items-center justify-content-between pt-3">
						<div class="col-auto mb-3">
							<h1 class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="list"></i>
								</div>
								Issue List
							</h1>
						</div>
						<div class="col-12 col-xl-auto mb-3">
							<button class="btn btn-sm btn-light text-primary" id="btnreq"
								type="button" data-bs-toggle="modal" data-bs-target="#reqmodal">
								<i class="me-1" data-feather="plus"></i>Create New Issue
							</button>
							<button class="btn btn-primary" id="Detailbtn" type="button"
								data-bs-toggle="modal" data-bs-target="#issueDetail"
								style="display: none">관리</button>
						</div>
					</div>
				</div>
			</div>
		</header>
		<form id="frm03" enctype="multipart/form-data" class="form"
			method="post" action="${path}/deleteIssue.do">
			<!-- Main page content-->
			<div class="container-fluid px-4">
				<div class="card">
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>

								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>프로젝트명</th>
									<th>작성일</th>
									<th>수정 및 삭제</th>
								</tr>
							</thead>
							<tfoot>

								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>프로젝트명</th>
									<th>작성일</th>
									<th>수정 및 삭제</th>
								</tr>
							</tfoot>
							<tbody>
								<!-- controller에서 넘겨준 모델데이터 : ilist -->
								<c:forEach var="is" items="${ilist}" varStatus="sts">
									<tr>
										<td onclick="goDetail(${sts.index})">${sts.count}</td>
										<td onclick="goDetail(${sts.index})" id="subjecttd">${is.subject}</td>
										<td onclick="goDetail(${sts.index})" id="refnotd"
											style="display: none;">${is.refno}</td>
										<td onclick="goDetail(${sts.index})" id="contenttd"
											style="display: none;">${is.content}</td>
										<td onclick="goDetail(${sts.index})" id="issue_notd"
											style="display: none;">${is.issue_no}</td>
										<td onclick="goDetail(${sts.index})" id="proidtd"
											style="display: none;">${is.proid}</td>
										<td onclick="goDetail(${sts.index})" id="uptdtetd"
											style="display: none;"><fmt:formatDate
												value="${is.uptdte}" /></td>
										<td onclick="goDetail(${sts.index})" id="leveltd"
											style="display: none;">${is.level}</td>
										<td onclick="goDetail(${sts.index})" id="fnametd"
											style="display: none;">${is.fname}</td>
										<td onclick="goDetail(${sts.index})" id="writertd"
											style="display: none;">${is.writer}</td>
										<td onclick="goDetail(${sts.index})" id="nametd">${is.name}</td>
										<td onclick="goDetail(${sts.index})" id="texttd">${is.text}</td>
										<td onclick="goDetail(${sts.index})" id="regdtetd"><fmt:formatDate
												value="${is.regdte}" /></td>
										<td onclick="goDetail(${sts.index})" id="readcnttd"
											style="display: none;">${is.readcnt}</td>
										<td id="btntd">
											<h1 style="display: none;">${sts.count}</h1>
											<button onclick="Update(${sts.index})" id="updatebtn"
												type="button" data-bs-toggle="modal"
												data-bs-target="#issueUpdate"
												class="btn btn-datatable btn-icon btn-transparent-dark me-2"
												onclick="">
												<i data-feather="edit"></i>
											</button> <a id="delbtn"
											class="btn btn-datatable btn-icon btn-transparent-dark"
											onclick="issueDel('${is.issue_no}')"><i
												data-feather="trash-2"></i></a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</form>
	</main>
	<form id="frm01" enctype="multipart/form-data" class="form"
		method="post" action="${path}/issueInsert.do">
		<div class="modal fade" id="reqmodal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">이슈 작성</h5>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="col-xl-25" style="float: none; margin: 0 auto;">
							<!-- Account details card-->
							<div class="card mb-4">
								<div class="card-body">
									<input type="hidden" name="refno"
										value="${empty issue.refno?'0': issue.refno}" />
									<!-- Form Row-->
									<!-- Form Group (first name)-->
									<div style="padding-bottom: 10px;" class="col-mb-6">
										<label class="small mb-1" for="inputFirstName">제목</label> <input
											class="form-control" id="subjectsub" placeholder="제목 입력"
											name="subject" value=""/>
									</div>
									<div style="padding-bottom: 10px;" class="col-mb-6">
										<label class="small mb-1" for="inputFirstName">프로젝트명</label> <select
											class="form-select" id="proid" name="proid">
											<option selected="" disabled="">선택:</option>
											<c:forEach var="p" items="${project}">
												<option id="userpro" value="${p.id}">${p.text}</option>

											</c:forEach>
										</select>
									</div>
									<div class="row gx-3 mb-3">
										<div class="col-md-6">
											<label class="small mb-1" for="inputFirstName">작성자</label>
											<div>
												<input style="background-color: white;" class="form-control"
													id="reqrequser" type="text" name="name"
													value="${login.name}" readonly /> <input
													style="display: none;" class="form-control" id="reqrequser"
													type="text" name="writer" value="${login.no}" readonly />
											</div>
										</div>
									</div>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">파일첨부</span>
										</div>
										<input type="file" name="report" class="form-control"
											placeholder="파일을 첨부하세요" />
									</div>
									<div class="input-group mb-3">
										<textarea id="contentsub" class="form-control" name="content"
											rows="10" placeholder="내용 입력하세요"></textarea>
									</div>
									<!-- Submit button-->
									<div></div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="insertProc()">완료</button>
						<button class="btn btn-secondary" type="button"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<form id="frm02" enctype="multipart/form-data" class="form"
		method="post" action="${path}/issueDetail.do">
		<div class="modal fade" id="issueDetail" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div 
					class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">이슈 상세</h5>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="col-xl-25" style="float: none; margin: 0 auto;">
							<!-- Account details card-->
							<div class="card mb-4">
								<div class="card-body">
									<div class="input-group mb-2 ">
										<div class="input-group-prepend ">
											<span class="text-center input-group-text ">이슈번호</span>
										</div>
										<input id="dtissue_no" name="no" class="form-control" value=""
											placeholder="제목 입력하세요" style="background-color: white"
											readonly />

										<div style="display: none;" class="input-group-prepend">
											<span class="text-center input-group-text">상위글번호</span>
										</div>
										<input style="display: none;" id="dtrefno" name="refno"
											class="form-control" value="" placeholder="제목 입력하세요"
											style="background-color: white" readonly />

									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">제 목</span>
										</div>
										<input id="dtsubject" name="subject" class="form-control"
											value="" placeholder="제목 입력하세요"
											style="background-color: white" readonly />
									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">프로젝트 명</span>
										</div>
										<input id="dttext" name="subject" class="form-control"
											value="" placeholder="프로젝트명 입력하세요"
											style="background-color: white" readonly />
									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">작성자</span>
										</div>
										<input id="dtname" name="writer" class="form-control" value=""
											placeholder="작성자 입력하세요" style="background-color: white"
											readonly />
										<div class="input-group-prepend">
											<span class="text-center input-group-text">첨부파일</span>
										</div>
										<input id="dtfname" name="fname"
											class="form-control" value="" />
									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">등록일</span>
										</div>
										<!-- 등록일/수정일은 vo로 할당이 형식이 맞지 않기 때문에
									name="@@@" 삭제 처리 -->
										<input id="dtregdte" class="form-control" value=""
											placeholder="작성자 입력하세요" style="background-color: white"
											readonly />
										<div class="input-group-prepend">
											<span class="text-center input-group-text">수정일</span>
										</div>

										<input id="dtuptdte" class="form-control" value=''
											placeholder="작성자 입력하세요" style="background-color: white"
											readonly />
									</div>
									<div class="row gx-3 mb-3">
										<textarea style="background-color: white" id="dtcontent"
											class="form-control" name="content" rows="10"
											placeholder="내용 입력하세요" readonly></textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<form id="frm04" enctype="multipart/form-data" class="form"
		method="post" action="${path}/updateIssue.do">
		<div class="modal fade" id="issueUpdate" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">이슈 수정</h5>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="col-xl-25" style="float: none; margin: 0 auto;">
							<!-- Account details card-->
							<div class="card mb-4">
								<div class="card-body">
									<div class="input-group mb-2 ">
										<div class="input-group-prepend ">
											<span class="text-center input-group-text ">이슈번호</span>
										</div>
										<input id="dtissue_no" name="issue_no" class="form-control"
											value="" placeholder="제목 입력하세요"
											style="background-color: white" readonly />

										<div style="display: none;" class="input-group-prepend">
											<span class="text-center input-group-text">상위글번호</span>
										</div>
										<input style="display: none;" id="dtrefno" name="refno"
											class="form-control" value="" placeholder="제목 입력하세요"
											style="background-color: white" readonly />

									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span style="border-color: #00BFFF"
												class="text-center input-group-text">제 목</span>
										</div>
										<input style="border-color: #00BFFF" id="dtsubject"
											name="subject" class="form-control" value=""
											placeholder="제목 입력하세요" />
									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">프로젝트명</span>
										</div>
										<input id="dttext" name="text" class="form-control" value=""
											placeholder="프로젝트명 입력하세요" style="background-color: white"
											readonly />
									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">작성자</span>
										</div>
										<input id="dtname" name="writer" class="form-control" value=""
											placeholder="작성자 입력하세요" style="background-color: white"
											readonly />
										<div class="input-group-prepend">
											<span class="text-center input-group-text">첨부파일</span>
										</div>
										<input onclick="ClickFile()" id="dtfname" name="fname"
											class="form-control" value="" style="background-color: white"
											readonly />
									</div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<span class="text-center input-group-text">등록일</span>
										</div>
										<!-- 등록일/수정일은 vo로 할당이 형식이 맞지 않기 때문에
									name="@@@" 삭제 처리 -->
										<input id="dtregdte" class="form-control" value=""
											placeholder="작성자 입력하세요" style="background-color: white"
											readonly />
										<div class="input-group-prepend">
											<span class="text-center input-group-text">수정일</span>
										</div>

										<input id="dtuptdte" class="form-control" value=''
											placeholder="작성자 입력하세요" style="background-color: white"
											readonly />
									</div>
									<div class="input-group mb-2">
										<textarea style="border-color: #00BFFF" id="dtcontent"
											class="form-control" name="content" rows="10"
											placeholder="내용 입력하세요"></textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button onclick="updateProc()" class="btn btn-primary"
							type="button">수정</button>
						<button class="btn btn-secondary" type="button"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</form>




	<footer class="footer-admin mt-auto footer-light">
		<div class="container-xl px-4">
			<div class="row">
				<div class="col-md-6 small">Copyright &copy; ISAAC PMS 2022</div>
				<div class="col-md-6 text-md-end small">
					<a href="#!">Privacy Policy</a> &middot; <a href="#!">Terms
						&amp; Conditions</a>
				</div>
			</div>
		</div>
	</footer>
</div>
</div>

<script type="text/javascript">

</script>
<script type="text/javascript">
	calDuration(6)
	var loginno = "${login.no}"
	for(no=0; no<$("#datatablesSimple tr #writertd").length; no++){   
		console.log($("#datatablesSimple tr #writertd").eq(no).text())     
		if(loginno != $("#datatablesSimple tr #writertd").eq(no).text()){			
			$("#datatablesSimple tr #btntd #delbtn").eq(no).css("display","none");
			$("#datatablesSimple tr #btntd #updatebtn").eq(no).css("display","none");
			if("${login.auth}" == "admin" || "${login.auth}" == "PM"){
				$("#datatablesSimple tr #btntd #delbtn").eq(no).css("display","");
				$("#datatablesSimple tr #btntd #updatebtn").eq(no).css("display","");
			}
		}  
	};

/* 	var loginno = "${login.no}"
		$(function(){			
		        console.log($("#writertd").eq(0).text())
		        console.log($("#writertd").eq(1).text())
		        console.log($("#writertd").eq(2).text())
		        console.log($("#writertd").eq(3).text())
		        console.log($("#writertd").eq(4).text())
		        console.log($("#writertd").eq(5).text())
			if(loginno != $("#writertd").eq(no).val()){
				$("#delbtn").css("display","none");
				$("#editbtn").css("display","none");
			}
			 
	}); */
	var isInsert = "${isInsert}"
	if (isInsert == "Y") {
		alert("등록성공했습니다!!")
		location.href = "${path}/issueList.do?owner_id="+loginno
	}
	function insertProc() {
		if (confirm("등록하시겠습니까?")) {
			var subjectVal = $("#subjectsub").val();
			if (subjectVal == "") {
				alert("제목을 등록하세요");
				$("[name=subject]").focus();
				return; // 프로세스를 중단 처리
			}
			var contVal = $("#contentsub").val();
			if (contVal == "") {
				alert("내용을 입력하세요");
				return; // 프로세스를 중단 처리
			}
			var proVal = $("#proid option:selected").val();
			if (proVal == "선택:") {
				alert("프로젝트를 선택하세요");
				return; // 프로세스를 중단 처리
			}
			document.querySelector("#frm01").submit();
		}
	}
	var upt = "${upt}"
	if(upt == "Y"){
		location.href = "${path}/issueList.do?owner_id="+loginno	
	}
	function updateProc() {
		if (confirm("수정하시겠습니까?")) {
			var subjectVal = $("#dtsubject").val();
			if (subjectVal == "") {
				alert("제목을 등록하세요");
				$("[name=subject]").focus();
				return; // 프로세스를 중단 처리
			}
			var contVal = $("#dtcontent").val();
			if (contVal == "") {
				alert("내용을 입력하세요");
				return; // 프로세스를 중단 처리
			}
			$("#frm04").submit();
			alert("수정성공했습니다!!")
			return;
		}
	}
	function goDetail(no) {
		document.querySelector("#Detailbtn").click();
		$("[id=dtsubject]").val($("[id=subjecttd]").eq(no).text())
		$("[id=dtproid]").val($("[id=proidtd]").eq(no).text())
		$("[id=dtissue_no]").val($("[id=issue_notd]").eq(no).text())
		$("[id=dtcontent]").val($("[id=contenttd]").eq(no).text())
		$("[id=dtuptdte]").val($("[id=uptdtetd]").eq(no).text())
		$("[id=dtlevel]").val($("[id=leveltd]").eq(no).text())
		$("[id=dtfname]").val($("[id=fnametd]").eq(no).text())
		$("[id=dtwriter]").val($("[id=writertd]").eq(no).text())
		$("[id=dttext]").val($("[id=texttd]").eq(no).text())
		$("[id=dtregdte]").val($("[id=regdtetd]").eq(no).text())
		$("[id=dtreadcnt]").val($("[id=readcnttd]").eq(no).text())
		$("[id=dtrefno]").val($("[id=refnotd]").eq(no).text())
		$("[id=dtname]").val($("[id=nametd]").eq(no).text())
	}
	function Update(no) {
		$("[id=dtsubject]").val($("[id=subjecttd]").eq(no).text())
		$("[id=dtproid]").val($("[id=proidtd]").eq(no).text())
		$("[id=dtissue_no]").val($("[id=issue_notd]").eq(no).text())
		$("[id=dtcontent]").val($("[id=contenttd]").eq(no).text())
		$("[id=dtuptdte]").val($("[id=uptdtetd]").eq(no).text())
		$("[id=dtlevel]").val($("[id=leveltd]").eq(no).text())
		$("[id=dtfname]").val($("[id=fnametd]").eq(no).text())
		$("[id=dtwriter]").val($("[id=writertd]").eq(no).text())
		$("[id=dttext]").val($("[id=texttd]").eq(no).text())
		$("[id=dtregdte]").val($("[id=regdtetd]").eq(no).text())
		$("[id=dtreadcnt]").val($("[id=readcnttd]").eq(no).text())
		$("[id=dtrefno]").val($("[id=refnotd]").eq(no).text())
		$("[id=dtname]").val($("[id=nametd]").eq(no).text())
	}
		$("#dtfname").click(function(){
			if($("#dtfname").val()== ""){
				alert("다운로드할 파일이 없습니다.")
				return;
			}
			if(confirm("다운로드하시겠습니까?")){
				location.href="${path}/download.do?fname="+$(this).val()
			}
		});
	function issueDel(no){
		if(confirm("삭제하시겠습니까?")){
			location.href="${path}/deleteIssue.do?Issue_no="+no;
			alert("삭제완료했습니다!!")
		}
		location.href = "${path}/issueList.do?owner_id="+loginno
	}
	if($("#userpro").val() == null){
		$("#btnreq").attr("data-bs-target","")
	}
	$("#btnreq").click(function(){
		if($("#userpro").val() == null){
			alert("담당프로젝트가 존재하지 않아\n이슈작성이 불가합니다.")
			return;
		}
	});
</script>
</html>
