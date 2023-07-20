<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  
</head>
<body >
    <div style="display: flex;">
    <aside class="aside-ads" style="background-color: red; position: fixed; display: flex;">
         <div class="" style="background-color: #e6fbf6; margin-bottom: -60px; height: 500px; position: fixed; width: 250px;">
            <div class="container">
	 	<div class="text-center"><br>
	 		<h1>메뉴판</h1>
	 	</div>
	 	 <div class="navbar-nav">
	 	 	<div class="nav-item">
	 	 	  <div style="height: 30px"></div>
	 	 	  <table class="table" >
	 	 	  <tr height="35">
	 	 	   <td class="text-center"><a href="../my/myinfo.do" style="color:black">내정보</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="../jjim/jjim_list.do" style="color:black">찜목록</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=3" style="color:black">좋아요목록</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=4" style="color:black">장바구니</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=5" style="color:black">구매현황</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=6" style="color:black">예약현황</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=7" style="color:black">문의하기</a></td>
	 	 	  </tr>
	 	 	  <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=8" style="color:black">여긴 뭐넣지</a></td>
	 	 	  </tr>
	 	 	  </table>
	 	 	</div>
	 	 </div>
	 	  
	</div>
        </div>
    </aside>
    <section class="container"> <!-- 사이즈 보기 -->
        <div class="col-sm-8" >
        	  
	 	 	  <jsp:include page="${jsp}"></jsp:include>
	 	 	</div>
	 	 	
    </section>
</div>
</body>
</html>