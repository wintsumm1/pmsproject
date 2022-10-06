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
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
	   $("input:checkbox").click(checkedChange);
	   function checkedChange() {
	       if($(this).prop("checked")){
	           $("label[for="+this.id+"]").text("동의되었습니다.");
	           $("label[for="+this.id+"]").css("color","blue");
	       }else{
	           $("label[for="+this.id+"]").text("동의 해주시기 바랍니다.");
	           $("label[for="+this.id+"]").css("color","red");
	       }
	   }
   });
</script>
</head>

<body>
<fieldset class="fieldarea f2">
	<legend><span>이용</span>약관</legend>
	<p class="agreeText">
		<label for="agreement1">아래 사항에 동의 합니다.</label>
		<input id="agreement1" type="checkbox" name="agreement1"/>
		<textarea id="text1" readonly>
			이용약관
		</textarea>
	</p>
</fieldset>
<fieldset class="fieldarea f3">
	<legend><span>개인정보</span>취급방침</legend>
	<p class="agreeText">
		<label for="agreement2">아래 사항에 동의 합니다.</label>
		<input id="agreement2" type="checkbox" name="agreement2"/>
		<textarea id="text2" readonly>
			개인정보 방침 및 안내
		</textarea>
	</p>
</fieldset>


</body>
</html>