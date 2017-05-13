<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body>
<div id="wrapper">
<jsp:include page="head.jsp"></jsp:include>
  
  <table width="1085" height="207" border="0">
    <tr>
      <td width="453">
      <img src="images/a.png" width="453" height="553" />
      </td>
      
       <td >   
       <h1 >登录</h1>
       <div class="logindiv">
           <table width="432" height="359" border="1">
            <tr>
              <td width="122" height="48">账号</td>
              <td width="294"><input type="text" class="username" name="username"/></td>
            </tr>
            <tr>
              <td height="48"><p>密码</p></td>
              <td><input type="password" class="password" name="password"/></td>
            </tr>
            <tr height="48">
            <td>
           <a href='#' onclick="javascript:changeImg()" > <img id="img" src="authImage" />
        <label >看不清？</label></a>
    </td>
            </tr>
             <tr>
              <td height="48"><p>验证码</p></td>
              <td><input type="text" class="yanzhengma" name="yanhengma"/></td>
            </tr>
            <tr>
              <td height="77" colspan="2"><p>
              <button  class="sumbit" onclick="userlogin()"> 登录</button></p>
              <p>&nbsp;</p></td>
              
            </tr>
            <tr>
              <td height="77" colspan="2"><p>忘记密码？|<a href="register.do">注册</a>
              </p></td>
              
            </tr>
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