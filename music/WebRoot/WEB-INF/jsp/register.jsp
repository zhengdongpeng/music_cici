<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="js/login.js"></script>
<title>注册</title>
<style type="text/css">
.tou{
color:#F39;
font-size:48px;
	font-weight:bold;
	
}
.kuang{
color:#F39;
font-size:20px;
	font-weight:bold;
}
</style>
</head>
<body background="images/bg_dong.gif">
<div id="wrapper">
<jsp:include page="head.jsp"></jsp:include>
  
  <table width="1085" height="207" border="0">
    <tr>
      <td width="453">
      <img src="images/a.png" width="453" height="553" />
      </td>
      
       <td >   
       <h1 class="tou">注册</h1><br/>
       <div>
    <table height="477" border="0" class="kuang">
    <tr>
        <td width="138" colspan="2" align="center"><img src="images/register.png" width="457" height="157" /></td>
        
      </tr>
      
      <tr>
        <td width="138">邮箱</td>
        <td width="300">
        <input type="text" class="email" name="email"/></td>
      </tr>
      <tr>
        <td>登录名</td>
        <td>
        <input type="text" class="username" name="username"/></td>
      </tr>
       <tr>
        <td>用户名</td>
        <td>
        <input type="text" class="uname" name="uname"/></td>
      </tr>
      <tr>
        <td>密码</td>
        <td><input type="password" class="password" name="password"/></td>
      </tr>
      <tr>
        <td>确认密码</td>
        <td><input type="password" class="password1" name="password1"/></td>
      </tr>
      <tr>
        <td>性别</td>
        <td>
        <div id="wrap">
          <input type="radio" name="radio" id="sex" value="男" checked="checked"/>
          <label for="sex"></label>
          男
             <input type="radio" name="radio" id="sex2" value="女" />
          <label for="sex2"></label>
          女</div>
     </td>
      </tr>
      
      <tr>
        <td>验证码</td>
        <td><input type="text" class="yanzhengma" name="yanhengma"  style="width:120px;"/>
        <a href='#' onclick="javascript:changeImg()" > <img id="img" src="authImage" />
        <label >看不清？</label></a></td>
      </tr>
      <tr>
        <td colspan="2" align="center" >
        
        <input class="sumbit" onclick="userregister()" name="input" type="button"   style="background-image:url(images/register.jpg);width:155px;height:55px;" />
      </td></tr>
    </table>
</div>
      </td>
    </tr>
  </table>
</div>
</body>
</html>

</body>
</html>
<script type="text/javascript">
    function changeImg(){
        var img = document.getElementById("img"); 
        img.src = "authImage?date=" + new Date();;
    }
</script>