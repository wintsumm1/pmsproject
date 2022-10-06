<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<meta charset="UTF-8">
<head>
<%-- jquery --%>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<%-- jquery --%>
<link rel="stylesheet" href="${path}/a00_com/jquery.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="${path}/a00_com/jquery.min.js"></script>
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


<script src="${path}/a00_com/popper.min.js"></script>
<script data-search-pseudo-elements="" defer=""
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
<script src="${path}/a02_com_fun/calDuration.js"></script>
</head>
<%@include file="side_bar.jsp"%>
<div id="layoutSidenav_content">
	<main>
		<header
			class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
			<div class="container-fluid px-4">
				<div class="page-header-content">
					<div class="row align-items-center justify-content-between pt-3">
						<div class="col-auto mb-3">
							<h1 id="riskWhat" class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="list"></i>
								</div>
								Risk List
							</h1>
						</div>
						<div class="col-12 col-xl-auto mb-3">
							<button class="btn btn-sm btn-light text-primary" id="btnreq"
								type="button" data-bs-toggle="modal" data-bs-target="#reqmodal">
								<i class="me-1" data-feather="plus"></i>Application Risk
							</button>
							<button class="btn btn-primary" id="adminbtn" type="button"
								data-bs-toggle="modal" data-bs-target="#adminmodal"
								style="display: none">관리</button>
						</div>
					</div>

				</div>
			</div>
		</header>
		<form id="frm03">
			<!-- Main page content-->
			<div class="container-fluid px-4">
				<div class="card">
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th style="display: none;">리스크 번호</th>
									<th>번호</th>
									<th>신청일</th>
									<th>프로젝트명</th>
									<th>요청자</th>
									<th>기간</th>
									<th>요청사유</th>
									<th>대체자</th>
									<th>상태</th>
									<th>사유</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th style="display: none;">리스크 번호</th>
									<th>번호</th>
									<th>신청일</th>
									<th>프로젝트명</th>
									<th>요청자</th>
									<th>기간</th>
									<th>요청사유</th>
									<th>대체자</th>
									<th>상태</th>
									<th>사유</th>
								</tr>
							</tfoot>

							<tbody>
								<c:forEach var="rk" items="${rlist}" varStatus="sts">

									<tr>

										<td style="display: none;" onclick="goAdmin('${sts.index}')"
											id="risk_notd">${rk.risk_no}</td>
										<td style="display: none;" onclick="goAdmin('${sts.index}')"
											id="proidtd">${rk.id}</td>
										<td style="display: none;" onclick="goAdmin('${sts.index}')"
											id="repmemnotd">${rk.repmemno}</td>
										<td style="display: none;" onclick="goAdmin('${sts.index}')"><input
											name="owner_id" ${login.no} /></td>
										<td onclick="goAdmin('${sts.index}')" id="cnttd">${sts.count}</td>
										<td onclick="goAdmin('${sts.index}')" id="reqdatetd">20${rk.reqdate}</td>
										<td onclick="goAdmin('${sts.index}')" id="projecttd">${rk.project}</td>
										<td onclick="goAdmin('${sts.index}')" id="requsertd">${rk.requser}</td>
										<td onclick="goAdmin('${sts.index}')" id="totdatetd">${rk.totdate}</td>
										<td onclick="goAdmin('${sts.index}')" id="req_causetd">${rk.req_cause}</td>
										<td onclick="goAdmin('${sts.index}')" id="repnametd">${rk.repname}</td>
										<td onclick="goAdmin('${sts.index}')" id="situationtd">${rk.situation}</td>
										<td id="companiontd">
											<!-- Button trigger modal -->
											<button class="btn btn-primary btn-sm" type="button"
												data-bs-toggle="modal"
												data-bs-target="#exampleModal${rk.cnt}">사유보기</button> <!-- Modal -->
											<div class="modal fade" id="exampleModal${rk.cnt}"
												tabindex="-1" role="dialog"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">사유</h5>
															<button class="btn-close" type="button"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">${rk.companion}</div>
														<div class="modal-footer">
															<button class="btn btn-secondary" type="button"
																data-bs-dismiss="modal">Close</button>
														</div>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</form>
		<%--
  <h2 data-toggle="modal" data-target="#exampleModalCenter">리스트 신청</h2>
 --%>

		<form id="frm01" class="form" method="post"
			action="${path}/insertRisk.do">
			<div class="modal fade" id="reqmodal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div style="width: 600px;" class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">리스크 신청</h5>
							<button class="btn-close" type="button" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="col-xl-25" style="float: none; margin: 0 auto;">
								<!-- Account details card-->
								<div class="card mb-4">
									<div class="card-header">리스크 신청</div>
									<div class="card-body">
										<input type="hidden" name="refno"
											value="${empty param.refno?'0': param.refno}" /> <input
											type="hidden" name="situation" value="신청" /> <input
											type="hidden" name="companion" value="신청상태입니다." />
										<!-- Form Row-->
										<!-- Form Group (first name)-->
										<div class="col-mb-6">
											<label class="small mb-1" for="inputFirstName">프로젝트명</label>
											<select class="form-select" name="proid" id="proid">
											<option selected="" disabled="">선택:</option>
												<c:forEach var="p" items="${userPro}">
													<option id="userpro" value="${p.id}">${p.text}</option>
													<%--
								                    <input class="form-control" id="reqporject" type="" placeholder="프로젝트명 입력" name="proid" value="${}">
								                    --%>
												</c:forEach>
											</select>
										</div>
										<div class="row gx-3 mb-3">
											<div class="col-md-6">
												<label class="small mb-1" for="inputFirstName">요청자</label>
												<div class="form-control" id="reqrequser" type="text"
													readonly>${login.name}</div>
												<input type="hidden" name="reqmemno" value="${login.no}" />

											</div>
											<div class="col-md-6">
												<label class="small mb-1" for="inputLastName">요청일</label> <input
													class="form-control" id="todayreqday" name="reqdate"
													type="date" readonly>
											</div>
										</div>

										<div class="row gx-3 mb-3">
											<div class="col-md-6">
												<label class="small mb-1" for="inputLastName">기간</label>
												<div class="input-group input-group-joined">
													<span class="input-group-text"> <i
														data-feather="calendar"></i>
													</span> <input class="form-control ps-0" id="daterange"
														name="totdate" type="text" />
												</div>
											</div>
											<div class="col md-6">
												<label class="small mb-1">요청사유</label> <select
													id="req_cause" name="req_cause" class="form-select"
													aria-label="Default select example">
													<option selected="" disabled="">선택:</option>
													<option value="휴가">휴가</option>
													<option value="병가">병가</option>
													<option value="개인사유">개인사유</option>
													<option value="기타">기타</option>
												</select>
											</div>
										</div>
										<div class="col-mb-6">
											<label class="small mb-1" for="inputEmailAddress">대체자</label>
											<select class="form-select" name="repmemno">
												<c:forEach var="m" items="${member}">
													<option value="${m.no}">${m.name}</option>
												</c:forEach>
											</select>
										</div>
										<!-- Submit button-->
										<div></div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								onclick="insertProc()">신청</button>
							<button class="btn btn-secondary" type="button"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<form id="frm02" class="form" method="post"
			action="${path}/updateRisk.do">

			<div class="modal fade" id="adminmodal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div style="width: 600px;" class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">리스크 관리</h5>
							<button class="btn-close" type="button" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="col-xl-25" style="float: none; margin: 0 auto;">
								<!-- Account details card-->
								<div class="card mb-4">
									<div class="card-header">리스크 관리</div>
									<div class="card-body">
										<input style="display: none;" class="form-control"
											id="adrisk_no" type="text" name="risk_no" readonly>
										<!-- Form Row-->
										<!-- Form Group (first name)-->
										<div class="col-mb-6">
											<label class="small mb-1" for="inputFirstName">프로젝트명</label>
											<input class="form-control" id="adproject" type="text"
												readonly> <input style="display: none;"
												class="form-control" id="adproid" name="id" type="text"
												readonly>

										</div>
										<div class="row gx-3 mb-3">
											<div class="col-md-6">
												<label class="small mb-1" for="inputFirstName">요청자</label> <input
													class="form-control" id="adrequser" type="text"
													placeholder="요청자 입력" value="" readonly>
											</div>
											<div class="col-md-6">
												<label class="small mb-1" for="inputLastName">요청일</label> <input
													class="form-control" id="adreqdate" type="text"
													placeholder="요청일 입력" value="" readonly>
											</div>
										</div>
										<div class="col-mb-6">
											<label class="small mb-1" for="inputEmailAddress">기간</label><br>
											<input class="form-control" id="adtotdate" type="text"
												placeholder="기간" value="" readonly>
										</div>

										<div class="row gx-3 mb-3">
											<div class="col-md-6">
												<label class="small mb-1" for="inputFirstName">대체자</label> <input
													class="form-control" id="adrepname" type="text"
													placeholder="대체자 입력" value="" readonly> <input
													style="display: none;" class="form-control" id="adrepmemno"
													type="text" name="owner_id" placeholder="대체자 입력" readonly>
											</div>
											<div class="col-md-6">
												<label class="small mb-1" for="inputLastName">요청사유</label> <input
													class="form-control" id="adreqcause" type="text"
													placeholder="요청사유 입력" value="" readonly>
											</div>
										</div>
										<div class="mb-3">
											<label class="small mb-1">승인/반려</label> <select
												id="adsituation" name="situation" class="form-select"
												aria-label="Default select example">
												<option selected="" disabled="">선택:</option>
												<option value="승인">승인</option>
												<option value="반려">반려</option>
											</select>
										</div>
										<div class="col-mb-6">
											<label class="small mb-1" for="inputEmailAddress">사유</label>
											<input name="companion" class="form-control" id="adcompanion"
												type="text" placeholder="사유 입력" value="">
										</div>
										<!-- Submit button-->

									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button onclick="updateProc()" class="btn btn-primary"
								type="button">제출</button>
							<button id="closebtn" class="btn btn-secondary" type="button"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</main>
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
<%-- date --%>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script type="text/javascript">
$(function() {
	$("#daterange").daterangepicker(
			{
				"locale" : {
					format : 'YYYY/MM/DD'
				}
			},
			function(start, end, label) {
				console.log("A new date selection was made: "
						+ start.format('YYYY-MM-DD') + ' to '
						+ end.format('YYYY-MM-DD'));
			});
});
	window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		req = document.getElementById("todayreqday");
		req.value = today;
	}
</script>
<script type="text/javascript">
	calDuration(7)
	// 선택된 페이지 크기 설정..
	$("[name=pageSize]").val("${riskSch.pageSize}");
	// 페이지 크기 변경시 마다, controller 단호출..
	$("[name=pageSize]").change(function() {
		$("[name=curPage]").val("1");
		$("#frm03").submit();
	});
	var loginno = "${login.no}"
	var isInsert = "${isInsert}"
	if (isInsert == "Y") {
		alert("등록성공했습니다!!")
		location.href = "${path}/riskSub.do?owner_id=" + loginno
	}
	function insertProc() {
		if (confirm("등록하시겠습니까?")) {
			var proVal = $("#proid option:selected").val();
			if (proVal == "선택:") {
				alert("프로젝트를 선택하세요");
				return; // 프로세스를 중단 처리
			}
			var causeVal = $("#req_cause option:selected").val();
			if (causeVal == "선택:") {
				alert("요청사유를 등록하세요");
				return; // 프로세스를 중단 처리
			}
			document.querySelector("#frm01").submit();
		}
	}
	var loginAuth = "${login.auth}"

	if (loginAuth == "admin" || loginAuth == "PM") {
		function goAdmin(no) {
			document.querySelector("#adminbtn").click();
			$("[id=adproject]").val($("[id=projecttd]").eq(no).text())
			$("[id=adproid]").val($("[id=proidtd]").eq(no).text())
			$("[id=adrisk_no]").val($("[id=risk_notd]").eq(no).text())
			$("[id=adrequser]").val($("[id=requsertd]").eq(no).text())
			$("[id=adreqdate]").val($("[id=reqdatetd]").eq(no).text())
			$("[id=adtotdate]").val($("[id=totdatetd]").eq(no).text())
			$("[id=adrepname]").val($("[id=repnametd]").eq(no).text())
			$("[id=adreqcause]").val($("[id=req_causetd]").eq(no).text())
			$("[id=adrepmemno]").val($("[id=repmemnotd]").eq(no).text())
		}
		$("#riskWhat").text("Risk Admin");
	}
	var isProject = "${isProject}"
	if (isProject == "Y") {
		alert("등록을완료했습니다!!")
		location.href = "${path}/riskSub.do?owner_id=" + loginno
	}
	var isUpdate = "${isUpdate}"
	if (isUpdate == "Y") {
		alert("등록을완료했습니다!!")
		$("#frm02").attr("action", "${path}/updateRisk.do").submit();
		location.href = "${path}/riskSub.do?owner_id=" + loginno
	}

	function updateProc() {
		var companionVal = $("#adcompanion").val();
		if ($("#adsituation option:selected").val() == "반려"
				&& companionVal == "") {
			alert("반려 사유를 작성해주세요");
			$("[id=adcompanion]").focus();
			return; // 프로세스를 중단 처리
		}
		if ($("#adsituation option:selected").val() == "선택:") {
			alert("승인/반려를 선택해주세요");
			$("#adsituation").focus();
			return; // 프로세스를 중단 처리
		}
		if ($("#adsituation option:selected").val() == "승인") {
			$("#frm02").attr("action", "${path}/updateProject.do").submit();
		}
		if ($("#adsituation option:selected").val() == "승인"
				&& companionVal == "") {
			$("#adcompanion").val("승인상태입니다.")
			$("#frm02").attr("action", "${path}/updateProject.do").submit();
			return;
		}
		$("#frm02").attr("action", "${path}/updateRisk.do").submit();
	}
	if($("#userpro").val() == null){
		$("#btnreq").attr("data-bs-target","")
	}
	$("#btnreq").click(function(){
		if($("#userpro").val() == null){
			alert("담당프로젝트가 존재하지 않아\n리스크신청이 불가합니다.")
			return;
		}
	});
</script>
</html>