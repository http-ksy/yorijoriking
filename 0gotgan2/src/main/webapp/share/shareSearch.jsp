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
            <h2 class="col-6 tm-text-primary">
                ${fd } 검색결과
            </h2>
        </div>
        <!-- forEachh -->
         <div class="row tm-mb-90 tm-gallery">
        <c:forEach var="list" items="${list }">
        	<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
              	  <a href="../share/shareDetail_before.do?skdno=${list.skdno }">
                    <img src="${list.poster }" alt="Image" class="img-fluid rounded" style="width:250px; height:150px; border-radius:20px;">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>
                        <c:if test="${list.title.length()>10 }">
                          	 ${list.title.substring(0,10) }
                          </c:if>
                        
                          <c:if test="${list.title.length()<=10 }">
                          	 ${list.title }
                          </c:if>
                        </h2>
                       
                    </figcaption>   
                     </a>                 
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                	<span>${list.max_mem }</span> 	 
                    <span>${list.price }</span>
                </div>
            </div>  
            </c:forEach>
            <!-- forEach end -->
        </div> 
        <div class="row">
<%--   	 	  <a href="recipeList.do?type=${type}&page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-info">이전</a> --%>
<%--   	 	  ${curpage } page / ${totalpage } pages --%>
<%--   	 	  <a href="recipeList.do?type=${type }&page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-info">다음</a> --%>
		<div class="text-center">
			<ul class="pagination">
  	 	  <c:if test="${startpage>1 }">
  	 	  	<li><a href="catefind.do?cate=${cate }&fd=${fd }&page=${startpage-1 }" >&lt;</a></li> 
  	 	  </c:if>
  	 	  <c:forEach var="i" begin="${startpage }" end="${endpage }">
  	 	     <c:if test="${curpage==i }">
  	 	     <li class="active"><a href="catefind.do?cate=${cate }&fd=${fd }&page=${i}">${i }</a></li>
  	 	     </c:if>
  	 	     <c:if test="${curpage!=i }">
  	 	     <li class=""><a href="catefind.do?cate=${cate }&fd=${fd }&page=${i}">${i }</a></li>
  	 	     </c:if>
  	 	  </c:forEach>
  	 	   <c:if test="${endpage<totalpage }">
  	 	    <li><a href="catefind.do?cate=${cate }&fd=${fd }&page=${endpage+1 }">&gt;</a></li>
  	 	  </c:if>
  	 	  	</ul>
  	 	  </div>
        </div>
       </div>
        <!-- row -->
</body>
</html>