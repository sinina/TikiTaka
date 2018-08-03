<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script src="resources/js/jquery-3.3.1.min.js"></script>
<style>
#div2{
border: 1px solid red;
width: 1060px;
height: 460px;
margin:15px;
}

table{
border: 1px solid black;
margin:auto;
margin-top:20px;
}

tr, td{
border: 1px solid black;
}

td{
height:50px;
text-align: center;
}

p{
text-align: center;
font-size:20px;
font-weight:bold;
font-style:italic;
}

#search{
float:right;
margin-right:30px;
margin-top:40px;
}
</style>
<div id = "div2">
<p>TIKITAKA 회원목록</p>
	<table>
		<tr>
			<th width="50px">이미지</th>
			<th width="100px">이름</th>
			<th width="250px">이메일</th>
			<th width="100px">가입일</th>
			<th width="200px">관리자 기능</th>
		</tr>
		<%-- <c:forEach var="member" items="${member}"> --%>
		<tr>
			<td>dd</td>
			<td>유지상</td>
			<td>ji930217@gmail.com</td>
			<td>18/04/29</td>
			<td><button>정지</button>&emsp;&emsp;<button>삭제</button></td>
		</tr>
		<tr>
			<td>dd</td>
			<td>유지상</td>
			<td>ji930217@gmail.com</td>
			<td>18/04/29</td>
			<td><button>정지</button>&emsp;&emsp;<button>삭제</button></td>
		</tr>
		<tr>
			<td>dd</td>
			<td>유지상</td>
			<td>ji930217@gmail.com</td>
			<td>18/04/29</td>
			<td><button>정지</button>&emsp;&emsp;<button>삭제</button></td>
		</tr>
		<tr>
			<td>dd</td>
			<td>유지상</td>
			<td>ji930217@gmail.com</td>
			<td>18/04/29</td>
			<td><button>정지</button>&emsp;&emsp;<button>삭제</button></td>
		</tr>
		<tr>
			<td>dd</td>
			<td>유지상</td>
			<td>ji930217@gmail.com</td>
			<td>18/04/29</td>
			<td><button>정지</button>&emsp;&emsp;<button>삭제</button></td>
		</tr>
		<%-- </c:forEach> --%>
	</table>
	<div id = "search">
		<input width="100px" type="search" placeholder="아이디나 이름으로 검색">&emsp;<button>검색</button>
	</div>
</div>