<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1 {color:red}
p {color:blue}
.l1{ float:left}
.r1{ float:right}
</style>
</head>
<body>
<div>
 <jsp:include page="../WEB-INF/jsp/head.jsp"></jsp:include>
 </div>
<div >
<div style="width:40%" class="l1" align="center">

<p>  <img src="../images/1.png" width="280" height="280" /></p>
<p><audio controls="controls" height="100" width="100">
  <source src="../sound/intro.mp3" type="audio/mp3" />
<embed height="100" width="100" src="../sound/intro.mp3" /></audio></p>
  </div>


<div style="width:60%" class="r1">
  <img src="../images/a.gif" width="800"/>
    
</div>

</div>


<div>
<img src="../images/2.jpg" width="1349" height="626" />  
</div>
<div>
<img src="../images/3.jpg" width="1366" height="768" /></div>
<div>
<img src="../images/4.jpg" width="1365" height="768" />
</body>
</html>