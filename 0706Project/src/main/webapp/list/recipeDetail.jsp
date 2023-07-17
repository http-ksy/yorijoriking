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
$(function() {
	$('#reply').click(function() {
		
	})
})
</script>
</head>
<body>
<!-- Page Header -->
    <header class="page-header page-header-mini">
        <h1 class="title">${rvo.title }</h1>
        <ol class="breadcrumb pb-0">
            <li class="breadcrumb-item">${rvo.info_1 }</a></li>
            <li class="breadcrumb-item">${rvo.info_2 }</a></li>
            <li class="breadcrumb-item">${rvo.info_3 }</a></li>
            
        </ol>
    </header>
    <!-- End Of Page Header -->

    <section class="container">
        <div class="page-container">
            <div class="page-content">
                <div class="card">
                    <div class="card-header pt-0">
                        <div class="blog-media mb-4">
                            <img src="${rvo.poster }" alt="" class="w-100">
                        </div>  
                        <small class="small text-muted">
                        <!--chefpos 값일때 -->
                        <c:if test="${rvo.chef_pos==null }">
                        <img alt="" src="../img/defaultchef_pos.jpg" style="width:50px; height:50px;">
                        </c:if>
                        <c:if test="${rvo.chef_pos!=null }">
                        <img alt="" src="${rvo.chef_pos }" style="width:50px; height:50px;">
                        </c:if>
                            <span class="px-2">·</span>
                            <span>${rvo.chef }</span>
                        </small><br>
                         <small class="small text-muted">
                         <!-- if문쓰기 -->
                            <span class="px-2">${rvo.chef_info }</span>
                        </small>
                    </div>
                    <!-- 상세설명 시작 -->
                    <div class="card-body border-top">
                        <h2 class="title text-center"><b>조리순서</b></h2> <!-- step 1,2,3,4 -->
                        <!-- for -->
                      <c:forEach var="step" items="${step_post }" varStatus="s">  
                        <table class="table" style="border: 1px solid cyan">
                          
                          <tr>  
                         	 <th>${s.index+1 }번 ${step_text[s.index] }</th>   

                          </tr>
                            
                          <tr>
                          		<td colspan="1"><img src="${step }" style="width:100%; margin:auto;height:300px;"></td> 
                          </tr>
                        </table>
                         </c:forEach>  
                        <!-- for문 종료 -->
                    </div>
<!--  -->                   
            <div class="card-footer">
              <h6 class="mt-5 mb-3 text-center"><a href="#" class="text-dark">총 댓글:&nbsp;${reply_count }개</a></h6>
                        <hr>
                       <%-- <div class="media">
                         <table class="table">
                           <tr>
                            <td>
                          <c:forEach var="rvo" items="${list }">
                                <table class="table">
                                 <tr>
                                  <td class="text-left">
                                   ●${rvo.name }&nbsp;(${rvo.dbday })
                                   </td>
                                   <td class="text-right">
                                     <c:if test="${sessionScope.id!=null }">	로그인 되었고
			 					      <c:if test="${sessionScope.id == rvo.id }">	본인이 썼는지
			 			                <span class="btn btn-xs btn-success ups" data-no="${rvo.no }">수정</span>
			 			                <a href="../board/reply_delete.do?no=${rvo.no}&bno=${vo.bno}" class="btn btn-xs btn-info">삭제</a>
			 			              </c:if>  
			 			             </c:if> 
                                   </td>
                                 </tr>
                                 <tr>
                                  <td>
                                   <pre>${rvo.msg }</pre>
                                   <span class="text-dark small font-weight-bold ins" data-no="${rvo.no }"><img src="../board/image/reply.png" style="width:20px; height:20px;"></span>
                                  </td>
                                 </tr>  
                                                             
                                  <tr style="display:none" class="updates" id="u${rvo.no}"> 수정버튼 여러개 >> 구분
				 			          <td colspan="2">
								  	   <form method="post" action="../board/reply_update.do" class="inline">
								  	     <input type=hidden name=bno value="${vo.bno }"> 페이지 이동하는 변수
								  	 bno는 다시 detail.do로 이동    
								  	     <input type=hidden name=no value="${rvo.no }"> rvo에 해당하는 msg를 변경 (수정대상)
								  	     <textarea rows="5" cols="60" name="msg" class="form-control">${rvo.msg }</textarea>
										 <input type=submit value="댓글수정" class="btn btn-primary btn-block">
								  	   </form>
								  	  </td>
								  </tr>                                                 
                            </table>                                                                                                                                                                                                                                                                                      
                         </c:forEach>
                          </tr>
                         </table>
                        </div> --%>
<%--댓글 --%>
                        <h6 class="mt-5 mb-3 text-center"><a href="#" class="text-dark">Write Your Comment</a></h6>
                        <hr>
                      <c:if test="${sessionScope.id != null }">
                       <form method="post" action="../reply/reply_insert.do" class="inline">
						 <%-- <input type=hidden name=rdno value="${rvo.rdno }">
						 <input type=hidden name=type value="1"> --%>
                         <textarea rows="5" cols="60" name="msg" class="form-control" placeholder="댓글을 작성해주세요."></textarea>                                             
                         <input type=submit class="btn btn-primary btn-block" value="댓글쓰기" data-no="${rdno }" data-type="1" id="reply">             
                        </form>
                      </c:if>                      
                 </div>
 <!-- 여기까지 -->                  
                                      
                </div> 


<!--  -->
                <h6 class="mt-5 text-center">Related Posts</h6>
                <hr>
                <div class="row">                       
                    <div class="col-md-6 col-lg-4">
                        <div class="card mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="assets/imgs/blog-2.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#Placeat</a>        
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h6 class="card-title mb-2"><a href="#" class="text-dark">Voluptates Corporis Placeat</a></h6>  
                                <small class="small text-muted">January 20 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">34 Comments</a>
                                </small>
                            </div>                  
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="card mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="assets/imgs/blog-3.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#dolores</a>        
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h6 class="card-title mb-2"><a herf="#" class="text-dark">Dolorum Dolores Itaque</a></h6>   
                                <small class="small text-muted">January 19 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">64 Comments</a>
                                </small>
                            </div>      
                        </div>
                    </div>                 
                   <div class="col-md-6 col-lg-4 d-none d-lg-block">
                        <div class="card mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="assets/imgs/blog-4.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#amet</a>       
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h6 class="card-title mb-2">Quisquam Dignissimos</h6>   
                                <small class="small text-muted">January 17 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">93 Comments</a>
                                </small>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sidebar -->
            <div class="page-sidebar">
               	<h6 class=" ">지도</h6> 
                 <div style="height: 300px;width:280px; border:1px solid red">
                 
                 </div>
    
<!--                 <div class="ad-card"> -->
<!--                    <div style="display"><span href="#" class="font-weight-bold">ADS</span></div> -->
<!--                     <input type="button" value="전체삭제" class="btn btn-sm btn-danger"> -->
<!--                 </div> -->
                <div class="ad-card">
                   <div><table class="table">
                   		<tr>
                   		<td><img src="">pic</td>
                   		</tr>
                   		<tr>
                   			<td>최근목록</td>
                   			
                   		</tr>
                   </table>
                   <input type="button" class="btn btn-sm btn-danger" value="전체삭제">
                   </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>