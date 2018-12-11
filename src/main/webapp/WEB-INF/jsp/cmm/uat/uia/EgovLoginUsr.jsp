<%--
  Class Name : EgovLoginUsr.jsp
  Description : Login 인증 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.03    박지욱          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 박지욱
    since    : 2009.03.03
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<title>포탈 - 로그인</title>
<%-- <link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" > --%>
<%-- <link href="<c:url value='/'/>css/login.css" rel="stylesheet" type="text/css" > --%>
<!-- Bootstrap core CSS -->
<link href="<c:url value='/'/>bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="<c:url value='/'/>bootstrap/css/signin.css" rel="stylesheet">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="<c:url value='/'/>bootstrap/assets/js/ie-emulation-modes-warning.js"></script>

<script type="text/javascript">
<!--
function actionLogin() {

    if (document.loginForm.id.value =="") {
        alert("아이디를 입력하세요");
        return false;
    } else if (document.loginForm.password.value =="") {
        alert("비밀번호를 입력하세요");
        return false;
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

function getCookie(Name) {
    var search = Name + "="
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search)
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset)
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length
            return unescape(document.cookie.substring(offset, end))
        }
    }
    return "";
}

function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function getid(form) {
    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}

function fnInit() {
    var message = document.loginForm.message.value;
    if (message != "") {
        alert(message);
    }
    getid(document.loginForm);
}
//-->
</script>
</head>




<body onload="fnInit();">
	<div class="container">
    	<form class="form-signin" name="loginForm" method="post" action="#LINK">
        	<h2 class="form-signin-heading">로그인</h2>
        		<label for="inputEmail" class="sr-only">ID</label>
        		<input type="email" id="inputEmail" title="아이디를 입력하세요." name="id" maxlength="10" class="form-control" placeholder="Email address" required autofocus>
        		<label for="inputPassword" class="sr-only">Password</label>
        		<input type="password" id="inputPassword" maxlength="25" title="비밀번호를 입력하세요." name="password"  class="form-control" placeholder="Password" onkeydown="javascript:if (event.keyCode == 13) { actionLogin(); }" required>
        	<div class="checkbox">
          		<label for="checkId"><input type="checkbox" name="checkId" onclick="javascript:saveid(this.form);" id="checkId" > ID정보저장</label>
       		</div>
			<button class="btn btn-lg btn-primary btn-block" onclick="javascript:actionLogin()" type="submit">Sign in</button>
			<input type="hidden" name="message" value="${message}" />
			<input type="hidden" name="userSe"  value="USR"/>
		</form>
	</div> <!-- /container -->

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<c:url value='/'/>bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>



