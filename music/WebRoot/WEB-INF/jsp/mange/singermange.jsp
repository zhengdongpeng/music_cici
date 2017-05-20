<%@ page language="java" contentType="text/html; charset=utf-8"   import="java.util.*,com.cici.music.pojo.*"
    pageEncoding="utf-8"%>
    <% MUser mange = (MUser)session.getAttribute("mange");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台</title>
<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
  <link rel="stylesheet" type="text/css" href="css/shijian.css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="js/login.js"></script>
		<style type="text/css">
			.icbc{
			background: url(icbc.jpg);
			}
		</style>
<script src="js/jquer_shijian.js" type="text/javascript" charset="utf-8"></script>
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
.left{width: 17%;height:100%; float: left; background-color: gray;padding-top: 20px;padding-left: 40px}
.right{ width: 75%;float: right;}
#wrapper1{width:956px; margin:auto;}
</style>
  <style type="text/css">
        div{
            width:100%;
        }
    </style>

</head>
<body>
<div id="wrapper1">
<div>
<jsp:include page="head.jsp"></jsp:include>
  </div>
  
  <div class="left" >
  <jsp:include page="mangeLeft.jsp"></jsp:include>
  </div>
<div  class="right">
		<%if(mange.getJibie()==2) {%>
       <div>
       		<p>创建歌手
       	</p>
       		<hr>
       		
       		  <form name="Form2" action="fileUploadSinger.do" method="post"  enctype="multipart/form-data">
       		  			<input type="hidden" name="type" value="1"/>
                      歌手名：<input type="text"  name="singername1" class="singername1"/><br>
                      性别：<input name="sex" type="radio" value="男" checked="checked"/>
    男&nbsp;&nbsp;&nbsp;
    <input name="sex" type="radio" value="女" />
    女&nbsp;&nbsp;&nbsp; <input name="sex" type="radio" value="组合" />组合<br>
                      歌曲类型：
                          <select  class="typeid" name="typeid">
  						<option value ="1">民谣</option>
  						<option value ="2">古典音乐</option>
  						<option value="3">影视金曲</option>
  						<option value ="1">网络歌曲</option>
  						<option value ="2">摇滚歌曲</option>
  						<option value="3">流行歌曲</option>
  						<option value ="1">情歌对唱</option>
  						<option value ="2">草原歌曲</option>
 	 					</select>
                       <br>
                       
                    歌手头像：    <input name="file" type="file"  accept="image/jpeg,image/png"  value="浏览">
                      <div>
    <h1>介绍</h1>
			<textarea rows="4" cols="80"  class="js" name="js"></textarea>
                      </div>
                      <input type="submit"  value="提交"/>
                	</form>
       		<br>
       		<br>
	   <p>删除歌手</p>
       		<hr>
       		       歌曲ID：<input type="text"  name="songnamedelete" class="songnamedelete""/>
       		       <button onclick="deleteSinger()">歌曲ID删除</button>
       		
       		<br>
       		<br>
       		<p>修改歌手</p>
       		<hr>
       		歌曲名：<input type="password"  name="password1" class="password1""/><button onclick="updateMange()">歌曲名查询</button><br>
       		歌曲ID：<input type="password"  name="password1" class="password1""/><button onclick="updateMange()">歌曲ID查询</button>
			<br>
			<br>
	
       		
       </div>
              <%} else{out.print("无访问权限");} %>
 </div>
</div>
</body>
</html>

</body>
</html>
<script>

function deleteSinger(){
	var username=$(".songnamedelete").val();
	if(!username.trim()){
			return;
		}
	if(!confirmd()){
		return;
	}
	$.ajax({
		  url:"mangedelete.do",
		    type:'POST',  async:true,    
		    data:{username:username,type:'singer'},
		    timeout:5000,  dataType:'json',    
		    success:function(data,textStatus,jqXHR){
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		alert(data.error);
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		alert("成功");
		    	}},
		    error:function(xhr,textStatus){
		    },   
	});
}


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
function createMange(){
	var username = $(".username").val();
	var password = $(".password").val();
	var jibie=$(".jibie").val();
	if(!username.trim()){
	alert("管理员账号不能为空");
		return;
	}
	if(!password.trim){
		alert("密码不能为空");
		return;
	}
	var data={
			username:username,
		       password:password,
		       jibie:jibie
	};
	var url='createMange.do';
	pushajax(data,url);
}

function updateMange(){
	var password1 = $(".password1").val();
	var password2 = $(".password2").val();
	var password3=$(".password3").val();
	if(!password1.trim()){
	alert("旧不能为空");
		return;
	}
	if(!password2.trim){
		alert("密码不能为空");
		return;
	}
	if(!password3.trim){
		alert("再次输入密码不能为空");
		return;
	}
	
	if(password2!=password3){
		alert("两次密码输入不一致，请重新输入");
		return;
	}
	
	var data={
			password1:password1,
			password2:password2
	};
	var url='upadateMange.do';
	pushajax(data,url);
}

function pushajax(data,url){
	
	$.ajax({
		  url:url,
		    type:'POST', //GET
		    async:true,    
		    data:data,
		    timeout:5000,  
		    dataType:'json',    
		   
		    success:function(data,textStatus,jqXHR){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		alert(data.error);
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		alert("成功");
		    	}
		    	
		      },
		    error:function(xhr,textStatus){
		    },
		   
	});
}
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