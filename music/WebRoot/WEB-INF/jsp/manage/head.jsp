<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
   <%
   boolean islogin=false;
   User user=(User)session.getAttribute("user");
   if(user!=null){
   	islogin=true;
   }
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="js/search.js"></script>
<body >
<div class="div-1"  style="width:956px; margin:auto;">

<div style="background:url('images/mange/mange.png') no-repeat;height:200px">
</div>
<div id="top">

 
</div></div>
</body>
</html>
