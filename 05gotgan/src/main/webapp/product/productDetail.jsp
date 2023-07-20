<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	  $(".heart").on("click", function() {
		    let pdno=$(this).attr('data-no')
			let types=$(this).attr('data-type')
			let hno=$(this).attr('data-cancel')
			console.log(hno);
			if(hno==0)
			{
				$(this).toggleClass("is-active");
				$.ajax({
					 type:'post',
					 data:{'jno':pdno,'types':types},
				 	 url:'../heart/insert.do',
				 	 success:function(result)
				 	 {
				 		 /*result count 총 갯수*/
				 		
				 		 location.reload(); 
				 	 }
				})
			}
			else 
			{
				$(this).toggleClass("is-active");
				$.ajax({
					 type:'post',
					 data:{'no':hno},
				 	 url:'../heart/heart_delete.do',
				 	 success:function(result)
				 	 {
				 		 /*result count 총 갯수*/
				 		 
				 		 location.reload(); 
				 	 }
				})
			}
		  });
	
	  $('#jjim').click(function(){
			 let types=$(this).attr('data-type')
			 let fdno=$(this).attr('data-no')
			 let no=$(this).attr('data-num')
			 $.ajax({
				 type:'post',
				 data:{'jno':fdno,'types':types},
				 url:'../jjim/insert.do',
				 success:function(result)
				 {
					 alert('찜하기 완료')
					 location.reload();
				 }
			 })
		 })
		  $('#jjims').click(function(){
			 let no=$(this).attr('data-num')
			 $.ajax({
				 type:'post',
				 data:{'no':no},
				 url:'../jjim/jjim_delete.do',
				 success:function(result)
				 {
					 alert('찜하기 취소')
					 location.reload();
				 }
			 })
		 })
})

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.heart {
  width: 100px;
  height: 100px;
  background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
  background-position: 0 0;
  cursor: pointer;
  transition: background-position 1s steps(28);
  transition-duration: 0s;
  
  &.is-active {
    transition-duration: 1s;
    background-position: -2800px 0;
  }
}

@font-face {
  font-family: Cyber;
  src: url("https://assets.codepen.io/605876/Blender-Pro-Bold.otf");
  font-display: swap;
}

* {
  box-sizing: border-box;
}

/* body {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  min-height: 100vh;
  font-family: 'Cyber', sans-serif;
  background: linear-gradient(90deg, #f5ed00 70%, #e6de00 70%), #fff700;
} */

body .cybr-btn + .cybr-btn {
  margin-top: 2rem;
}

.cybr-btn {
  --primary: hsl(var(--primary-hue), 85%, calc(var(--primary-lightness, 50) * 1%));
  --shadow-primary: hsl(var(--shadow-primary-hue), 90%, 50%);
  --primary-hue: 0;
  --primary-lightness: 50;
  --color: hsl(0, 0%, 100%);
  --font-size: 26px;
  --shadow-primary-hue: 180;
  --label-size: 9px;
  --shadow-secondary-hue: 60;
  --shadow-secondary: hsl(var(--shadow-secondary-hue), 90%, 60%);
  --clip: polygon(0 0, 100% 0, 100% 100%, 95% 100%, 95% 90%, 85% 90%, 85% 100%, 8% 100%, 0 70%);
  --border: 4px;
  --shimmy-distance: 5;
  --clip-one: polygon(0 2%, 100% 2%, 100% 95%, 95% 95%, 95% 90%, 85% 90%, 85% 95%, 8% 95%, 0 70%);
  --clip-two: polygon(0 78%, 100% 78%, 100% 100%, 95% 100%, 95% 90%, 85% 90%, 85% 100%, 8% 100%, 0 78%);
  --clip-three: polygon(0 44%, 100% 44%, 100% 54%, 95% 54%, 95% 54%, 85% 54%, 85% 54%, 8% 54%, 0 54%);
  --clip-four: polygon(0 0, 100% 0, 100% 0, 95% 0, 95% 0, 85% 0, 85% 0, 8% 0, 0 0);
  --clip-five: polygon(0 0, 100% 0, 100% 0, 95% 0, 95% 0, 85% 0, 85% 0, 8% 0, 0 0);
  --clip-six: polygon(0 40%, 100% 40%, 100% 85%, 95% 85%, 95% 85%, 85% 85%, 85% 85%, 8% 85%, 0 70%);
  --clip-seven: polygon(0 63%, 100% 63%, 100% 80%, 95% 80%, 95% 80%, 85% 80%, 85% 80%, 8% 80%, 0 70%);
  font-family: 'Cyber', sans-serif;
  color: var(--color);
  cursor: pointer;
  background: transparent;
  text-transform: uppercase;
  font-size: var(--font-size);
  outline: transparent;
  letter-spacing: 2px;
  position: relative;
  font-weight: 700;
  border: 0;
  min-width: 300px;
  height: 75px;
  line-height: 75px;
  transition: background 0.2s;
}

.cybr-btn:hover {
  --primary: hsl(var(--primary-hue), 85%, calc(var(--primary-lightness, 50) * 0.8%));
}
.cybr-btn:active {
  --primary: hsl(var(--primary-hue), 85%, calc(var(--primary-lightness, 50) * 0.6%));
}

.cybr-btn:after,
.cybr-btn:before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  clip-path: var(--clip);
  z-index: -1;
}

.cybr-btn:before {
  background: var(--shadow-primary);
  transform: translate(var(--border), 0);
}

.cybr-btn:after {
  background: var(--primary);
}

.cybr-btn__tag {
  position: absolute;
  padding: 1px 4px;
  letter-spacing: 1px;
  line-height: 1;
  bottom: -5%;
  right: 5%;
  font-weight: normal;
  color: hsl(0, 0%, 0%);
  font-size: var(--label-size);
}

.cybr-btn__glitch {
  position: absolute;
  top: calc(var(--border) * -1);
  left: calc(var(--border) * -1);
  right: calc(var(--border) * -1);
  bottom: calc(var(--border) * -1);
  background: var(--shadow-primary);
  text-shadow: 2px 2px var(--shadow-primary), -2px -2px var(--shadow-secondary);
  clip-path: var(--clip);
  animation: glitch 2s infinite;
  display: none;
}

.cybr-btn:hover .cybr-btn__glitch {
  display: block;
}

.cybr-btn__glitch:before {
  content: '';
  position: absolute;
  top: calc(var(--border) * 1);
  right: calc(var(--border) * 1);
  bottom: calc(var(--border) * 1);
  left: calc(var(--border) * 1);
  clip-path: var(--clip);
  background: var(--primary);
  z-index: -1;
}

@keyframes glitch {
  0% {
    clip-path: var(--clip-one);
  }
  2%, 8% {
    clip-path: var(--clip-two);
    transform: translate(calc(var(--shimmy-distance) * -1%), 0);
  }
  6% {
    clip-path: var(--clip-two);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }
  9% {
    clip-path: var(--clip-two);
    transform: translate(0, 0);
  }
  10% {
    clip-path: var(--clip-three);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }
  13% {
    clip-path: var(--clip-three);
    transform: translate(0, 0);
  }
  14%, 21% {
    clip-path: var(--clip-four);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }
  25% {
    clip-path: var(--clip-five);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }
  30% {
    clip-path: var(--clip-five);
    transform: translate(calc(var(--shimmy-distance) * -1%), 0);
  }
  35%, 45% {
    clip-path: var(--clip-six);
    transform: translate(calc(var(--shimmy-distance) * -1%));
  }
  40% {
    clip-path: var(--clip-six);
    transform: translate(calc(var(--shimmy-distance) * 1%));
  }
  50% {
    clip-path: var(--clip-six);
    transform: translate(0, 0);
  }
  55% {
    clip-path: var(--clip-seven);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }
  60% {
    clip-path: var(--clip-seven);
    transform: translate(0, 0);
  }
  31%, 61%, 100% {
    clip-path: var(--clip-four);
  }
}

.cybr-btn:nth-of-type(2) {
  --primary-hue: 260;
}
</style>
</head>
<body>
	<!-- Page Header -->
    <header class="page-header page-header-mini">
        <%-- <h1 class="title">${pvo.title }</h1> --%>
       <h1 class="title">${pvo.title }</h1>
        <c:if test="${sessionScope.id!=null }">
         <c:if test="${hno!=0 }">
          <div class= "heart text-center like is-active" data-no="${pdno }" data-type="3" data-cancel="${hno }">${htotal }</div>
         </c:if>
         <c:if test="${hno==0 }">
          <div class= "heart text-center like " data-no="${pdno }" data-type="3" data-cancel="${hno }">${htotal }</div>
         </c:if>
        </c:if>
        
        </h1>
        
    </header>
    <!-- End Of Page Header -->

    <section class="container ">
        <div class="page-container" > <!-- style="width:1000px;" -->
            <div class="page-content">
                <div class="card">
		<table class="table">
       <tr>
         <td width=60% class="text-center" rowspan="8">
          <img src="${pvo.poster }" style="width: 100%; height: 400px; ">
         </td>
         <td width=40%><h3>${pvo.title }</h3></td>
       </tr>
       <tr>
        <td><span style="color:gray">${pvo.subject }</span></td>
       </tr>
       <tr>
        <td class="inline"><span style="color:red">${pvo.sale }</span>
          &nbsp;<h3 style="display: inline;">${pvo.priced_sale }</h3>
        </td>
       </tr>
       <tr>
        <td><span style="color:green;font-size:8px">${pvo.first_pri }</span>&nbsp;<span style="color:green;"><del>${pvo.original_pri }</del></span></td>
       </tr>
       <tr>
        <td>배송&nbsp;&nbsp;<span style="color:gray">${pvo.delivery_pri }</span></td>
       </tr>
       <tr>
        <td class="inline">
         수량:<select name="account" class="input-sm" style="width:350px">
               <option value="${pvo.goods_count }">${pvo.goods_count }</option>
         </select>
        </td>
       </tr>
       <tr>
         <td class="text-right"></td>
       </tr>
<!--        <tr> -->
<!--         <td class="inline" colspan="2"> -->
<!--           <input type=button class="btn b1" value="장바구니" style="width: 150px"> -->
<!--           <input type=button class="btn btn-lg btn-info b1" value="바로구매" style="width: 150px"> -->
<!--         </td> -->
<!--        </tr> -->
     </table>
     <div class="text-right ">
     	 
     	 <input type=button class="btn b1" value="장바구니" style="width: 150px">
          <input type=button class="btn  b1" value="바로구매" style="width: 150px"> 
          <a class="btn  b1" style="width: 150px" href="javascript:history.back()">목록으로</a> 
<%--           <c:if test="${sessionScope.id!=null }"> --%>
<%--            <button class="cybr-btn" id="jjim" data-no="${pdno }" data-type="3" data-cnt="${count }"> --%>
<%--            <c:if test="${no==0 }"> --%>
<!--             <span aria-hidden>찜하기</span> -->
<%--            </c:if> --%>
<%--             <c:if test="${no!=0 }"> --%>
<%-- 			<span aria-hidden class="jjims" data-cancel="${no }">찜하기취소</span> --%>
<%-- 			 </c:if> --%>
<!--            </button> -->
<%--           </c:if> --%>
			<c:if test="${sessionScope.id!=null }">
				<c:if test="${no==0 }">
					 <button class=" btn b1" id="jjim"  data-no="${pdno }" data-type="3" data-num="${no }">찜하기</button>
				</c:if>
				  <c:if test="${no!=0 }">
					 <button class="btn b1" id="jjims"  data-num="${no }">찜 취소</button>
				  </c:if>
			</c:if>
          
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

            </div>
            <!— Sidebar —>
            <div class="page-sidebar">
                <div class="ad-card" style="height: 300px">
               <br><h3 class=" ">최근 본 레시피</h3>
                   <div>
<!--                     <span class="btn btn-xs btn-danger" id="cookieDel"><a href="../list/recipeCookieDel.do">전체삭제</a></span> -->
                   <!-- forEach -->
                 <c:forEach var="cvo" items="${clist }" varStatus="s">
                 <c:if test="${s.index>=0 && s.index<3 }">
                 <table class="table">
                 <tr>
                 <td><a href="../product/productDetail.do?pdno=${cvo.pdno }"> <img src="${cvo.poster }" style="width: 200px; height:150px; border-radius:30px !important;">
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
</body>
</html>