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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />

<title>个人中心</title>
<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
 <link href="css/style.css" type="text/css" rel="stylesheet" >
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="js/login.js"></script>
  <script type="text/javascript" src="js/js.js"></script>
    <script type="text/javascript" src="js/userCenter.js"></script>
  <link rel="stylesheet" type="text/css" href="css/shijian.css"/>
		<style type="text/css">
			.icbc{
			background: url(icbc.jpg);
			}
		</style>
<script src="js/jquer_shijian.js" type="text/javascript" charset="utf-8"></script>
		
</head>
<body>
<div id="wrapper">
<div>
<jsp:include page="../head.jsp"></jsp:include>
</div>
   <div class="tab-contain">
    <!-- tab栏 -->
    
    <ul id="tabs" >
      <li class="current"><a href="#" title="tab1" >修改头像</a></li>
      <li><a href="#" title="tab2">编辑资料</a></li>
      <li><a href="#" title="tab3">修改密码</a></li>
    </ul>
    <!-- 对应显示内容 -->
    <div id="content">
      <div id="tab1" class="item show">
        <h2>请设置一个您喜欢的头像：</h2>
        <div>
        	<table width="900" >
              <tr>
                <td width="50%"><img class='headimg' src="<%=user.getHead() %>" width="179" height="172"></td>
                <td width="50%">
                	<p>请选择图片文件,文件格式为jepg,png</p>
                    <div>
                    
                    <form name="Form2" action="fileUpload.do" method="post"  enctype="multipart/form-data">
                      <input name="file" type="file"  accept="image/jpeg,image/png"  value="浏览">
                      <input name="load" type="submit" value="上传" />
                	</form>
                  </div>
                
                </td>
              </tr>
            </table>
            
            <p><img src="img/head/defaulthead2.png" width="141" height="26"></p>
            <table width="900" height="281" >
  <tr>
    <td width="25%" height="131" align="center"><img src="img/head/touxiang1.jpg" width="179" height="172"></td>
    <td width="25%" align="center"><img src="img/head/touxiang2.jpg" width="179" height="172"></td>
    <td width="25%" align="center"><img src="img/head/touxiang3.jpg" width="179" height="172"></td>
    <td width="25%" align="center"><img src="img/head/touxiang4.jpg" width="179" height="172"></td>
  </tr>
  <tr>
    <td align="center">
      <input type="button" name="choose" id="choose" value="选择" onclick="chooseHead('img/head/touxiang1.jpg')">
    </td>
    <td align="center"><input type="button" name="choose" id="choose" value="选择" onclick="chooseHead('img/head/touxiang2.jpg')"></td>
    <td align="center"><input type="button" name="choose" id="choose" value="选择" onclick="chooseHead('img/head/touxiang3.jpg')"></td>
    <td align="center"><input type="button" name="choose" id="choose" value="选择" onclick="chooseHead('img/head/touxiang4.jpg')"></td>
  </tr>
</table>


        </div>
      </div>
      <div id="tab2" class="item">
      <table width="900" height="500" >
  <tr>
    <td width="300" align="right" >账号：</td>
    <td><%=user.getUsername() %></td>
  </tr>
  <tr>
    <td align="right" >用户名：</td>
    <td><input name="uname" class="uname" type="text" style="width:300px;height:30px; "  value="<%=user.getUname() %>"/></td>
  </tr>
  <tr>
    <td align="right" >性别：</td>
    <% if("男".equals(user.getSex())){ %>
    <td><input name="sex" type="radio" value="男" checked="checked"/>
    男&nbsp;&nbsp;&nbsp;
    <input name="sex" type="radio" value="女" />
    女&nbsp;&nbsp;&nbsp;
    <%} else {%>
        <td><input name="sex" type="radio" value="男" />
    男&nbsp;&nbsp;&nbsp;
    <input name="sex" type="radio" value="女" checked="checked"/>
    女&nbsp;&nbsp;&nbsp;
    <%} %>
    </td>
  </tr>
  <tr>
    <td align="right" >生日：</td>
    <td><input type="text"  id="input1" class ="input1" /></td>
  </tr>
  <tr>
    <td align="right" >城市：</td>
    <td><input type="text"  class="city" value="<%=user.getCity()== null?"北京市":user.getCity() %>" /></td>
  </tr>
 <!--  <tr>
    <td align="right" >个人简介：</td>
    <td><textarea name="intro" cols="80" rows="10"></textarea></td>
  </tr> -->
  <tr>
    <td align="right" >验证码：</td>
    <td><input type="text" name="yanzhengma" class="yanzhengma">
     <span  onclick="changeImg('img')" > <img id="img" src="authImage" />
        <label >看不清？</label></span>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><button name="saveChange" onclick="modifyUser()">保存修改</button></td>
   
  </tr>
</table>

      </div>
      <div id="tab3" class="item">
        <table width="900" height="200" >
  <tr>
    <td align="right" width="200">新密码：</td>
    <td><input name="pass" type="password" maxlength="18" class="pass"  style="width:300px;height:30px; "></td>
  </tr>
  <tr>
   <td align="right" width="200">确认密码：</td>
    <td><input name="pass" type="password" maxlength="18" class="pass1"  style="width:300px;height:30px; "></td>
  </tr>
  <tr>
    <td align="right">验证码：</td>
        <td>
                        <table width="200" >
                      <tr>
                        <td><input name="yanzheng2" type="text" class="yanzheng2" maxlength="4"  style="width:150px;height:30px; "></td>
                        <td><span onclick="changeImg('img1')" > <img id="img1" src="authImage" />
        <label >看不清？</label></span></td>
                      </tr>
                    </table>
		</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input name="saveChangeP" type="button" onclick="modifyPassword()" value="保存修改"></td>
  </tr>
</table>
</div>
  </div>
</div>
</div>
</body>
</html>
<script type="text/javascript">
var birthday = '<%=user.getBirthday().getTime()%>';
$().ready(function (){
	
$(".input1").val(getLocalTime(birthday));
});
function getLocalTime(nS) {  
	var newDate = new Date();
	newDate.setTime(nS );
	return newDate.toLocaleDateString();
}
    function changeImg(img){
        var img = document.getElementById(img); 
        img.src = "authImage?date=" + new Date();
    }
</script>
	<script type="text/javascript">
	
		$("#input1").shijian({
			Format: "yyyy-mm-dd",
			Order: 'yymmdd',
			y:-60,//当前年份+10
			Hour: false, //是否显示小时
			Minute: false, //是否显示分钟
			Seconds: false,//是否显示秒
			yyyy: "0000", //当前显示年
			mm: "00", //当前显示月
			dd: "00", //当前显示日
		});
		$("#input2").shijian({
			showNowTime:false,//是否显示当前时间(为true时，input值如果为空则显示当前时间)
			Year:false,//是否显示年//
            Month:false,//是否显示月//
            Day:false,//是否显示日//
            h:"00",//自定义起始小时
            m:"01",//自定义起始分钟
			alwaysShow:true,//是否直接显示，默认为false
			timeElm:$(".time-box"),//需要在哪个元素中展示元素需要定位  可使用字符串的形式（"$(sjObj).prev()" sjObj表示当前时间对象
		})
	</script>
<script type="text/javascript">
	sjObj.defaults = {
		type: "time",
		Format: "yyyy-mm-dd", //显示时间格式//yyyy表示年份 ，mm月份 ，dd天数  支持三种格式 dd-mm-yyyy ，mm-dd-yyyy yyyy-mm-dd
		Order: 'yymmdd',
		width: 60, //默认宽度
		height: 32,//默认数值高度
		Year: true, //是否显示年//
		Month: true, //是否显示月//
		Day: true, //是否显示日//
		Hour: false, //是否显示小时
		Minute: false, //是否显示分钟
		Seconds: false, //是否显示秒
		yyyy: "0000", //当前显示年
		mm: "00", //当前显示月
		dd: "00", //当前显示日
		h: "00", //当前显示小时
		m: "00", //当前显示分
		s: "00", //当前显示秒
		yearText: "年", //顶部时间 年单位 文字
		monthText: "月", //顶部时间 月单位 文字
		dayText: '日', //顶部时间 日单位 文字
		hourText: '时', //顶部时间 时单位 文字
		minuteText: '分', //顶部时间 分单位 文字
		secondsText: '秒', //顶部时间 秒单位 文字
		okText: "确认", //按钮确认键文字
		cancelText: "取消", //按钮取消键文字
		showNowTime: true, //是否默认显示当前时间
		alwaysShow: false, //是否默认直接显示插件
		timeElm: null, //放时间插件的box
		onfun: function() { //取消改变时间时候执行事件
		
		},
		okfun: function() { //确认时间时候执行事件

		},
	}
</script>