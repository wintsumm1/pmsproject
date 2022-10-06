<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>회의록 - ISAAC PMS</title>
<link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
<%-- bootstrap --%>
<link rel="stylesheet" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
<style>
.container {
    max-width: 1440px;
	padding-top: 59px;
    padding-left: 190px;
   
}

td{text-align:center;}


#searchBtn {
	display : none;	
}	
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
	});
	
	$(function(){
		var loginAuth = "${login.auth}"
			if (loginAuth == "user") {
				$("#btnreq").css("display","none");
				for(no=0; no<$("#datatablesSimple tr #writertd").length; no++){
					$("#datatablesSimple tr #checktd").eq(no).css("display","none");
					$("#datatablesSimple tr #dd").eq(no).css("display","none");
				}
			}
		var chkObj = document.getElementsByName("minutesno");
		var titleObj = document.getElementsByName("title");
		var rowCnt = chkObj.length;
		
		$("input[name='allCheck']").click(function(){
			var chk_listArr = $("input[name='minutesno']");
			for (var i=0; i<chk_listArr.length; i++){
				chk_listArr[i].checked = this.checked;
			}
		});
		$("input[name='minutesno']").click(function(){
			if($("input[name='minutesno']:checked").length == rowCnt){
				$("input[name='allCheck']")[0].checked = true;
			}
			else{
				$("input[name='allCheck']")[0].checked = false;
			}
		});
/* 	    if( $(this).is(":checked") == true ){
	    	var chk_titleArr = $("input[name='title']");
	    	chk_titleArr[i].checked = this.checked;
	    }   */

	});
	function deleteValue(){
		var valueArr = [];
		$("input[name=minutesno]:checked").each(function(){
			valueArr.push($(this).val());
		});
		// console.log("체크된 값 total : " + valueArr);
	    if (valueArr.length == 0){
	    	alert("선택된 글이 없습니다.");
	    	return;
	    }
	    if(confirm("정말 삭제하시겠습니까?")) {
			alert("삭제되었습니다.");
		    $("#frm02").submit();
		    return;
		    location.href="${path}/minutesList.do";
		}	
	}	
	function goInsert(){
		location.href="${path}/minutesInsertForm.do"
	}
	function goDetail(no){
		location.href="${path}/minutesDetail.do?no="+no;
	}		
</script>
</head>

<body class="nav-fixed">
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
								MINUTES
							</h1>
							
						</div>
						<div class="col-12 col-xl-auto mb-3">
							<a id="new_project" class="btn btn-sm btn-light text-primary" href="${path}/minutesInsertForm.do">
                               <i class="me-1" data-feather="plus"></i>
                               새 회의록 작성
                            </a>
                            <%--
							<button onclick="goInsert()" class="btn btn-sm btn-light text-primary" id="btnreq"
								type="button" data-bs-toggle="modal" data-bs-target="#reqmodal">
								<i class="me-1" data-feather="plus"></i>새 회의록 작성
							</button>
							--%>
							<button onclick="deleteValue()" class="btn btn-sm btn-light text-primary" id="btnreq"
								type="button" data-bs-toggle="modal" data-bs-target="#reqmodal">
								<i class="me-1" data-feather="plus"></i>선택항목 삭제
							</button>
						</div>
					</div>

				</div>
			</div>
		</header>
	<!-- Main page content-->
			<div class="container-fluid px-4">
				<div class="card">
					<div class="card-body">
				  <form id="frm02" class="form" action="${path}/deleteMiutes2.do">
					<table id="datatablesSimple">
			                <thead>
			                    <tr><th id="dd" style='width: 5%; text-align: center;'><input id="allCheck" type="checkbox" name="allCheck"/></th>
			                    	<th style="width: 5%; text-align: center;">NO</th>
			                        <th style="width: 40%; text-align: center;">TITLE</th>
			                        <th style="width: 20%; text-align: center;">WRITER</th>
			                        <th style="width: 15%; text-align: center;">REGDATE</th>
			                        <th style="width: 15%; text-align: center;">UPDATE DATE</th>
			                        <th style="width: 5%; text-align: center;">VIEW</th></tr>
			                </thead>	
	                
							<tbody>      
			                 	<!-- controller에서 넘겨준 모델데이터 : mlist -->
		    					<c:forEach var="md" items="${mlist}">
			                        <tr ondblclick="goDetail('${md.minutesno}')">
				                        <td id="checktd"><input id="minuteschk" name="minutesno" type="checkbox" value="${md.minutesno}/${md.title}"/></td>
				                        <td>${md.minutesno}</td>
				                        <td id="titletd">${md.title}</td>
				                        <td id="writertd">${md.writer}</td>
							    		<td><fmt:formatDate value="${md.regdte}"/></td>
							    		<td><fmt:formatDate value="${md.uptdte}"/></td>
				                        <td>${md.readcnt}</td>
			                        </tr>
			                    </c:forEach>                    
							</tbody>
					</table>
					</form></div>
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
	<script type="text/javascript">
	/*
		function goPage(cnt){
			// 요청값으로 현재 클릭한 페이지를 설정하고, 서버에 전달..
			$("[name=curPage]").val(cnt);
			$("form").submit();
		}
	*/
	$( document ).ready( function() {
		$('#dd a').removeClass( 'dataTable-sorter' );
	});
	
	</script>
</body>
</html>