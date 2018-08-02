<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<style>
	body{
		background:url("resources/images/background.png") no-repeat;
		background-size:cover;
	}
	.wrap{
		background:black;
		width:100%;
		height:50px;
		margin-top:10px;
	}
	.menu{
		background:black;
		color:white;
		width:150px;
		height:50px;
		vertical-align:middle;
		text-align:center;
		display:table-cell;
	}
	.nav{
		width:600px;
		margin-left:auto;
		margin-right:auto;
		
	}
	.menu:hover{
		/*background:lightgray;*/
		color:orangered;
		font-weight:bold;
		cursor:pointer;
	}
	.loginArea > #loginForm, .userInfo{
		float:right;
	}
	#memberLoginBtn, #memberJoinBtn, #memberInfoBtn, #memberLogoutBtn{
		display:table-cell;
		vertical-align:middle;
		text-align:center;
		cursor:pointer;
		width:150px;
		height:30px;
		border-radius:5px;
		background:black;
		color:white;
	}
	
	.tile{
		width:150px;
		height:150px;
		background:black;
		display:inline-block;
	}
	.first-line{
		margin-top:10%;
	}
	.tile-menu:hover{
		background:brown;
		cursor:pointer;
	}
	.notile{
		visibility:hidden;
	}
	.tile1{
		background:white;
	}
	.footer{
		position:fixed;
		left:0;
		bottom:0;
		background:black;
		color:white;
		text-aligh:center;
		width:100%;
	}
	
	.sky td{
		text-align:center;
	}
	
	.userInfo > p {
		background:black;
		border-radius:5px;
		color:white;
	}
	
</style>
<script>
	function join(){
		location.href="memberJoinForm.do";
	}
	
	function login(){
		$("#loginForm").submit();
	}
	
	function logout(){
		location.href="logout.do";
	}
	
	function myInfo(){
		location.href="memberUpdateForm.do";
	}
	
	function noticePage(){
		location.href="noticeList.do";	
	}
	
	function mainPage(){
		location.href="index.do";
	}
</script>
</head>
<body>
	<h1 align="center" style="color:white;">My Web Project</h1>
	<div class="loginArea">
	<c:if test="${empty sessionScope.user }">
		<form id="loginForm" action="login.do" method="post">
			<table class="sky">
				<tr>
					<td style="background:black; color:white; border-radius:10px">아이디 : </td>
					<td>
						<input type="text" name="userid"/>
					</td>
				</tr>
				<tr>
					<td style="background:black; color:white; border-radius:10px">비밀번호 : </td>
					<td>
						<input type="password" name="password" id="pwdText"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="memberLoginBtn" onclick="login();">로그인</div>
						<div id="memberJoinBtn" onclick="join();">회원가입</div>
					</td>
				</tr>
			</table>
		</form>
		</c:if>
		<c:if test="${!empty sessionScope.user }">		
			<div class="userInfo">
				<p>${user.username}님 방문을 환영합니다.</p>
				<div id="memberInfoBtn" onclick="myInfo();">정보 수정</div>
				<div id="memberLogoutBtn" onclick="logout();">로그 아웃</div>
			</div>
		</c:if>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="wrap">
		<div class="nav">
			<div class="menu" onclick="mainPage();">HOME</div>
			<div class="menu" onclick="noticePage();">공지사항</div>
			<div class="menu" onclick="boardPage();">게시판</div>
			<div class="menu" onclick="galleryPage();">사진 게시판</div>
		</div>
	</div>
</body>
</html>