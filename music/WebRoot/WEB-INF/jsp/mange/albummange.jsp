<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.util.*,com.cici.music.pojo.*" pageEncoding="utf-8"%>
<%
	MUser mange = (MUser) session.getAttribute("mange");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台</title>
<link type="text/css" rel="stylesheet" href="365_files/newindex.css" />
<link type="text/css" rel="stylesheet"
	href="365_files/header.css?v=0907" />
<link rel="stylesheet" type="text/css" href="css/shijian.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/common.css" />
<script type="text/javascript" src="js/login.js"></script>
<style type="text/css">
.icbc {
	background: url(icbc.jpg);
}
</style>
<script src="js/jquer_shijian.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
.tou {
	color: #F39;
	font-size: 48px;
	font-weight: bold;
}

.kuang {
	color: #F39;
	font-size: 20px;
	font-weight: bold;
}

.left {
	width: 17%;
	float: left;
	background: url(images/mange/bgk.png);
	background-color: rgba(127, 255, 212, 0.7);
	height: 360px;
	padding-top: 60px;
	padding-left: 40px;
}

.htbg {
	background-repeat: no-repeat;
	background-size: cover;
}

.right {
	width: 75%;
	float: right;
	background-color: rgba(127, 255, 212, 0.6);
	margin-bottom: 110px;
}

#wrapper1 {
	width: 956px;
	margin: auto;
}
</style>
<style type="text/css">
div {
	width: 100%;
}
</style>

</head>
<body background="images/mange/bgt5.gif" class="htbg">
	<div id="wrapper1">
		<div>
			<jsp:include page="head.jsp"></jsp:include>
		</div>

		<div class="left">
			<jsp:include page="mangeLeft.jsp"></jsp:include>
		</div>
		<div class="right">
			<%
				if (mange.getJibie() == 2) {
			%>
			<div style="float: left; width: 50%">
				<p>创建专辑</p>
				<hr>

				<form name="Form2" action="fileUploadAlbum.do" method="post"
					enctype="multipart/form-data">
					<input type="hidden" name="type" value="1" /> 专辑名：<input
						type="text" name="albumname1" class="albumname1" /><br> 发行公司：<input
						type="text" name="fxgs" class="fxgs" /><br>

					<!--                        发布时间：<input type="text"  id="fbtime" class ="input1"/><br>
 -->
					所属歌手：<input type="text" class="singerTypeupdate" style="width: 50px">
					<button type="button" onclick="getSinger()">查询</button>
					<select class="singer1update" name="singer1">
						<option value="" style="width: 50px"></option>
					</select> <br> 专辑图片： <input name="file" type="file"
						accept="image/jpeg,image/png" value="浏览">
					<div>
						<h1>介绍</h1>
						<textarea rows="4" cols="40" class="js" name="js"></textarea>
					</div>
					<input type="submit" value="提交" />
				</form>
				<br> <br>
			</div>
			<div style="float: right; width: 50%; visibility: hidden"
				class="updatesinger">
				<p>修改专辑</p>
				<hr>

				<form name="Form2" action="fileUploadAlbum.do" method="post"
					enctype="multipart/form-data">
					<input type="hidden" name="type" value="2" />
					 <input type="hidden" class="albumid" name="albumid" value="0" /> 专辑名：<input type="text"
						name="albumname1" class="albumnameupdate" /><br> 发行公司：<input
						type="text" name="fxgs" class="fxgsupdate" /><br>
					<!--                        发布时间：<input type="text"  id="fbtime" class ="input1"/><br>
 -->
					所属歌手：<input type="text" class="singerType" style="width: 50px">
					<button type="button" onclick="getSinger()">查询</button>
					<select class="singer1" name="singer1">
						<option value="" style="width: 50px"></option>
					</select> <br> 专辑图片： <input name="file" type="file"
						accept="image/jpeg,image/png" value="浏览">
						  <img  class="headupdate"  width="80px" height="80px"/>
					<div>
						<h1>介绍</h1>
						<textarea rows="4" cols="40" class="jsupdate" name="js"></textarea>
					</div>
					<input type="submit" value="提交" />
				</form>
				<br> <br>

			</div>
		<p>操作专辑</p>
       		<hr>
       		       专辑名：<input type="text"  name="albumnamequery" class="albumnamequery"/>支持模糊
       		       <button onclick="queryAlbum()">点击查询</button>
       		
       		<br>
       		<br>
       		<ul class="query" style="width: 600px">
       		</ul>
			<%
				} else {
					out.print("无访问权限");
				}
			%>
		</div>
	</div>
</body>
</html>

</body>
</html>
<script>
var arraydata=null;
function queryAlbum(){
	var username = $(".albumnamequery").val();
	if(!username.trim()){
		return;
	}
	$.ajax({
		  url:"mangequery.do",
		    type:'POST',  async:true,    
		    data:{username:username,
		    	type:'albumquery'},
		    timeout:5000,  dataType:'json',    
		    success:function(data){
		    	data=JSON.parse(data);
		    	$(".query").html("");
		    	debugger;
		    	var list = data.list;
		    	arraydata=list;
		    	for(var i=0;i<list.length;i++){
		    		var str = "<tr><td width='100px'>"+list[i].aname+"</td><td width='150px'>"+list[i].singername+"</td>"
		    		+"<td width='200px'><a onclick=\"modifySinger('"+i+"')\">修改</a>|<a onclick=\"deleteMange('"+list[i].albumId+"')\">删除</a</td></tr>";
		    		$(".query").append(str);
		    	}
		    },
		    error:function(xhr,textStatus){
		    	alert("error");
		    },   
	});
}

function modifySinger(i){
	debugger;
	if(!arraydata){
		alert("数据异常");
		return;
	}
	$(".albumnameupdate").val(arraydata[i].aname);
	 $(".albumid").val(arraydata[i].albumId); 
	$(".headupdate").attr("src",arraydata[i].img);
	$(".jsupdate").val(arraydata[i].js);
	$(".singerType").val(arraydata[i].singername);
	$(".fxgsupdate").val(arraydata[i].fxgs);
	getSinger();
	$(".updatesinger").css("visibility","visible");
}

	function getSinger() {
		var singerType = $(".singerType").val();
		if (!singerType)
			return;
		$.ajax({
			url : "mangequery.do",
			type : 'POST',
			async : true,
			data : {
				username : singerType,
				type : 'singerquery'
			},
			timeout : 5000,
			dataType : 'json',
			success : function(data) {
				data = JSON.parse(data);
				$(".singer1").html("");
				debugger;
				var list = data.list;
				//.append("<option value='Value'>Text</option>"); 
				for (var i = 0; i < list.length; i++) {
					$(".singer1").append(
							"<option value='"+list[i].sid+"'>" + list[i].sname
									+ "</option>");
				}
			},
			error : function(xhr, textStatus) {
				alert("error");
			},
		});
	}
	function deleteMange(id) {
		var username =id;
		if (!username.trim()) {
			return;
		}
		if (!confirmd()) {
			return;
		}
		$.ajax({
			url : "mangedelete.do",
			type : 'POST',
			async : true,
			data : {
				username : username,
				type : 'album'
			},
			timeout : 5000,
			dataType : 'json',
			success : function(data, textStatus, jqXHR) {
				data = JSON.parse(data);
				if (data.stats == 'error') {
					alert(data.error);
					return;
				}
				if (data.stats == 'success') {
					alert("成功");
				}
			},
			error : function(xhr, textStatus) {
			},
		});
	}

	function createMange() {
		var username = $(".username").val();
		var password = $(".password").val();
		var jibie = $(".jibie").val();
		if (!username.trim()) {
			alert("管理员账号不能为空");
			return;
		}
		if (!password.trim) {
			alert("密码不能为空");
			return;
		}
		var data = {
			username : username,
			password : password,
			jibie : jibie
		};
		var url = 'createMange.do';
		pushajax(data, url);
	}

	function updateMange() {
		var password1 = $(".password1").val();
		var password2 = $(".password2").val();
		var password3 = $(".password3").val();
		if (!password1.trim()) {
			alert("旧不能为空");
			return;
		}
		if (!password2.trim) {
			alert("密码不能为空");
			return;
		}
		if (!password3.trim) {
			alert("再次输入密码不能为空");
			return;
		}

		if (password2 != password3) {
			alert("两次密码输入不一致，请重新输入");
			return;
		}

		var data = {
			password1 : password1,
			password2 : password2
		};
		var url = 'upadateMange.do';
		pushajax(data, url);
	}

	function pushajax(data, url) {

		$.ajax({
			url : url,
			type : 'POST', //GET
			async : true,
			data : data,
			timeout : 5000,
			dataType : 'json',

			success : function(data, textStatus, jqXHR) {
				debugger;
				data = JSON.parse(data);
				if (data.stats == 'error') {
					alert(data.error);
					return;
				}
				if (data.stats == 'success') {
					alert("成功");
				}

			},
			error : function(xhr, textStatus) {
			},

		});
	}
</script>
