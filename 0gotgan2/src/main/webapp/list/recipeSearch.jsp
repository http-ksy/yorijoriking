<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <div class="container">
        <div class="row mb-4">
            <h2 class="col-6 tm-text-primary ">
                레시피
            </h2>
           </div>
            <div class="text-center ">
            <a href="../list/recipeList.do?type=soup"><input type="button" value="국/탕" class="btn btn-xs b1"></a>
            <a href="../list/recipeList.do?type=maindish"><input type="button" value="메인반찬" class="btn btn-xs b1"></a>
            <a href="../list/recipeList.do?type=sidedish"><input type="button" value="사이드반찬" class="btn btn-xs b1"></a>
            </div>
        <!-- for -->
        <div class="row tm-mb-90 tm-gallery">
        <c:forEach var="list" items="${list }" varStatus="s">
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <a href="../list/recipeDetail_before.do?rdno=${list.rdno }"><figure class="effect-ming tm-video-item">
                    <img src="${list.poster }" alt="Image" class="img-fluid" style="width:250px; height:150px; border-radius:20px;">
                    <figcaption class="d-flex align-items-center justify-content-center">
                    <h2>     
                    <c:if test="${list.title.length()>10 }">
                    <span class="tm-text-gray-dark" >${list.title.substring(0,10) }</span>
                    </c:if>
                    <c:if test="${list.title.length()<=10 }">
                    <span class="tm-text-gray-dark" >${list.title }</span>
                    </c:if>
                    </h2>
                    </figcaption>  
                                      
                </figure></a>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">${list.chef }</span>
                  
                    <c:if test="${list.chef_pos !=null }">
                    <img alt="chef_poster" src="${list.chef_pos }" style="width:50px; border-radius:50px;">
                    </c:if>
                    <c:if test="${list.chef_pos == null }">
                    <img alt="chef_poster" src="../img/defaultchef_pos.jpg " style="width:50px; border-radius:50px;">
                    </c:if>
                </div>
            </div>
            </c:forEach>
              <!-- for문 종료 -->
        </div> 
        <div class="row">
<%--   	 	  <a href="recipeList.do?type=${type}&page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-info">이전</a> --%>
<%--   	 	  ${curpage } page / ${totalpage } pages --%>
<%--   	 	  <a href="recipeList.do?type=${type }&page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-info">다음</a> --%>
		<div class="text-center">
			<ul class="pagination">
  	 	  <c:if test="${startpage>1 }">
  	 	  	<li><a href="catefind.do?fd=${fd}&cate=${cate}&page=${startpage-1 }" >&lt;</a></li> 
  	 	  </c:if>
  	 	  <c:forEach var="i" begin="${startpage }" end="${endpage }">
  	 	     <c:if test="${curpage==i }">
  	 	     <li class="active"><a href="catefind.do?fd=${fd}&cate=${cate}&page=${i}">${i }</a></li>
  	 	     </c:if>
  	 	     <c:if test="${curpage!=i }">
  	 	     <li class=""><a href="catefind.do?fd=${fd}&cate=${cate}&page=${i}">&nbsp;${i }</a></li>
  	 	     </c:if>
  	 	  </c:forEach>
  	 	   <c:if test="${endpage<totalpage }">
  	 	    <li><a href="catefind.do?fd=${fd}&cate=${cate}&page=${endpage+1 }">&gt;</a></li>
  	 	  </c:if>
  	 	  	</ul>
  	 	  </div>
        </div>
      </div> 
</body>
</html>