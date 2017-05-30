<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% 
    String result = (String)request.getAttribute("result");
    String url = (String) request.getAttribute("url");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=result %></title>
</head>
<body onload="out(3)">
	<div align="center">
		<span  style="font-size: 20px;font-weight: bold;"><%=result %></span>
		<span>三秒钟后自动返回</span><span id="out"></span><span><a href='<%=url %>'  >如未自动跳转请点击</a></span>
	</div>
</body>
</html>
<script language=javascript>

out(3);
function out(obj){
var i=obj;
document.getElementById("out").innerHTML=i;
if(i==0){
	window.location.href ="<%=url%>";
}
i--;
setTimeout("out("+i+")",1000);
}
</script>