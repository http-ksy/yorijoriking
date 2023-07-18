<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
<link rel="stylesheet" href="../assets/css/style.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
</head>
<body>
<div class="tile" id="tile-1">
  <ul class="nav nav-tabs nav-justified" role="tablist">
     <li class="nav-item">
        <a href="adminpage_reserve.do" class="nav-link">맛집 예약대기</a>
      </li>
      <li class="nav-item">
        <a href="adminpage_reserve1.do" class="nav-link active">공유주방 예약대기</a>
      </li>
     </ul>
  </div>
<section>
<div class="container1" style="width: 1100px">
      <h2>공유주방예약관리</h2>
    <c:forEach var="vo" items="${list }">
    <!--single booking details-->
    
    <div class="request-details">
    <div>
    	<p>예약번호</p>
    	<h2>${vo.skdno }</h2>
    </div>
      <div class="date">
      	<p>예약일</p>
        <h3>${vo.srday }</h3>
      </div>
      <div class="time">
        <div class="placeholder">
          <i class="fas fa-hourglass-half"></i>
          <p>예약시간</p>
        </div>
        <h3>${vo.srtime }</h3>
      </div>
      <div class="company">
        <div class="placeholder">
          <i class="fas fa-building"></i>
          <p>공유주방명</p>
        </div>
        <h3>${vo.stitle }</h3>
      </div>
      <div class="live-stock">
        <div class="placeholder">
          <i class="fa fa-user"></i>
          <p>인원</p>
        </div>
        <h3>${vo.sinwon }</h3>
      </div>
      <div class="booking-status">
        <div class="placeholder">
          <i class="fas fa-question-circle"></i>
          <p>예약상태</p>
        </div>
        <div class="label">
          			<c:if test="${vo.srok=='y' }">
          				<span class="btn2 btn-sm btn-success">승인완료</span>
					</c:if>
					<c:if test="${vo.srok=='n' }">
						<a href="../admin/admin_reserve_ok1.do?sno=${vo.sno }" class="btn2 btn-sm btn-success">승인대기</a>
					</c:if>
        </div>
      </div>
    </div>
    </c:forEach>
   </div>
   </section>
	<table>
		<tr>
			<td>
				<div id="reserve_info"></div>
			</td>
		</tr>
	</table>
</body>
</html>