<%@page import="egovframework.com.cmm.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/common/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/common/layout.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/common/program.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/common/board.css" rel="stylesheet">
<title>BOOK LIST</title>
<script>
	function linkPage(pagenum){
		document.paging.pageIndex.value = pagenum;
		document.paging.text.value = '${search_text}';
		document.paging.submit();
	}
</script>
</head>
<body>
<form name="frm">
	<input type="hidden" name="uid" value="">
</form>
<form name="paging" action="/kakao/api.do" method="get">
	<input type="hidden" name="pageIndex" value="">
	<input type="hidden" name="text" value="">
</form>
<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
	<div class="container">
    	<a class="navbar-brand" href="${pageContext.request.contextPath }/cmm/main/mainPage.do">Go Home</a>
    </div>
</nav>


<table class="b_list" summary="게시판 리스트입니다.">
	<caption> 리스트</caption>
	<colgroup>
		<col width="*%">
		<col width="75%">
		<col width="20%">
	</colgroup>

	<thead>
		<tr>
			<th>순서${search_text}</th>
			<th>제목</th>
			<th scope="col">저자</th>
		</tr>								
	</thead>
	<tbody>
	<c:forEach items="${items }" var="items" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td class="txt_left"><a href="${items.url }">${items.title }</a>&nbsp; </td>
	        <td><a href="${items.url }">${items.authors }</a></td>
		</tr> 
	</c:forEach>	
	</tbody>
</table>
<!--리스트 e-->


<!--페이징-->
<div class="pageList">
	<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="linkPage"/>
</div>
<!--페이징 e-->





</body>
</html>