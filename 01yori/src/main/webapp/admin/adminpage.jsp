<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  
</head>
<body >
    <div style="display: flex;">
    <aside class="aside-ads" style="background-color: red; position: fixed; display: flex;">
         <div class="" style="background-color: #e6fbf6; margin-top: 100px; height: 410px; position: fixed; width: 200px;">
            <div class="container">
	 	<div class="text-center"><br>
	 		<h1>�޴���</h1>
	 	</div>
	 	 <div class="navbar-nav">
	 	 	<div class="nav-item">
	 	 	  <div style="height: 30px"></div>
	 	 	  <table class="table" >
	 	 	  <tr height="35">
	 	 	   <td class="text-center"><a href="../admin/userinfo.do" style="color:black">ȸ������</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="../admin/product_manager.do" style="color:black">��ǰ����</a></td>
	 	 	  </tr>
<!-- 	 	 	   <tr height="35"> -->
<!-- 	 	 	   <td class="text-center"><a href="#" style="color:black">�ֹ�����</a></td> -->
<!-- 	 	 	  </tr> -->
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="../admin/adminpage_reserve.do" style="color:black">�������</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="../admin/board_manager.do" style="color:black">�Խñ۰���</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="../admin/admqna_list.do" style="color:black">1:1 ����</a></td>
	 	 	  </tr>
	 	 	   <tr height="35">
	 	 	   <td class="text-center"><a href="../admin/admnotice_list.do" style="color:black">��������</a></td>
	 	 	  </tr>
	 	 	  </table>
	 	 	</div>
	 	 </div>
	 	  
	</div>
        </div>
    </aside>
    <section class="container"> <!-- ������ ���� -->
        <div class="col-sm-8" >
        	  
	 	 	  <jsp:include page="${jspp}"></jsp:include>
	 	 	</div>
	 	 	
    </section>
</div>
</body>
</html>