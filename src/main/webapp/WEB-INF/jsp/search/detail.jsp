<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/bootstrap3/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath }/bootstrap3/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath }/bootstrap3/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="${pageContext.request.contextPath }/bootstrap3/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/bootstrap3/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath }/bootstrap3/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">
         ${list.lib_name }
    </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">웹서버</a>
                                </li>
                                <li><a href="#profile" data-toggle="tab">DB서버</a>
                                </li>
                                <li><a href="#messages" data-toggle="tab">멀티서버</a>
                                </li>
                                <li><a href="#settings" data-toggle="tab">전자책서버</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                     				<br/>
                                    <h4>1.홈페이지 계정</h4>
                                    <p>${list.lib_user_id } / ${list.lib_user_pw }</p>
                                    <br/>
                                    <h4>2.홈페이지 관리자 계정</h4>
                                    <p>${list.lib_ad_id } / ${list.lib_ad_pw }</p>
                                    <br/>
                                    <h4>3.홈페이지 서버 정보</h4>
                                    <p>${list.server_web_info}</p>
                                    <br/>
                                    <h4>4.홈페이지 서버 계정</h4>
                                    <p>${list.server_web_ad_id} / ${list.server_web_ad_pw }</p>
                                </div>
                                <div class="tab-pane fade" id="profile">
                              		<br/>
                                    <h4>1.디비 서버 정보</h4>
                                    <p>${list.server_lib_info2}</p>
                                    <br/>
                                    <h4>2.디비 서버 계정</h4>
                                    <p>${list.server_lib_ad_id } / ${list.server_lib_ad_pw }</p>
                                </div>
                                <div class="tab-pane fade" id="messages">
                               		<br/>
                                    <h4>1.멀티서버 정보</h4>
                                    <p>${list.server_multi_info3 }</p>
                                    <br/>
                                    <h4>2.멀티서버 계정</h4>
                                    <p>${list.server_multi_ad_id } / ${list.server_multi_ad_pw }</p>
                                </div>
                                <div class="tab-pane fade" id="settings">
                                	<br/>
                                    <h4>1.전자책 홈페이지 계정</h4>
                                    <p>${list.ebook_ad_id } / ${list.ebook_ad_pw }</p>
                                    <br/>
                                    <h4>2.전자책 서버 정보</h4>
                                    <p>${list.server_ebook_info4}</p>
                                    <br/>
                                    <h4>3.전자책 서버 계정</h4>
                                    <p>${list.server_ebook_ad_id} / ${list.server_ebook_ad_pw }</p>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>



<!-- jQuery -->
    <script src="${pageContext.request.contextPath }/bootstrap3/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath }/bootstrap3/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath }/bootstrap3/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath }/bootstrap3/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath }/bootstrap3/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/bootstrap3/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath }/bootstrap3/dist/js/sb-admin-2.js"></script>
	 <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>
</html>