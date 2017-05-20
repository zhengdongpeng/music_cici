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
<body>
<div id="wrapper">
<jsp:include page="head.jsp"></jsp:include>
  
  <table width="1085" height="207"  >
    <tr>
      <td width="453">
      <img src="images/a.png" width="453" height="553" />
      </td>
      
       <td >   
       <h1 class="tou">管理员后台登录</h1><br/><br/>
       <div class="logindiv">
           <table width="432" height="359" border="1" class="kuang"> 
            <tr>
              <td width="122" height="48">账号</td>
              <td width="294"><input type="text" class="username" name="username"/></td>
            </tr>
            <tr>
              <td height="48"><p>密码</p></td>
              <td><input type="password" class="password" name="password"/></td>
            </tr>
            <tr height="48">
            <td colspan=2>
           <a onclick="javascript:changeImg()" > <img id="img" src="authImage" />
        <label >看不清？</label></a>
    </td>
            </tr>
             <tr>
              <td height="48"><p>验证码</p></td>
              <td><input type="text" class="yanzhengma" name="yanhengma"/></td>
            </tr>
            <tr>
              <td height="77" colspan="2"><p>
              <button  class="sumbit" onclick="mangeuserlogin()" style="margin-top:20px; margin-left:60px; width: 300px;height: 50px;background-color: #ffddcc"> 登录</button></p>
              <p>&nbsp;</p></td>
              
            </tr>
            <tr>
              <td colspan=2><span class="tishi"></span></td>
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