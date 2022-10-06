<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">
    <head>
    	<!--  jquery -->
		<script src="${path}/a00_com/jquery.min.js"></script>
		<script src="${path}/a00_com/popper.min.js"></script>
		<script src="${path}/a00_com/bootstrap.min.js"></script>
		<script src="${path}/a00_com/jquery-ui.js"></script>
    
	    <link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
		<style>
#chatArea { min-height: calc(1em + 1.75rem + 2px); height: 500px; text-align:left; overflow-y:auto;
}
		
		</style>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
        <link rel="icon" type="image/x-icon" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	var wsocket
	$(document).ready(function(){
		$("#enterBtn").click(function(){
			if(confirm("채팅서버에 접속합니다.")){
				conn();
			}
		});
		// 아이디 입력 후,  enter 키를 입력시도 접속
/*  		$("#id").keyup(function(){
			if(event.keyCode==13){
				conn();
			}
		}); */ 
		$("#exitBtn").click(function(){
			if(confirm("접속을 종료하시겠습니까?")){
				wsocket.send("msg:"+$("#id").val()+":접속 종료 했습니다.")
				wsocket.close();
				// 서버 handler public void afterConnectionClosed() 와 연동		
			}
		});
		
		$("#msg").keyup(function(){
			if(event.keyCode==13){
				$("#sndBtn").click()
				$(this).val("").focus()
			}				
		});
		// 전송 버튼을 클릭 시에 메시지 전송
		$("#sndBtn").click(function(){
			wsocket.send("msg:"+$("#id").val()+":"+$("#msg").val())
			$("#msg").val("").focus()
		});
		
	});
	//입장 버튼 클릭시 작동 함수
	function conn(){
		wsocket = new WebSocket("ws:49.238.206.101:7080/${path}/pmchat-ws.do") // 웹소켓 생성
		wsocket.onopen=function(evt){ 
			console.log(evt)
			wsocket.send("msg:"+$("#id").val()+"님이 접속했습니다.")
		}
		wsocket.onmessage=function(evt){
		// 서버에서 push방식으로 메시지를 전달 받는데..			
		// 메시지를 받을 때, 처리되는 메서드
		var msg = evt.data
		console.log(msg)
		if(msg.substring(0,4)=="msg:"){
			// msg:그룹명:전송자:메시지 (단일 chatting / 그룹 chatting)	
			// 그룹에 해당할 때만 메시지를 받아서 처리하게 처리..
				
			// msg: 를 제외한 모든 문자열을 추출
			var revMsg = msg.substring(4)
			// console.log("#메시지 받기#")
			// console.log(msg)
			$("#chatMessageArea").append(revMsg+"<br>")	
			// 자동 scolling 처리 로직
			// 1.  전체 charMessageArea의 입력된 최대 높이 구하기
			// 2. 포함하고 있는 div의 scollTop을 통해 최대한 내용으로 scrolling 하기
			$("#chatArea").scrollTop(ma+=20);
			console.log("chatArea길이:"+ma)
			}
		}
		var ma = parseInt($("#chatMessageArea").height());	
		// 접속을 종료 처리할 때
		wsocket.onclose=function(){
			alert($("#id").val()+"접속 종료합니다.")
			$("#chatMessageArea").val("")
			$("#id").val("").focus();
		}		
	}
	
</script>
</head>

    <body class="nav-fixed">


    <%@include file="side_bar.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-xl px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="user"></i></div>
                                            ChatRoom
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" id="exitBtn" href="${path}/main.do">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            메인으로 돌아가기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-4">
                        <div class="row">
                            <div class="col-xl-10" style='width: 50%;'>
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header d-flex justify-content-between align-items-center">
                                     <div>
    	                                 ${login.name}님 
                                     </div>
                                     <div>
	                                     <button type="button" id="enterBtn" class="btn btn-primary">입장</button> 
	                                     <!-- <button type="button" id="exitBtn" class="btn btn-primary">나가기</button>	 -->
                                     </div>
                                    </div> 
                                    <div class="card-body">
										<div class="row gx-3 mb-3" >
											<div class="col-md-6" style='width: 100%;'>
												<label class="small mb-1" for="inputEmailAddress"></label>
												<input type="hidden" id="id" class="form-control" value="${login.name}" placeholder="접속할 아이디 입력하세요" />	
													<div id="chatArea" class="form-control" type="text" name=contents">
														<div id="chatMessageArea"></div>
													</div>
											</div>
		                                    <div class="col-md-6 d-flex justify-content-between align-items-center" style='width: 100%; padding-top : 9px;'>
		                                        <input class="form-control mr-4" id="msg" type="text" placeholder="텍스트를 입력하세요" />
												<button type="button" id="sndBtn" class="btn btn-info">Send</button>
		                                    </div>																			
										</div>
                                    </div>
                                </div>
                            </div>
<%-- 							<div class="col-xl-4">
                                <!-- Profile picture card-->
                                <div class="card mb-4 mb-xl-0">
                                    <div class="card-header">현재 접속중인 멤버 </div>
                                    <div class="card-body text-center">
                                        <!-- Profile picture image-->
                                        <img class="img-account-profile rounded-circle mb-2" src="assets/img/illustrations/profiles/profile-1.png" alt="">
                                        <!-- Profile picture help block-->
                                        <div class="small font-italic text-muted mb-4">${login.name}</div>
                                        <!-- Profile picture upload button-->
                                    </div>
                                </div>
                            </div>    --%>                         
                        </div>                          
                    </div>                 
                </main>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; Your Website 2021</div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
    </body>
</html>