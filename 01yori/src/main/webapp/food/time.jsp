<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.times').click(function(){
		let time=$(this).text();
		$('#ft').show();
		$('#food_t').text(time);
		$('#r_time').val(time);
		
		$.ajax({
			type:'post',
			url: 'inwon.do',
			success:function(result){
				$('#food_inwon').html(result);
			}
		})
	})
})
</script>
</head>
<body>
	<c:forEach var="time" items="${list }">
		<span style="font-size: 15px; padding:8px 8px; margin: 3px 3px;" class="btn btn-xs btn-danger times">${time }</span>
	</c:forEach>
</body>
</html>