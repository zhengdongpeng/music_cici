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
	<%if(mange.getJibie()==1) {%>
       <div>
       		<p>
       		用户注册总数：<%=request.getAttribute("count") %>人</p><p> 查询用户</p>
       		<hr>
       		
       		账户查询：<input type="text"  name="username" class="username"/>模糊查询
       	  <button onclick="queryUserForUsername()">账户查询</button>
       		<br>
       		ID查询：<input type="text"  name="uid" class="uid"/>精确查询
       	  <button onclick="queryUserForUid()">ID查询</button>
       		<br>
       		用户名查询：<input type="text"  name="uname" class="uname"/>模糊查询
       	  <button onclick="queryUserForUname()">用户名查询</button>
       		<br><br>
       	<hr>
       		<table width="100%">
       		<thead>
       		<tr>
       		<td width="8%">id</td>
       		<td width="15%">账号</td>
       		<td width="15%">用户名</td>
       		<td width="5%">性别</td>
       		<td width="10%">email</td>
       		<td width="10%">状态</td>
       		<td width="10%">城市</td>
       		<td width="10%">出生日期</td>
       		<td width="10%">创建时间</td>
       		<td width="10%">操作</td>
       		</tr>
       		</thead>
       		<tbody class="tbody">
       		
       		</tbody>
       		</table>
       </div>
       <%} else{out.print("无访问权限");} %>
 </div>
</div>
</body>
</html>

</body>
</html>
<script>

function queryUserForUsername(){
	var username = $(".username").val();
	if(!username.trim()){
		return;
	}
	var data={type:1,username:username}
	var url='queryUserMange.do';
	pushajax(data,url);
}
function queryUserForUid(){
	var username = $(".uid").val();
	if(!username.trim()){
		return;
	}
	var data={type:2,username:username}
	var url='queryUserMange.do';
	pushajax(data,url);
}
function queryUserForUname(){
	var username = $(".uname").val();
	if(!username.trim()){
		return;
	}
	var data={type:3,username:username}
	var url='queryUserMange.do';
	pushajax(data,url);
}

function setCode(i,code){
	if(!confirmd()){
		return;
	}
	$.ajax({
		  url:"userdelete.do",
		    type:'POST',  async:true,    
		    data:{id:i,code:code},
		    timeout:5000,  dataType:'json',    
		    success:function(data){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		alert(data.error);
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		alert("成功");
		    	}},
		    error:function(xhr,textStatus){
		    	alert(0);
		    },
		   
	});
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
		    		var list = data.list;
		    		$(".tbody").html("");
		    			for(var i=0;i<list.length;i++){
		    				var u=list[i];
			    			var birthday = new Date();
			    			var cjtime = new Date();
			    			if(u.birthday){
			    			birthday=	birthday.setTime(u.birthday ).toLocaleDateString();
			    			}
			    			else
			    				birthday=u.birthday;
			    			cjtime.setTime(u.zctime );
		    				var str="	<tr><td>"+u.uid+"</td><td>"+u.username+"</td><td>"+u.uname+
		    				"</td><td>"+u.sex+"</td><td>"+u.email+"</td><td>"
		    				+(u.code==0?'正常':'禁用')+"</td><td>"+u.city+"</td><td>"+birthday+"</td><td>"
		    				+cjtime.toLocaleDateString()+"</td><td><a href='' onclick=setCode("+u.uid+","+u.code+")>"	+(u.code==0?'正常':'禁用')+"</a></td><td>"
		    				$(".tbody").append(str);
		    			}
		    	}
		    	
		      },
		    error:function(xhr,textStatus){
		    },
		   
	});
}
</script>