<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@page import="egovframework.com.cmm.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>포탈</title>
<%-- <link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" > --%>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/'/>bootstrap2/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<c:url value='/'/>bootstrap2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="<c:url value='/'/>bootstrap2/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="<c:url value='/'/>bootstrap2/css/landing-page.min.css" rel="stylesheet">
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->

<body>
<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
	<div class="container">
    	<a class="navbar-brand" href="#">Start Bootstrap</a>
    	 <%
		 	LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
		 %>
		 <c:set var="loginName" value="<%= loginVO.getName()%>"/>
        <a class="btn btn-primary" href="#"><c:out value="${loginName}"/> 님</a>
    </div>
</nav>

<!-- Masthead -->
<header class="masthead text-white text-center">
<div class="overlay"></div>
	<div class="container">
        <div class="row">
        	<div class="col-xl-9 mx-auto">
            	<h1 class="mb-5">바로검색</h1>
          	</div>
		<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
        	<form name="lib_search" action="/lib/search.do" method="post">
            	<div class="form-row">
	                <div class="col-12 col-md-9 mb-2 mb-md-0">
	                  <input type="text" name="lib_name" class="form-control form-control-lg" placeholder="찾으실 도서관 이름">
	                </div>
	                <div class="col-12 col-md-3">
	                	<button type="submit" class="btn btn-block btn-lg btn-primary">Search</button>
	                </div>
				</div>
            </form>
		</div>
	</div>
</div>
</header>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>

