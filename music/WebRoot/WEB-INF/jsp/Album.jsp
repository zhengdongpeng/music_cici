<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%
     Album album = (Album)request.getAttribute("album");
    
    %>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>
<script type="text/javascript" src="js/music.js"></script>
</head>
<body>
<div id="wrapper">
<div class="pic">
	
	<table width="970" height="425" border="0">
  <tr>
    <td width="418" height="421" bgcolor="#FFFFFF"><img src="<%=album.getImg() %>" height="289" width="367"/></td>
    <td width="542" bgcolor="#FFFFFF"><table width="542" height="130" border="0">
	<tr>
	  <td width="110" height="44" ><h1>专辑名:</h1></td>
	  <td width="239"><h1><%=album.getAname() %></</h1></td>
	</tr>   
	<tr>
	  <td height="40"><h3>歌手:</h3></td>
	  <td><h3><%=album.getSingername() %></h3></td>
	</tr>
	<tr>
	  <td height="38"><h3>发型时间：</h3></td>
	  <td><h3><fmt:formatDate value="<%=album.getFbtime()%>" pattern="yyyy-MM-dd"/></h3></td>
	</tr>
	<tr>
	  <td height="38"><h3>专辑介绍：</h3></td>
	  <td><h3><%=album.getJs()%></h3></td>
	</tr>
	</table></td>
  </tr>


</table>
</div>
<div>
<p><b>专辑曲目</b></p>
	<ol>
	  <li>点烟</li>
	  <li>少年耶,安啦</li>
	  <li>只要为你活一天</li>
	</ol>
</div>
</div>
</body>
</html>
