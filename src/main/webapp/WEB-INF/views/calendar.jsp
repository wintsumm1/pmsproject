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

<link rel="stylesheet" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>	
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/components/prism-core.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/plugins/autoloader/prism-autoloader.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/litepicker.js"></script>

<%-- fullCalendar --%>
<link rel="stylesheet" href="${path}/a01_com_lib/fullcalendar-5.11.0/lib/main.min.css">
<script src="${path}/a01_com_lib/fullcalendar-5.11.0/lib/main.js"></script>
<script src="${path}/a01_com_lib/fullcalendar-5.11.0/lib/locales-all.js"></script>
<%-- jquery --%>
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.css?v=7.1.12">
<script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.js?v=7.1.12"></script>

<link rel="icon" type="image/x-icon" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/favicon.png" />
<script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="${path}/a02_com_fun/calDuration.js"></script>

<style>
	td{text-align:center;}
	body {
	    margin: 40px 10px;
	    padding: 0;
	    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	    font-size: 14px;
	}
	#calendar {
	   max-width: 1100px;
	   margin: 0 auto;
	}
</style>


<script type="text/javascript">

	calDuration(13)
	
</script>

<script type="text/javascript">

	

document.addEventListener('DOMContentLoaded', function() {
	
	var member = "${login}"
	var member_no = "${login.no}"
	// 초기 화면 로딩 날짜 오늘 날짜로 설정
	var toDay = new Date()
	var date = toDay.toISOString().split("T")[0]
	
	var visibility = 0
	var visibToggle = false;
	
	var vm = new Vue({
		el: ".wrapper",
		data(){
			return {
				title:'',content:'',allDay: true, start : '', end: ''
			}
		},
		methods:{
			allDayToggleHandler:function() {
				this.allDay != this.allDay
			},
			DateHandler : function(arg) {
				const offset = arg.start.getTimezoneOffset() * 60000;
				const startDate = new Date(arg.start - offset)
				const endDate = new Date(arg.end - offset)
				const toggleDate = new Date(arg.start - offset)
				toggleDate.setMinutes(30)
				this.start = startDate.toISOString().substring(0, startDate.toISOString().indexOf("T") + 6)
				this.end = endDate.toISOString().substring(0, endDate.toISOString().indexOf("T") + 6)
				
			}
		}
	}); 
	
	$("#regBtn").click(function(){
 		if(member!="") {
				if($("[name=title]").val().trim() == "") {
	      		alert("일정이름을 입력해주세요.")
	      		$("[name=title]").focus()
      			return;
      		}
      		if(confirm("등록하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calInsert.do");
      			$("#frm01").submit();
      			return;
      		}
 		} else {
 			alert("로그인이 되어 있지 않습니다.")
 			location.href="${path}/login.do";
 		}
 	});
	
 	$("#delBtn").click(function(){
  		if(member!="") {
  			if(confirm("삭제하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calDelete.do");
      			$("#frm01").submit();
      		}
  		} else {
  			alert("로그인이 되어 있지 않습니다.")
  			location.href="${path}/login.do";
  		}
  	});
	
	$("#uptBtn").click(function(){
		  if(member!="") {
			if(confirm("수정하시겠습니까?")){
				updateAjax()
				$("#closeBtn").click()
				calendar.prev()
				calendar.next()
		}
		} else {
			alert("로그인이 되어 있지 않습니다.")
			location.href="${path}/login.do";
		}
	})
	
	if(vm.allDay) {
		$("[name=allDay]").attr("checked",true).val(true)
	} else {
		$("[name=allDay]").attr("checked",false).val(false)
	}
 	
	function formData(event){
		 // 매개변수로 받은 일정 내용을 설정처리..
		var offset = event.start.getTimezoneOffset() * 60000;
		var startDate = new Date(event.start - offset)
		var endDate = new Date(event.end - offset)
		$("#frm01 [name=id]").val(event.id)
		$("#frm01 [name=member_no]").val("${login.no}")
		vm.title = event.title 
		$("#frm01 [name=title]").val( event.title )
		vm.start = startDate.toISOString().substring(0, startDate.toISOString().indexOf("T") + 6) 
		$("#frm01 [name=start]").val(startDate.toISOString().substring(0, startDate.toISOString().indexOf("T") + 6)) 
		if(event.end!=null){
			vm.end =  endDate.toISOString().substring(0, endDate.toISOString().indexOf("T") + 6) 
			$("#frm01 [name=end]").val( endDate.toISOString().substring(0, endDate.toISOString().indexOf("T") + 6)  )
		} else {
			vm.end = vm.start  
			$("#frm01 [name=end]").val( startDate.toISOString().substring(0, startDate.toISOString().indexOf("T") + 6)  )
		}
		$("#frm01 [name=backgroundColor]").val(event.backgroundColor)
		$("#frm01 [name=textColor]").val(event.textColor)
		vm.allDay = event.allDay
		$("#frm01 [name=allDay]").val("" + event.allDay)
		vm.content = event.extendedProps.content
		$("#frm01 [name=content]").val(event.extendedProps.content)
	}
	  
	function updateAjax() {
		$.ajax({
			type:"post",
			url: "${path}/calUpdate.do",
			data: $("#frm01").serialize(),
			dataType: "json",
			success:function(data){
				$("#toastUpdate").toast("show")
			},
			error:function(err){
				alert("updateError")
				console.log(err)
			}
		})
	}
	

	
	var calendarEl = document.getElementById('calendar');
	
	var calendar = new FullCalendar.Calendar(calendarEl, {
		locale: 'ko',
		headerToolbar: {
		  left: 'prev,next today',
		  center: 'title',
		  right: 'dayGridMonth,timeGridWeek,timeGridDay'
		},
		initialDate: date,
		navLinks: true, // can click day/week names to navigate views
		selectable: true,
		selectMirror: true,
		select: function(arg) {
			$("#regBtn").show()
			$("#uptBtn").hide()
			$("#delBtn").hide()
			$("#exampleModalLongTitle").text("일정등록");
			$("#frm01 [name=member_no]").val(member_no)
			vm.allDay = true
			vm.title = ''
			vm.content = ''
			vm.DateHandler(arg)
			$("#regModalBtn").click();
			return;
		},
      // 있는 데이터를 클릭시, (상세 내용을 보고 수정/삭제..)
      eventClick: function(arg) {
    	  console.log(arg.event)
    	  $("#regBtn").hide()
   		  $("#uptBtn").show()
    	  $("#delBtn").show()
    	  $("#exampleModalLongTitle").text("일정상세");
    	  formData(arg.event)
    	  $("#regModalBtn").click(); // 모달창 로딩.. 
      },
      eventDrop:function(info){
    	  // 일정을 클릭해서 드랍처리 시, 날짜 변경
    	  console.log(info.event)
    	  formData(info.event)
    	  updateAjax()
      },
      eventResize:function(info){
    	  // 시간일정을 늘리거나 줄일때..
    	  console.log(info.event)
    	  formData(info.event)
    	  updateAjax()
      },
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: function(info, successCallback, failureCallback){
   		  $.ajax({
       		  type:"post",
       		  url:"${path}/calList.do",
       		  data: "member_no="+member_no+"&visibility="+visibility,
       		  dataType:"json",
       		  success:function(data){
       			  successCallback(data.callist)
       		  },
       		  error:function(err){
       			  console.log(err)
       		  }
       		  
       	  });
   		  
      }
    
    
    });
	calendar.render();
	
	$("#toggleBtn").click(function () {
		visibToggle = !visibToggle
		visibToggle ? visibility = 1 : visibility = 0
		calendar.prev()
		calendar.next()
	})
	<%--
	
	$("#allDayBtn").change(function() {
		allDayToggle = !allDayToggle
		allDayToggle ? allDayVal = true : allDayVal = false
	})
	--%>
	
	
	
	
});
  

	
  
	
      	
</script>
</head>
<%@include file="side_bar.jsp"%>
<!-- 수정 토스트 -->
<div style="position: absolute; bottom: 1rem; right: 1rem; z-index: 1055">
<!-- Toast -->
<div class="toast" id="toastUpdate" role="alert" aria-live="assertive" aria-atomic="true" data-bs-delay="2000">
   <div class="toast-header">
      <i data-feather="bell"></i>
       <strong class="mr-auto">알림</strong>
       <button class="ml-2 mb-1 btn-close" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
       </div>
       <div class="toast-body">일정 내용이 변경 되었습니다</div>
   </div>
</div>
<div id="layoutSidenav_content">
<div class="wrapper">
<div class="container" id="main">
	<div class="form-checkbox" style="max-width: 1100px;margin: 0 auto; padding: 20px 0">
	<label class="form-checkbox-label" for="toggleBtn">담당 일정 같이보기</label>
	<input class="form-checkbox-input" id="toggleBtn" type="checkbox" name="visibility" value="0"/>
	</div>
	<div id='calendar'>
	</div>
</div>


<div class="modal fade" id="MyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button id="closeBtn" type="button" class="btn" data-bs-dismiss="modal">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <%-- 
      update ownSchedule
			set title = #{title},
				start = #{start},
				end = #{end},
				content = #{content},
				backgroundColor = #{backgroundColor}, 
				textColor = #{textColor}, 
				allDay = #{allDay}
			where id = #{id}
      --%>
		<form id="frm01" class="form"  method="post">
		<input type="hidden" name="id" value="0"/>
		<input type="hidden" name="member_no" value="0"/>
		
		<div class="md-5">
			<label for="exampleFormControlSelect1">일정</label>
			<div class="row align-items-center">
				<div class="col-md-8">
				  <input type="text" class="form-control form-control-solid" placeholder="일정 입력" title="일정 입력" name="title" v-model="title">
				</div>
				<div class="col-md-4 form-check">
				  <input class="form-check-input" id="allDayBtn" type="checkbox" name="allDay" v-model="allDay" v-on:click="allDayToggleHandler()">
				  <label class="form-check-label" for="allDayBtn">종일</label>
				</div>      	      
			</div>
	    </div> 
	    
		<div class="mb-5">
			<label for="exampleFormControlSelect1">기한</label>
			<div class="row">
				<div class="col">
					<input class="form-control form-control-solid" type="datetime-local" name="start" v-model="start">
				</div>
				<div class="col">
					<input class="form-control form-control-solid" type="datetime-local" name="end" v-model="end">
				</div>
			</div>
		</div>
	     
	     <div class="row">
	      <div class="col"> 
	        <input type="color" class="form-control"  data-bs-toggle="tooltip"  title="배경색상" 
	        	value="#0061f2" name="backgroundColor">
	      </div>
	      <div class="col">
	        <input type="color" class="form-control"   data-bs-toggle="tooltip"  title="글자색상" 
	        	value="#ffffff" name="textColor">
	      </div>
	     </div>
	     <div class="row">
	      <div class="col">
	        <textarea name="content" rows="7"  class="form-control" 
	        	 data-bs-toggle="tooltip"  placeholder="내용 입력"  title="내용" v-model="content"></textarea>
	      </div>
	     </div>	 	     
	         
	    </form> 
      </div>
      <div class="modal-footer"> 
        <button type="button" id="regBtn" class="btn btn-primary">일정등록</button>
        <button type="button" id="uptBtn" class="btn btn-info">일정수정</button>
        <button type="button" id="delBtn" class="btn btn-danger">일정삭제</button>
        <button id="closeBtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>



</div>

<button id="regModalBtn" type="button"
class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#MyModal" style="display: none">
</button>
	

</div>

</html>	