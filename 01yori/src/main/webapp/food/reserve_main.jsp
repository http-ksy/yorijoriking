<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row {
	margin: 0px auto;
	width: 960px;
}
h1 {
	text-align: center;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		type:'post',
		url:'../reserve/food_list.do',
		success:function(result){
			$('#food_list').html(result);
		}
	})// 처음실행시 => 한식을 먼저 출력
	$('.foods').click(function(){
		let fdno=$(this).text();
		$.ajax({
			type:'post',
			url:'../reserve/food_list.do',
			data:{"fdno":fdno},
			success:function(result){
				$('#food_list').html(result);
			}
		})
	})
})
</script>
</head>
<body>
<div class="wrapper row3">
  <main class="container clear">
  	<h2 class="sectiontitle">맛집 예약</h2>
		<div class="row">
			<table class="table">
				<tr>
					<td width="20%" height="580" class="danger">
						<table class="table">
							<caption><h3>맛집 정보</h3></caption>
							<tr>
								<td>
									<span class="btn btn-xs btn-danger foods">${vo.fdno }</span>
								</td>
							</tr>
							<tr>
								<td>
									<div id="food_list" style="height: 450px; overflow-y: scroll"></div>
								</td>
							</tr>
						</table>
					</td>
					<td width="45%" height="580" class="success">
						<table class="table">
							<caption><h3>예약일 정보</h3></caption>
							<tr>
								<td id="reserve_day"></td>
							</tr>
						</table>
					</td>
					<td width="35%" rowspan="2" class="info">
						<table class="table">
							<caption><h3>예약 정보</h3></caption>
							<tr>
								<td colspan="2" class="text-center">
									<img src="${vo.fdno }" style="width: 200px; height: 220px" id="food_img">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<h4 id="food_name"></h4>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<span style="color:gray; display: none;" id="fd">예약일 : </span><span id="food_day"></span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<span style="color:gray; display: none;" id="ft">예약시간 : </span><span id="food_t"></span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<span style="color:gray; display: none;" id="fi">예약인원 : </span><span id="food_i"></span>
								</td>
							</tr>
							<tr id="ok" style="display: none;">
								<td colspan="2" class="text-center">
								<form method="post" action="../reserve/reserve_ok.do">
									<input type="hidden" name="fdno" id="r_fdno">
									<input type="hidden" name="frday" id="r_day">
									<input type="hidden" name="frtime" id="r_time">
									<input type="hidden" name="finwon" id="r_inwon">
									<input type="submit" value="예약" class="btn btn-lg btn-primary">
								</form>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="35%" height="120" class="warning">
						<table class="table">
							<caption><h3>예약 시간정보</h3></caption>
							<tr>
								<td id="food_time"></td>
							</tr>
						</table>
					</td>
					<td width="30%" height="120" class="default">
						<table class="table">
							<caption><h3>인원 정보</h3></caption>
							<tr>
								<td id="food_inwon"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		</main>
	</div>
</body>
</html>