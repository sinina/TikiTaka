<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script src="resources/js/jquery-3.3.1.min.js"></script>
<!DOCTYPE html>
<c:import url="../common/header.jsp"></c:import>
<html>
<head>
<meta charset="UTF-8">
<title>admin메뉴리스트</title>
<style>
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    /* border-bottom: 1px solid #eee; */
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    /* width:82px; */
    width:120px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
   /*  border: 1px solid #eee; */
    border: 1px solid black;
    /* border-top: none; */
    clear: both;
    float: left;
    /* width: 248px; */
    width: 1100px;
    height:500px;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 12px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none
}
;
 #container {
    width: 249px;
    margin: 0 auto;
}
#container{
float: right;
margin-top:50px;
margin-right:200px;
}

/*  .tab_container{
float: right;

}  */
</style>
<script>
$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();
    
    $("ul.tabs li:first").css("color","darkred");

    $("ul.tabs li").click(function () {
        $("ul.tabs li").removeClass("active").css("color", "#333");
        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active").css("color", "darkred");
        $(".tab_content").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
});
</script>
</head>
<body>
<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">통계</li>
        <li rel="tab2">회원관리</li>
        <li rel="tab3">프로젝트 종료확인</li>
        <li rel="tab4">프로젝트 승인여부</li>
        <li rel="tab5">배너관리</li>
       
    </ul>
    <div class="tab_container">
        <div id="tab2" class="tab_content"><c:import url="memberList.jsp"></c:import></div>
        <div id="tab1" class="tab_content"><c:import url="statistics.jsp"></c:import></div>    
        <div id="tab3" class="tab_content">2</div>
        <div id="tab4" class="tab_content">3</div>
        <div id="tab5" class="tab_content">4</div>
        
        
    </div>
   
</div>

</body>
</html>