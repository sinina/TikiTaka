<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<c:import url="common/header.jsp"></c:import>
<head>
	<title>Home</title>
</head>
<body>

<c:import url="common/index.jsp"></c:import>
<c:import url="common/footer.jsp"></c:import>


	<a href="loginPage.do">login</a>
	<a href="joinPage.do">join</a>
	<a href="projectStart.do">projectForm</a>
	<a href="adminMenuList.do">임시관리자 페이지</a>

</body>
</html>
