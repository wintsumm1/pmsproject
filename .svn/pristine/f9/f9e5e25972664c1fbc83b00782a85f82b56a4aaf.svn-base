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
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<%-- bootstrap --%>
<link rel="stylesheet" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/components/prism-core.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/plugins/autoloader/prism-autoloader.min.js" crossorigin="anonymous"></script>

<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
<script>
$(function() {
  $('input[name="daterange"]').daterangepicker({
    opens: 'left'
  }, function(start, end, label) {
    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
  });
});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">리스크 관리</h2>

</div>
<div class="col-xl-6" style="float: none; margin:0 auto;">
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">리스크 관리</div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Row-->
                                                <!-- Form Group (first name)-->
                                                <div class="col-mb-6">
                                                    <label class="small mb-1" for="inputFirstName">프로젝트명</label>
                                                    <input class="form-control" id="inputFirstName" type="text" placeholder="프로젝트명 입력" value="">
                                                </div>                                                
                                      		<div class="row gx-3 mb-3">
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputFirstName">요청자</label>
                                                    <input class="form-control" id="inputFirstName" type="text" placeholder="요청자 입력" value="">
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLastName">요청일</label>
                                                    <input class="form-control" id="inputLastName" type="date" placeholder="요청일 입력" value="">
                                                </div>
                                            </div>
	                                            <div class="col-mb-6">
	                                                <label class="small mb-1" for="inputEmailAddress">기간</label><br>
	                                                <input class="form-control" id="inputEmailAddress" type="text" placeholder="기간" value="">
	                                            </div>
                                       
											<div class="row gx-3 mb-3">
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputFirstName">대체자</label>
                                                    <input class="form-control" id="inputFirstName" type="text" placeholder="대체자 입력" value="">
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLastName">요청사유</label>
                                                    <input class="form-control" id="inputLastName" type="text" placeholder="요청사유 입력" value="">
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="small mb-1">승인/반려</label>
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected="" disabled="">선택:</option>
                                                    <option value="administrator">승인</option>
                                                    <option value="registered">반려</option>
                                                </select>
                                            </div>
                                            <div class="col-mb-6">
	                                                <label class="small mb-1" for="inputEmailAddress">사유</label>
	                                                <input class="form-control" id="inputEmailAddress" type="text" placeholder="사유 입력" value="">
	                                        </div>
                                            <!-- Submit button-->
                                            <button class="btn btn-primary" type="button">제출</button>
                                        </form>
                                    </div>
                                </div>
</div>
<div class="card col-xl-10" style="float: none; margin:0 auto;">
							<div class="card-header">리스크 내역</div>
                            <div class="card-body">
                                <div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns"><div class="dataTable-top"><div class="dataTable-dropdown"><label><select class="dataTable-selector"><option value="5">5</option><option value="10" selected="">10</option><option value="15">15</option><option value="20">20</option><option value="25">25</option></select> entries per page</label></div><div class="dataTable-search"><input class="dataTable-input" placeholder="Search..." type="text"></div></div><div class="dataTable-container"><table id="datatablesSimple" class="dataTable-table">
                                    <thead>
                                        <tr>
	                                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">신청일</a></th>
	                                        <th data-sortable="" style="width: 25%;"><a href="#" class="dataTable-sorter">프로젝트명</a></th>
	                                        <th data-sortable="" style="width: 15%;"><a href="#" class="dataTable-sorter">요청자</a></th>
	                                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">기간</a></th>
	                                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">요청사유</a></th>
	                                        <th data-sortable="" style="width: 15%;"><a href="#" class="dataTable-sorter">대체자</a></th>
	                                        <th data-sortable="" style="width: 5%;"><a href="#" class="dataTable-sorter">상태</a></th>
	                                        <th data-sortable="" style="width: 5%;"><a href="#" class="dataTable-sorter">사유</a></th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    		<tr>
	                                    		<td>
	                                                날짜
	                                            </td>
	                                            <td>프로젝트명</td>
	                                            <td>
		                                            <div class="d-flex align-items-center">
		                                            	<div class="avatar me-2">
		                                            		<img class="avatar-img img-fluid" src="assets/img/illustrations/profiles/profile-1.png">
		                                            	</div>
		                                            		누구누구
		                                            </div>
	                                            </td>
	                                            <td>기간</td>
	                                            <td>휴가</td>
	                                            <td>
	                                            	<div class="d-flex align-items-center">
		                                            	<div class="avatar me-2">
		                                            		<img class="avatar-img img-fluid" src="assets/img/illustrations/profiles/profile-1.png">
		                                            	</div>
		                                            		누구누구
		                                            </div>
		                                        </td>
	                                            <td>승인</td>
	                                            <td><button class="btn btn-primary" type="button">사유보기</button></td>
                                            </tr>                                            
                                     </tbody>
                                </table></div><div class="dataTable-bottom"><div class="dataTable-info">Showing 1 to 5 of 20 entries</div><nav class="dataTable-pagination"><ul class="dataTable-pagination-list"><li class="active"><a href="#" data-page="1">1</a></li><li class=""><a href="#" data-page="2">2</a></li><li class=""><a href="#" data-page="3">3</a></li><li class=""><a href="#" data-page="4">4</a></li><li class="pager"><a href="#" data-page="2">›</a></li></ul></nav></div></div>
                            </div>
</div>
</body>
</html>