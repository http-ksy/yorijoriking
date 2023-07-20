<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.b1').click(function(){
		let no =$('.titleno').attr("data-no")
		$.ajax({
			 type:'post',
			 url:'../jjim/jjim_delete.do',
			 data:{'no':no},
			 success:function(result)
			 {
				 alert('찜하기 cancle')
				 location.reload();
			 }
		})
	})
})
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="container">
  <h2 class="sectiontitle">${sessionScope.name }님의 찜 목록</h2>
   <table class="table">
   <tr>
   	<th class="text-center">번호</th>
   	<th class="text-center"></th>
   	<th class="text-center">제목</th>
<!--    	<th class="text-center">쉐프</th> -->
   	<th class="text-center"></th>
   </tr>
   <c:forEach var="vo" items="${list}">
     <tr>
    <td class="text-center titleno" data-no="${vo.no }">a</td>
   	<td class="text-center">
   	<a href="../list/recipeDetail.do?rdno=${vo.cno }"><img src="${vo.poster }" style="width: 30px;height: 30px"></a>
   	</td>
   	<td class="text-center"><a href="../list/recipeDetail.do?rdno=${vo.cno }">${vo.title }</a></td>
   	
<%--    	<td class="text-center">${vo.chef }</td> --%>
   	<td class="text-center">
   	   <span class="b1">취소</a>
   	</td>
     </tr>
   </c:forEach>
   </table>
<!--    <div class="text-center"> -->
<!--    <a href="jjim_list.do?page!!type?!!!"></a> -->
<!--    </div> -->
</div>
</body>
</html>