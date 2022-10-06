<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
<%-- 간트차트 --%>
<link rel="stylesheet"
	href="${path}/a01_com_lib/gantt/codebase/skins/dhtmlxgantt_material.css">
<script src="${path}/a01_com_lib/gantt/codebase/dhtmlxgantt.js?v=7.1.12"></script>
<%-- 
<link rel="stylesheet" href="${path}/a01_com_lib/gantt/codebase/dhtmlxgantt.css?v=7.1.12">
--%>
<link rel="stylesheet" href="./common/jquery_multiselect.css?v=7.1.12">
<script src="./common/jquery_multiselect.js?v=7.1.12"></script>

<%-- JQuery --%>
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.css?v=7.1.12">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.js?v=7.1.12"></script>

<link rel="icon" type="image/x-icon" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/favicon.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather	-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>


<style type="text/css" >
	html, body {
		height: 100%;
		padding: 0px;
		margin: 0px;
		overflow: hidden;
	}
	#spinner-div {
		position: fixed;
		display: flex;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		text-align: center;
		justify-content: center;
		align-items: center;
		background-color: rgba(0, 0, 0, 0.4);
		z-index: 2;
	}
	

         
</style>

<script type="text/javascript">
$(document).ready(function(){
	
	getData()
	
	$("#toastAlert").toast("show")
	
	
	$("#regBtn").click(function () {
		if( $("[name=text]").val() == "" ) {
			alert("일정 이름을 확인해주세요.")
			$("[name=text]").focus()
			return;	
		}
		$.ajax({
     		type:"post",
     		url: "${path}/insertGantt.do",
     		dataType: "json",
     		data: $("#regForm").serialize(),
     		beforeSend:function() {
     			$('#spinner-div').show()
     		},
     		success:function(data) {
     			$("#toastInsert").toast("show");
     			$("#closeBtn").click()
     		},
     		complete:function(){
     			$('#spinner-div').hide()
     			getData()
     		},
     		error:function(err) {
     			alert("insertErorr:"+err)
		  		console.log(err)
 		  	}
     	})
	})
	
	$("#uptBtn").click(function () {
		$.ajax({
     		type:"post",
     		url: "${path}/updateGantt.do",
     		dataType: "json",
     		data: $("#regForm").serialize(),
     		beforeSend:function() {
     			$('#spinner-div').show()
     		},
     		success:function(data) {
     			$("#toastBasic").toast("show");
     			$("#closeBtn").click()
     		},
     		complete:function(){
     			$('#spinner-div').hide()
     			getData()
     		},
     		error:function(err) {
		  		console.log(err)
 		  	}
     	})
	})
	
	$("#delBtn").click(function () {
		if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				type:"post",
				url: "${path}/deleteGantt.do",
	     		dataType: "json",
	     		data: "id="+ $("[name=id]").val(),
	     		beforeSend:function() {
	     			$("#closeBtn").click()
	     			$('#spinner-div').show()
	     		},
	     		success:function(data) {
	     			$("#toastDelete").toast("show");
	     			gantt.refreshData()
	     			location.reload()
	     		},
	     		complete:function(){
	     			$('#spinner-div').hide()
	     			getData()
	     		},
	     		error:function(err) {
	     			alert("삭제 에러")
			  		console.log(err)
	 		  	}
			})
		}
	})
	<%--------- zoom config --------%>
	var zoomConfig = {
		levels: [
			{
				name: "day",
				scale_height: 27,
				min_column_width: 80,
				scales: [
					{ unit: "day", step: 1, format: "%d %M" }
				]
			},
			{
				name: "week",
				scale_height: 50,
				min_column_width: 50,
				scales: [
					{
						unit: "week", step: 1, format: function (date) {
							var dateToStr = gantt.date.date_to_str("%d %M");
							var endDate = gantt.date.add(date, -6, "day");
							var weekNum = gantt.date.date_to_str("%W")(date);
							return "#" + weekNum + ", " + dateToStr(date) + " - " + dateToStr(endDate);
						}
					},
					{ unit: "day", step: 1, format: "%j %D" }
				]
			},
			{
				name: "month",
				scale_height: 50,
				min_column_width: 120,
				scales: [
					{ unit: "month", format: "%F, %Y" },
					{ unit: "week", format: "Week #%W" }
				]
			},
			{
				name: "quarter",
				height: 50,
				min_column_width: 90,
				scales: [
					{ unit: "month", step: 1, format: "%M" },
					{
						unit: "quarter", step: 1, format: function (date) {
							var dateToStr = gantt.date.date_to_str("%M");
							var endDate = gantt.date.add(gantt.date.add(date, 3, "month"), -1, "day");
							return dateToStr(date) + " - " + dateToStr(endDate);
						}
					}
				]
			},
			{
				name: "year",
				scale_height: 50,
				min_column_width: 30,
				scales: [
					{ unit: "year", step: 1, format: "%Y" }
				]
			}
		]
	};
	gantt.ext.zoom.init(zoomConfig);
	gantt.ext.zoom.setLevel("week");
	function zoomIn() {
		gantt.ext.zoom.zoomIn();
	}
	function zoomOut() {
		gantt.ext.zoom.zoomOut()
	}
	<%-- marker --%>
	gantt.plugins({ 
	    marker: true 
	}); 
	
	var dateToStr = gantt.date.date_to_str(gantt.config.task_date);
	
	var markerId = gantt.addMarker({
	    start_date: new Date(), //a Date object that sets the marker's date
	    css: "today", //a CSS class applied to the marker
	    text: "현재", //the marker title
	    title: dateToStr( new Date()) // the marker's tooltip
	});
	
	setInterval(function(){
	    var today = gantt.getMarker(markerId);
	    today.start_date = new Date();
	    today.title = gantt.date.date_to_str(today.start_date);
	    gantt.updateMarker(markerId);
	}, 1000*60);
	
	<%-------- date config---------%>
	gantt.config.date_format = "%Y-%m-%d %H:%i:%s";
	
	<%-------- drag config---------%>
	gantt.plugins({
		drag_timeline: true
	});
	<%-------- branch config---------%>
	gantt.config.order_branch = "marker";
	gantt.config.order_branch_free = "marker";
	
	<%-------- tree config---------%>
	gantt.config.open_tree_initially = true;
	<%-- column 간격 조정 --%>
	gantt.config.grid_elastic_columns = true;
	gantt.config.reorder_grid_columns = true;
	
	
	function getData() {
		var paramId = "${param.id}"
		if( paramId==null || paramId=="") {
			alert("project List에서 선택해주세요")
			location.href="${path}/projectList.do"
			return;
		} else {
		$.ajax({
				type:"post",
				url: "${path}/ganttList.do",
				data: "id="+paramId,
				dataType:"json",
				beforeSend:function() {
	     			$('#spinner-div').show()
	     		},
				success:function(data) {
					function byId(list, id) {
						for (var i = 0; i < list.length; i++) {
							if (list[i].owner_id == id) {
								return list[i].ownerName || "";
							} 
						}
						return "";
					}
					
					gantt.config.columns = [
						{name: "text", label: "프로젝트", tree: true, width: 150,resize: true},
						{name: "start_date", label: "시작일",align: "center", width: 90, resize: true},
						{name: "duration", label: "기간",align: "center", width: 60, resize: true},
						{name: "end_date", label: "종료일",align: "center", width: 90, resize: true},
						{name: "owner", label: "담당자",width: 80, align: "center", template: function (item) {
							return byId(data.data, item.owner_id)}},
						{name: "add", width: 40}
					];
					
					gantt.init("gantt_here");
					
					gantt.parse(
						data,"json"
					)
					
				},
				complete:function(){
	     			$('#spinner-div').hide()
	     		},
				error:function(err) {
				 console.log(err)
				}
			});
		}
	}
	
	
	
	$("[name=start_date]").val( new Date().toISOString().substring(0, 10) )
	
	$("[name=start_date]").change(function () {
		const s = $("[name=start_date]").val()
		var sDate = new Date( s )
		sDate.setDate( sDate.getDate() + parseInt($("[name=duration]").val()) )
		$("[name=end_date]").val( sDate.toISOString().substring(0, 10) )
	})
	
	$("[name=duration]").change(function() {
		var duration = $("[name=duration]").val()
		const s = $("[name=start_date]").val()
		var sDate = new Date( s )
		sDate.setDate( sDate.getDate() + parseInt(duration) )
		$("[name=end_date]").val( sDate.toISOString().substring(0, 10) )
	})
	
	$("#plusBtn").click(function() {
		$("[name=duration]").val( parseInt( $("[name=duration]").val() ) + 1)
		var duration = $("[name=duration]").val()
		const e = $("[name=end_date]").val()
		var eDate = new Date( e )
		eDate.setDate( eDate.getDate() + 1 )
		$("[name=end_date]").val( eDate.toISOString().substring(0, 10) )
		
	})
	$("#minusBtn").click(function() {
		$("[name=duration]").val( parseInt( $("[name=duration]").val() ) - 1)
		if($("[name=duration]").val() < 0) parseInt($("[name=duration]").val(0))
		var duration = $("[name=duration]").val()
		const e = $("[name=end_date]").val()
		var eDate = new Date( e )
		eDate.setDate( eDate.getDate() - 1 )
		$("[name=end_date]").val( eDate.toISOString().substring(0, 10) )
		if(new Date ( $("[name=end_date]").val() ) <= new Date ( $("[name=start_date]").val() ) ) {
			$("[name=end_date]").val($("[name=start_date]").val())  
		}
	})
	gantt.attachEvent("onGridHeaderClick", function (id,e) {
		if(e.target.getAttribute("class") == "gantt_grid_head_cell gantt_grid_head_add gantt_last_cell ") {
			alert("대분류는 프로젝트 센터에서 등록 할 수 있습니다. :)")
		}
	})
	
	// 하위 목록 토글 버튼
	gantt.attachEvent("onTaskOpened", function(id) {
			updateForm(id)
	})
	
	gantt.attachEvent("onTaskClosed", function(id) {
			updateForm(id)
	})
	
	// 수직 이동
	gantt.attachEvent("onRowDragEnd", function(id, parent, tindex){
		if ("${login.auth}" == 'admin' || "${login.auth}" == 'PM' || "${login.no}" == gantt.getTask(id).owner_id) {
			gantt.eachTask(function(task){updateForm(task.id)})
		} else {
			alert("권한이 없습니다.")
		}
	});
	// 하위 일정 추가
	var startDate = new Date().toISOString().substring(0, 10)
	var endDate = new Date( new Date().setDate(new Date().getDate() + parseInt( $("[name=duration]").val() ) ) ).toISOString().substring(0, 10)
	gantt.attachEvent("onTaskClick", function(id,e){
		if(e.target.getAttribute("class") == "gantt_add") {
			if ("${login.auth}" == 'admin' || "${login.auth}" == 'PM') {
				$("#regModalBtn").click();	
				$("#regForm")[0].reset();
		    	$("[name=text]").val("NEW TASK")
		    	$("[name=status_no]").attr("checked",false)
		    	$("[name=status_no]").eq(0).attr("checked",true)
		    	$("[name=priority]").attr("checked",false)
		    	$("[name=priority]").eq(0).attr("checked",true)
		    	$("[name=owner_id]").val()
				$("[name=start_date]").val( startDate )
				$("[name=end_date]").val( endDate )
				$("[name=parent]").val(id)
				$("[name=contents]").val("")
				$("[name=progress]").val(0)
				$("[name=display_order]").val(0)
				$("#regBtn").show()
				$("#uptBtn").hide()
				$("#delBtn").hide()
			} else {
				alert("권한이 없습니다.")
			}
		}
		if(e.target.getAttribute("class") == "gantt_tree_icon gantt_close") {
			gantt.close(id);
		}
		if(e.target.getAttribute("class") == "gantt_tree_icon gantt_open") {
			gantt.open(id);
		}
	});
	
	
	// 일정 수정
	gantt.attachEvent("onTaskDblClick", function (id,e) {
		if(e.target.getAttribute("class") == "gantt_task_content") {
			if ("${login.auth}" == 'admin' || "${login.auth}" == 'PM' || "${login.no}" == gantt.getTask(id).owner_id) {
				$("#exampleModalLabel").text("일정 변경")
				var date = new Date(gantt.getTask(id).start_date)	
				date.setDate(date.getDate() + 1)
				var eDate = new Date(gantt.getTask(id).end_date)
				eDate.setDate(eDate.getDate() + 1)
				$("#regForm")[0].reset();
				$("#regModalBtn").click();
				$("[name=id]").val(gantt.getTask(id).id)
				$("[name=text]").val(gantt.getTask(id).text)
				$("[name=status_no]").attr("checked",false)
				$("[name=status_no]").eq(gantt.getTask(id).status_no - 1).attr("checked",true)
				$("[name=priority]").attr("checked",false)
	    		$("[name=priority]").eq(gantt.getTask(id).priority).attr("checked",true)
				$("[name=owner_id]").val(gantt.getTask(id).owner_id)
				$("[name=start_date]").val(date.toISOString().substring(0, 10))
				$("[name=duration]").val(gantt.getTask(id).duration)
				$("[name=end_date]").val(eDate.toISOString().substring(0, 10))
				$("[name=parent]").val(gantt.getTask(id).parent)
				$("[name=contents]").val(gantt.getTask(id).contents)
				$("[name=progress]").val(gantt.getTask(id).progress)
				$("[name=open]").val(gantt.getTask(id).$open)
				$("[name=display_order]").val(gantt.getTask(id).$index)
				$("#regBtn").hide()
				$("#uptBtn").show()
				$("#delBtn").show()
			} else {
				alert("권한이 없습니다.")
			}
		}
	});
	
	gantt.attachEvent("onAfterTaskDrag", function (id, mode, old_task, original) {
		if ("${login.auth}" == 'admin' || "${login.auth}" == 'PM' || "${login.no}" == gantt.getTask(id).owner_id) {
			if(mode == gantt.config.drag_mode.resize){
				updateForm(id)
			}
			
			if(mode == gantt.config.drag_mode.move){
				updateForm(id)
			}
			
			if(mode == gantt.config.drag_mode.progress){
				updateForm(id)
			}
		} else {
			alert("권한이 없습니다.")
		}
		
	})
	

		
	function updateForm(id) {
		if ("${login.auth}" == 'admin' || "${login.auth}" == 'PM' || "${login.no}" == gantt.getTask(id).owner_id) {
			var date = new Date(gantt.getTask(id).start_date)
			date.setDate(date.getDate() + 1)
			var eDate = new Date(gantt.getTask(id).end_date)
			eDate.setDate(eDate.getDate() + 1)
			$("#regForm")[0].reset();
			$("[name=id]").val(gantt.getTask(id).id)
			$("[name=text]").val(gantt.getTask(id).text)
			$("[name=owner_id]").val(gantt.getTask(id).owner_id)
			$("[name=status_no]").val(gantt.getTask(id).status_no)
			$("[name=status_no]").eq(gantt.getTask(id).status_no - 1).attr("checked", true)
			$("[name=priority]").val(gantt.getTask(id).priority)
	    	$("[name=priority]").eq(gantt.getTask(id).priority).attr("checked",true)
			$("[name=start_date]").val(date.toISOString().substring(0, 10))
			$("[name=duration]").val(gantt.getTask(id).duration)
			$("[name=end_date]").val(eDate.toISOString().substring(0, 10))
			$("[name=parent]").val(gantt.getTask(id).parent)
			$("[name=contents]").val(gantt.getTask(id).contents)
			$("[name=progress]").val(gantt.getTask(id).progress)
			$("[name=open]").val(gantt.getTask(id).$open)
			$("[name=display_order]").val(gantt.getTask(id).$index)
			$.ajax({
				type:"post",
				url: "${path}/updateGantt.do",
				dataType: "json",
				data: $("#regForm").serialize(),
				success:function(data) {
					$("#toastBasic").toast("show");
				},
				 error:function(err) {
			 		console.log(err)
			 	}
				
			})
		}
		
	}
	
	function insertForm() {
		$("#regForm").attr("action","insertGantt.do").submit()
	}
	
	function deleteForm() {
		$("#regForm").attr("action","deleteGantt.do").submit()
	}
	
	function moveToToday() {
		gantt.columnIndexByDate(new Date())
	}
	
	function selectStatus(statusno) {
		$("[name=status_no]").val(statusno)
	}
	
	function authProcess() {
		if ("${login.auth}" == 'admin' || "${login.auth}" == 'PM') {
			
		}
	}
	
});

</script>

</head>

	<%@include file="side_bar.jsp"%>
	
	<div id="spinner-div" class="pt-5">
		<div class="spinner-border text-primary" role="status">
	   	</div>
	</div>
	<!-- Toast container -->
	<div style="position: absolute; bottom: 1rem; right: 1rem; z-index: 1">
		<!-- Toast -->
		<div class="toast" id="toastBasic" role="alert" aria-live="assertive"
			aria-atomic="true" data-bs-delay="3000">
			<div class="toast-header">
				<i data-feather="bell"></i> <strong class="mr-auto">알림</strong>
				<button class="ml-2 mb-1 btn-close" type="button"
					data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">일정 내용이 변경 되었습니다</div>
		</div>
	</div>
	
	<div style="position: absolute; bottom: 1rem; right: 1rem; z-index: 1">
		<!-- Toast -->
		<div class="toast" id="toastInsert" role="alert" aria-live="assertive"
			aria-atomic="true" data-bs-delay="3000">
			<div class="toast-header">
				<i data-feather="bell"></i> <strong class="mr-auto">알림</strong>
				<button class="ml-2 mb-1 btn-close" type="button"
					data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">하위 일정이 추가되었습니다.</div>
		</div>
	</div>

	<div style="position: absolute; bottom: 1rem; right: 1rem; z-index: 1">
		<!-- Toast -->
		<div class="toast" id="toastDelete" role="alert" aria-live="assertive"
			aria-atomic="true" data-bs-delay="3000">
			<div class="toast-header">
				<i data-feather="bell"></i> <strong class="mr-auto">알림</strong>
				<button class="ml-2 mb-1 btn-close" type="button"
					data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">하위 일정이 삭제되었습니다.</div>
		</div>
	</div>
	
	<div style="position: absolute; bottom: 1rem; right: 1rem; z-index: 1">
		<!-- Toast -->
		<div class="toast" id="toastAlert" role="alert" aria-live="assertive"
			aria-atomic="true" data-bs-delay="5000">
			<div class="toast-header bg-primary">
				<i data-feather="bell" color="white"></i> <strong class="mr-auto text-light">알림</strong>
				<button class="ml-2 mb-1 btn-close btn-close-white" type="button"
					data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">수정하려면 일정을 더블 클릭 해주세요.</div>
		</div>
	</div>
	
	<div id="layoutSidenav_content">
	<main>
	<header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
	    <div class="container-fluid px-4">
	        <div class="page-header-content">
	            <div class="row align-items-center justify-content-between pt-3">
	                <div class="col-auto mb-3">
	                    <h1 class="page-header-title">
	                        <div class="page-header-icon"><i data-feather="bar-chart-2"></i></div>
	                        Gantt Chart
	                    </h1>
	                </div>
	                <div class="col-12 col-xl-auto mb-3">
                        <a class="btn btn-sm btn-light text-primary" href="${path}/projectList.do" id="backto_menu">
                            <i class="me-1" data-feather="arrow-left"></i>
                            Back to All Projects
                        </a>
                    </div>
	            </div>
	        </div>
	    </div>
	</header>
	
	<div class="wrapper" style="padding-top: 12px">
		<div style="padding: 0 20px">
			<div style="display: flex; flex-direction: row;">
				<h3>프로젝트 일정</h3>
				<input class="ms-auto"
					src="${path}/asset/images/akar-icons_zoom-in.png" type="image"
					value="Zoom In" onclick="gantt.ext.zoom.zoomIn();" width="24px"
					height="24px"> 
				<input
					src="${path}/asset/images/akar-icons_zoom-out.png" type="image"
					value="Zoom Out" onclick="gantt.ext.zoom.zoomOut();" width="24px"
					height="24px">
			</div>
			<div id="gantt_here" style='width: 100%; height: 800px'></div>
		</div>
		
		
	</div>
	</main>
	
	<button id="regModalBtn" type="button" class="btn btn-primary"
		data-bs-toggle="modal" data-bs-target="#MyModal" style="display: none">
	</button>
	<!-- Modal -->
	<div class="modal fade" id="MyModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<form id="regForm" method="post">
			<input type="hidden" name="id" value="0"> 
			<input type="hidden" name="parent" value="0"> 
			<input type="hidden" name="display_order" value="0"> 
			<input type="hidden" name="progress" value="0"> 
			<input type="hidden" name="open"value="1"> 

			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">일정 등록</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="mb-4">
							<label for="exampleFormControlInput1">일정 이름</label> <input
								class="form-control"
								id="exampleFormControlInput1" type="text" name="text"
								value="NEW TASK">
						</div>
						
						<div class="mb-4">
							<label style="margin-bottom: 8px">현재 상태</label>
							<div class="d-flex justify-content-between">
							<input class="btn-check" id="statusRadio1" type="radio" name="status_no" value="1" autocomplete="off">
							<label for="statusRadio1" class="btn btn-outline-primary">
								요청
							</label>
							
							<input class="btn-check" id="statusRadio2" type="radio" name="status_no" value="2" autocomplete="off">
							<label for="statusRadio2" class="btn btn-outline-cyan">
								진행
							</label>
							
							<input class="btn-check" id="statusRadio3" type="radio" name="status_no" value="3" autocomplete="off">
							<label for="statusRadio3" class="btn btn-outline-green">
								완료
							</label>
							
							<input class="btn-check" id="statusRadio4" type="radio" name="status_no" value="4" autocomplete="off">
							<label for="statusRadio4" class="btn btn-outline-yellow">
								피드백
							</label>
							<input class="btn-check" id="statusRadio5" type="radio" name="status_no" value="5" autocomplete="off">
							<label for="statusRadio5" class="btn btn-outline-red">
								취소
							</label>
							</div>
						</div>
						
						<div class="mb-4">
							<label style="margin-bottom: 8px">우선 순위</label>
							<div class="d-flex justify-content-between">
								<input class="btn-check" id="priority0" type="radio" name="priority" value="0" autocomplete="off">
								<label for="priority0" class="btn btn-outline-gray">
									없음
								</label>
								<input class="btn-check" id="priority1" type="radio" name="priority" value="1" autocomplete="off">
								<label for="priority1" class="btn btn-outline-danger">
									긴급
								</label>
								<input class="btn-check" id="priority2" type="radio" name="priority" value="2" autocomplete="off">
								<label for="priority2" class="btn btn-outline-secondary">
									높음
								</label>
								<input class="btn-check" id="priority3" type="radio" name="priority" value="3" autocomplete="off">
								<label for="priority3" class="btn btn-outline-orange">
									보통
								</label>
								<input class="btn-check" id="priority4" type="radio" name="priority" value="4" autocomplete="off">
								<label for="priority4" class="btn btn-outline-sky">
									낮음
								</label>
								
								
							</div>
						</div>

						<div class="mb-4">
							<label>담당자</label> <select
								name="owner_id" class="form-control">
								<option value="0">담당자를 선택하세요</option>
								<c:forEach var="owner" items="${member}">
									<option value="${owner.no}">${owner.name}</option>
								</c:forEach>
							</select>
						</div>


						<div class="mb-4">
							<label>기한</label>
							<div class="row">
								<div class="col-md-5">
									<input class="form-control" type="date"
										name="start_date" value="">
								</div>
								
								<div class="col-md-5">
									<div class="input-group">
								    <span class="input-group-btn">
								        <button type="button" id="minusBtn" class="btn btn-outline-primary" data-type="minus" style="border-radius: 12px 0px 0px 12px">
								        <i data-feather="minus"></i>
								        </button>
								    </span>
								    <input class="form-control" type="text" name="duration" value="1">
								    <span class="input-group-btn">
										<button type="button" id="plusBtn" class="btn btn-outline-primary"  data-type="plus"  style="border-radius: 0px 12px 12px 0px">
										<i data-feather="plus"></i>
										</button>
								    </span>
									</div>
								</div>
								
							</div>
						</div>
						<div class="mb-4">
							<label>마감일</label>
							<div>
								<input class="form-control form-control-solid" type="text"
									name="end_date" value="" readonly="readonly">
							</div>
						</div>
						<div class="mb-1">
							<textarea name="contents" class="form-control"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button id="closeBtn" type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
						<button id="regBtn" type="button" class="btn btn-primary">등록</button>
						<button id="uptBtn" type="button" class="btn btn-primary">변경</button>
						<button id="delBtn" type="button" class="btn btn-danger">삭제</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	
	
	</div>
	
	
<script>
if("${login.auth}" == 'PM' || "${login.auth}" == 'admin'){
    console.log("${login.auth} 관리자 로그인");
    $("#backto_menu").attr('href','${path}/projectAdmin.do');
 }
</script>

</html>