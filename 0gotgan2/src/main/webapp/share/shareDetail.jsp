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

<!-- Page Header -->

    <header class="page-header page-header-mini">

        <h1 class="title">${svo.title }</h1>

        <ol class="breadcrumb pb-0">

            <li class="breadcrumb-item">${svo.sub_title }</a></li>

        </ol>

    </header>

    <!-- End Of Page Header -->



    <section class="container">

        <div class="page-container">

            <div class="page-content">

                <div class="card">

                    <div class="card-header pt-0">

                        <div class="blog-media mb-4">

                            <img src="${svo.poster }" alt="" class="w-100">

                        </div>  

                        <small class="small text-muted">

                       	<span>${svo.max_mem }</span>

                            <span class="px-2">·</span>

                            <span>${svo.price }</span>

                        </small><br>

                         <small class="small text-muted">

                         <!-- if문쓰기 -->

                            <span class="px-2">${svo.run }</span>

                             <span class="px-2">${svo.holi }</span><br>

                             <span class="px-2">${svo.address }</span><br>

                             <span class="px-2">${svo.hs_tag }</span>

                        </small>

                    </div>

                    <!-- 상세설명 시작 -->

                    <div class="card-body border-top">

                        <h2 class="title text-center">소개</h2> <!-- step 1,2,3,4 -->

                        <!-- for -->

                        <pre style="white-space: pre-wrap;border:none;background-color: white">${svo.intro }</pre>

                        <!-- for문 종료 -->
	
                    </div>
					
                    <div class="card-body border-top">

                        <h2 class="title text-center">정보</h2> <!-- step 1,2,3,4 -->

                        <!-- for -->

                        <pre style="white-space: pre-wrap;border:none;background-color: white">${svo.info }</pre>

                        <!-- for문 종료 -->

                    </div>

                    <div class="card-body border-top">

                        <h2 class="title text-center">환불규정</h2> <!-- step 1,2,3,4 -->

                        <!-- for -->

                       <pre style="white-space: pre-wrap;border:none;background-color: white">${svo.refund }</pre>

                        <!-- for문 종료 -->

                    </div>
					<div class="text-center">
					<a class="btn  b1" style="width: 150px" href="javascript:history.back()">목록으로</a> 
					</div>
                    <div class="card-footer">

                         <h6 class="mt-5 mb-3 text-center"><a href="#" class="text-dark">Comments 4</a></h6>

                        <hr>

                        <div class="media">

                            <img src="assets/imgs/avatar-1.jpg" class="mr-3 thumb-sm rounded-circle" alt="...">

                            <div class="media-body">

                                <h6 class="mt-0">Janice Wilder</h6>

                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>

                                <a href="#" class="text-dark small font-weight-bold"><i class="ti-back-right"></i> Replay</a>

                                <div class="media mt-5">

                                    <a class="mr-3" href="#">

                                    <img src="assets/imgs/avatar.jpg" class="thumb-sm rounded-circle" alt="...">

                                    </a>

                                    <div class="media-body align-items-center">

                                        <h6 class="mt-0">Joe Mitchell</h6>

                                        <p>Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus</p>

                                        <a href="#" class="text-dark small font-weight-bold"><i class="ti-back-right"></i> Replay</a>



                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="media mt-5">

                            <img src="assets/imgs/avatar-2.jpg" class="mr-3 thumb-sm rounded-circle" alt="...">

                            <div class="media-body">

                                <h6 class="mt-0">Crosby Meadows</h6>

                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>

                                <a href="#" class="text-dark small font-weight-bold"><i class="ti-back-right"></i> Replay</a>

                            </div>

                        </div>

                        <div class="media mt-4">

                            <img src="assets/imgs/avatar-3.jpg" class="mr-3 thumb-sm rounded-circle" alt="...">

                            <div class="media-body">

                                <h6 class="mt-0">Jean Wiley</h6>

                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>

                                <a href="#" class="text-dark small font-weight-bold"><i class="ti-back-right"></i> Replay</a>

                            </div>

                        </div>



                        <h6 class="mt-5 mb-3 text-center"><a href="#" class="text-dark">Write Your Comment</a></h6>

                        <hr>

                        <form>

                            <div class="form-row">

                                <div class="col-12 form-group">

                                    <textarea name="" id="" cols="30" rows="10" class="form-control" placeholder="Enter Your Comment Here"></textarea>

                                </div>

                                <div class="col-sm-4 form-group">

                                    <input type="text" class="form-control" value="Name">

                                </div>

                                <div class="col-sm-4 form-group">

                                    <input type="email" class="form-control" placeholder="Email">

                                </div>

                                <div class="col-sm-4 form-group">

                                    <input type="url" class="form-control" placeholder="Website">

                                </div>

                                <div class="form-group col-12">

                                    <button class="btn btn-primary btn-block">Post Comment</button>

                                </div>

                            </div>

                        </form>

                    </div>                  

                </div> 



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
				
				 <div class="page-sidebar">

                <h6 class=" ">지도</h6>

                <div id="map" style="height: 300px;width: 280px; border: 1px solid red">

                	

                </div>	
<!--                  <div style="height: 300px;width:280px; border:1px solid red"> -->
<!--                  </div> -->
    
<!--                 <div class="ad-card"> -->
<!--                    <div style="display"><span href="#" class="font-weight-bold">ADS</span></div> -->
<!--                     <input type="button" value="전체삭제" class="btn btn-sm btn-danger"> -->
<!--                 </div> -->
                <div class="ad-card" style="height: 300px">
               <br><h3 class=" ">최근 본 레시피</h3>
                   <div>
<!--                     <span class="btn btn-xs btn-danger" id="cookieDel"><a href="../list/recipeCookieDel.do">전체삭제</a></span> -->
                   <!-- forEach -->
                 <c:forEach var="cvo" items="${clist }" varStatus="s">
                 <c:if test="${s.index>=0 && s.index<3 }">
                 <table class="table">
                 <tr>
                 <td><a href="../share/shareDetail.do?skdno=${cvo.skdno }"> <img src="${cvo.poster }" style="width: 200px; height:150px; border-radius:30px !important;">
<!--                   -->
				 </a> 
                 </td>
                 </tr>
                 <tr>
                   <td>${cvo.title }</td>
                 </tr>
                 </table>
                 </c:if>
                 </c:forEach>
                   <!-- forEach -->
                  
                   </div>
                   
                </div>
            </div>

        </div>

    </section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2633d4b49e21c9b14bd17316553d25a2&libraries=services"></script>

<script>

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 

    mapOption = {

        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표

        level: 3 // 지도의 확대 레벨

    };  



// 지도를 생성합니다    

var map = new kakao.maps.Map(mapContainer, mapOption); 



// 주소-좌표 변환 객체를 생성합니다

var geocoder = new kakao.maps.services.Geocoder();



// 주소로 좌표를 검색합니다

geocoder.addressSearch('${svo.address}', function(result, status) {



    // 정상적으로 검색이 완료됐으면 

     if (status === kakao.maps.services.Status.OK) {



        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);



        // 결과값으로 받은 위치를 마커로 표시합니다

        var marker = new kakao.maps.Marker({

            map: map,

            position: coords

        });



        // 인포윈도우로 장소에 대한 설명을 표시합니다

        var infowindow = new kakao.maps.InfoWindow({

            content: '<div style="width:220px;text-align:center;padding:6px 0;">${svo.title }</div>'

        });

        infowindow.open(map, marker);



        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다

        map.setCenter(coords);

    } 

});    

</script>

</body>

</html>