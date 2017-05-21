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
.left{width: 17%;float: left; background-color: gray;padding-top: 20px;padding-left: 40px}
.right{ width: 75%;float: right;}
</style>
</head>
<body>
<div id="wrapper">
<div>
<jsp:include page="head.jsp"></jsp:include>
  </div>
  
  <div class="left" >
  <jsp:include page="mangeLeft.jsp"></jsp:include>
  </div>
<div  class="right">
	
       <div>
       <% if(mange.getJibie()==0){ %>
       		<p>创建管理员</p>
       		<hr>
       		管理员：<input type="text"  name="username" class="username"/>
       	  管理员级别设定：	<select  class="jibie">
  						<option value ="1">用户管理员</option>
  						<option value ="2">内容管理员</option>
  					<!-- 	<option value="3">推荐管理员</option> -->
				</select>
       		<br><br>
       		密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="password" class="password" type="password"/>
       		<button onclick="createMange()">确认创建</button>
       		<br>
       		<br>
       		<br>
       		<p>查询账号</p>
       		<hr>
       		查询账号<input type="text"  name="usernamequery" class="usernamequery"/>
       		<button onclick="queryMange()">查询账号</button>
       		<br>
       		<ul class="query" style="width: 600px">
       		</ul>
       		
       		<br>
       		<br>
       		<p>删除账号</p>
       		<hr>
       		删除账号<input type="text"  name="username1" class="username1"/><br>
       		<button onclick="deleteMange()">删除账号</button>
       		<br>
       		<br>
       		<br>
       		<%} %>
       		<p>密码修改</p>
       		<hr>
       		旧密码：<input type="password"  name="password1" class="password1""/>
       		新密码：<input type="password"  name="password2" class="password2"/><br><br>
       		再次输入新密码<input name="password3" class="password3" type="password"/>
       			<button onclick="updateMange()">确认修改</button>
       </div>
 </div>
</div>
</body>
</html>

</body>
</html>
<script>
function queryMange(){
	var username = $(".usernamequery").val();
	if(!username.trim()){
		return;
	}
	$.ajax({
		  url:"mangequery.do",
		    type:'POST',  async:true,    
		    data:{username:username,
		    	type:'managequery'},
		    timeout:5000,  dataType:'json',    
		    success:function(data){
		    	data=JSON.parse(data);
		    	$(".query").html("");
		    	debugger;
		    	var list = data.list;
		    	for(var i=0;i<list.length;i++){
		    		var str = "<tr><td width='100px'>"+list[i].username+"</td><td width='150px'>"+jibie(list[i].jibie)+"</td><td width:='150px'>创建时间:"+getLocalTime(list[i].zctime)+
		    		"</td><td width='200px'><a onclick=\"modifyMange('"+i+","+list[i].username+"')\">权限修改</a>|<a onclick=\"deleteMange('"+list[i].username+"')\">删除</a</td>"
		    		str= str+"<td><div class='div-modify"+i+"' style='display: none'> 管理员级别设定：	<select  class='jibie"+i+"'><option value ='1'>用户管理员</option>"+
						"<option value ='2'>内容管理员</option>	</select>	<buttion onclick=\"modify("+i+","+list[i].username+")\"></button></div></td></tr>"
		    		$(".query").append(str);
		    	}
		    },
		    error:function(xhr,textStatus){
		    	alert("error");
		    },   
	});
	
}

function modify(i,username){
	var ji = ".jibie"+i;
	var jibie = $(ji).val();
	
	$.ajax({
		  url:"mangeModify.do",
		    type:'POST',  async:true,    
		    data:{username:username,type:'jibie',jibie:jibie},
		    timeout:5000,  dataType:'json',    
		    success:function(data){
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

function modifyMange(i,user){
	var div = ".div-modify"+i;
	$(div).show();
}

function getLocalTime(nS) {  
	var newDate = new Date();
	newDate.setTime(nS );
	return newDate.toLocaleDateString();
}
function jibie(ji){
	if(ji==0){
		return '超级管理员';
	}
	if(ji==1){
		return '用户管理员';
	}
	if(ji==2){
		return '内容管理员';
	}
}
function deleteMange(username){
	debugger;
	if(!username)
		username=$(".username1").val();
	if(!username.trim()){
			return;
		}
	if(!confirmd()){
		return;
	}
	$.ajax({
		  url:"mangedelete.do",
		    type:'POST',  async:true,    
		    data:{username:username},
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