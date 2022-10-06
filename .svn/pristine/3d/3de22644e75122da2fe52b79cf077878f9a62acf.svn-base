<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<%@include file="side_bar.jsp"%>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="file-plus"></i></div>
                                            Create Post
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path}/noticeAdmin.do">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            Back to All Posts
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                    <form id="frm01" class="form" action="${path}/noticeUpdate.do">
                        <div class="row gx-4">
                            <div class="col-lg-8">
                                <div class="card mb-4">
                                    <div class="card-header">Post Title</div>
                                    <div class="card-body"><input class="form-control" name="title" id="postTitleInput" type="text" placeholder="Enter your post title..." value="${notice.title}"/></div>
                                	<input type="hidden" value="${notice.no}" name="no"/>
                                </div>
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        Post Preview
                                        <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="요약된 내용을 입력해주세요"></i>
                                    </div>
                                    <div class="card-body"><textarea class="lh-base form-control" name="preview" type="text" placeholder="Enter your post preview text..." rows="2">${notice.preview}</textarea></div>
                                </div>
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        Post Contents
                                        <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="요약된 내용을 입력해주세요"></i>
                                    </div>
                                    <div class="card-body"><textarea class="lh-base form-control" name="contents" type="text" placeholder="Enter your post preview text..." rows="10">${notice.contents}</textarea></div>
                                </div>
                                <input type="hidden" name="writer" value="${login.no}"/>
                            </div>
                            <div class="col-lg-4">
                                <div class="card card-header-actions">
                                    <div class="card-header">
                                        Publish
                                        <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="After submitting, your post will be published once it is approved by a moderator."></i>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-grid"><button class="fw-500 btn btn-primary" onclick="update()">Modify</button></div>
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
        </div>
        
        
        <%--jquery --%>
        <script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
		<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
		<%-- bootstrap --%>
        <script src="https://unpkg.com/easymde/dist/easymde.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/markdown.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <script type="text/javascript">
        var proc = "${proc}"
        	if(proc=="upt"){
        		alert("수정되었습니다.");
        		location.href="${path}/noticeAdmin.do";
        	}
        
        function update(){
        		document.querySelector("#frm01").submit();
        	}
        
        </script>
    </body>
</html>
