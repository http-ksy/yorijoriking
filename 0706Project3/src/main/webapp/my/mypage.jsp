<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%--
 	String mode=request.getParameter("mode");
 	if(mode==null)
 		mode="1";
 	String jsp="";
 	int index=Integer.parseInt(mode);
 	switch(index)
 	{
 	case 1:
 		jsp="myinfo.jsp";
 		break;
 	case 2:
 		jsp="response.jsp";
 		break;
 	case 3:
 		jsp="application.jsp";
 		break;
 	case 4:
 		jsp="pageContext.jsp";
 		break;
 	case 5:
 		jsp="out.jsp";
 		break;
 	case 6:
 		jsp="etc.jsp";
 		break;
 	case 7:
 		jsp="session.jsp";
 		break;
 	case 8:
 		jsp="action.jsp";
 		break;
 		
 	}
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  
</head>
<body >
    <div style="display: flex;">
    <aside class="aside-ads" style="background-color: red; position: fixed; display: flex;">
         <div class="" style="background-color: #e6fbf6; margin-bottom: -60px; height: 500px; position: fixed; width: 250px;">
            <div class="container">
	 	<div class="text-center"><br>
	 		<h1>�޴���</h1>
	 	</div>
	 	 <div class="navbar-nav">
	 	 	<div class="nav-item">
	 	 	  <div style="height: 30px"></div>
	 	 	  <table class="table" >
	 	 	  <tr height="35">
	 	 	   <td class="text-center"><a href="../my/myinfo.do" style="color:black">������</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=2" style="color:black">����</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=3" style="color:black">���ƿ���</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=4" style="color:black">��ٱ���</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=5" style="color:black">������Ȳ</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=6" style="color:black">������Ȳ</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=7" style="color:black">�����ϱ�</a></td>
	 	 	  </tr>
	 	 	  <tr height="35">
	 	 	   <td class="text-center"><a href="mypage.do?mode=8" style="color:black">���� ������</a></td>
	 	 	  </tr>
	 	 	  </table>
	 	 	</div>
	 	 </div>
	 	  
	</div>
        </div>
    </aside>
    <section class="container"> <!-- ������ ���� -->
        <div class="col-sm-8" >
        	  
	 	 	  <jsp:include page="${jsp}"></jsp:include>
	 	 	</div>
	 	 	<div class="row">
	 	  	<h1>���� ����־ ����Ұ� �����鼭�� ���� �ʿ��� �Ƚᵵ �ɲ� ������ ���� ������ ��</h1>
	 	  </div>
    </section>
</div>
</body>
</html>