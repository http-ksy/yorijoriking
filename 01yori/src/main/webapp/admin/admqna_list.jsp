<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<style type="text/css">
.a {

	margin: 0px auto;
	width: 950px;
	margin-left:50px;

}
</style>
</head>
<body>
      <div class="a">
		<h2 class="sectiontitle">QnA</h2>
		<table class="table">
	     <tr>
	      <td>
	       
	      </td>
	     </tr>
	    </table>
			<table class="table table-hover" id="article-table">
				<tr>
					<td></td>
				</tr>
				<tr class="table-success">
				
					<th width=40% class="text-center">제목</th>
					<th width=20% class="text-center">작성자</th>
					<th width=20% class="text-center">작성일</th>
					<th width=10% class="text-center">조회수</th>
					<th width=10% class="text-center"></th>
				</tr>

				<c:forEach var="vo" items="${list}">
					<tr>
				       
				       <td width=35%>${vo.subject }</td>
				       <td width=20% class="text-center">${vo.name }</td>
				       <td width=10% class="text-center">${vo.dbday }</td> 
				       <td width=10% class="text-center">${vo.hit }</td>  
				       <td width=10% class="text-center">
					      <c:if test="${vo.isreply==0 }">
					       <a href="../admin/QnA_insert.do?no=${vo.no }" class="btn btn-sm btn-primary">답변대기</a> <!-- 글쓰기이동 -->
					      </c:if>
					      <c:if test="${vo.isreply==1 }">
					       <span class="btn btn-sm btn-default">답변완료</span>
					      </c:if>
					   </td> 
				    </tr>
				</c:forEach>
			
			</table>
			</div>



	 <div class="container">
		<div class="row">
			<div class="justify-content-center">
				<nav id="pagination" aria-label="Page navigation"
					style="margin-left: 400px;">
					<ul class="pagination justify-content-center">
						<c:if test="${curpage>1 }">
							<li class="page-item"><a class="page-link"
								href="../admin/admnotice_list.do?page=${curpage>1?curpage-1:curpage }">Previous</a></li>
						</c:if>

						<c:forEach var="i" begin="${startpage }" end="${endpage }">
							<c:if test="${i==curpage }">
								<li class="page-item"><a class="active" class="active"
									href="../admin/admnotice_list.do?page=${i }">${i }</a></li>
							</c:if>
							<c:if test="${i!=curpage }">
								<li class="page-item"><a class="page-link" class="active"
									href="../admin/admnotice_list.do?page=${i }">${i }</a></li>
							</c:if>
						</c:forEach>

						<c:if test="${curpage<totalpage }">
							<li class="page-item"><a class="page-link"
								href="../admin/admnotice_list.do?page=${curpage<totalpage?curpage+1:curpage }">Next</a></li>
						</c:if>
					</ul>
				</nav>
			</div>

		</div>
	</div> 
</body>
</html>