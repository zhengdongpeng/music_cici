<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Song song =(Song) request.getAttribute("song");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
.cities {
    background-color:black;
    color:white;
    margin-top:20px;
    padding:20px;
    background-color:rgba(0,0,130,0.4);
	
}	
.beijing{
background-color:rgba(0,255,0,0.4);
height:350px;
}
.songName{
text-align:center;
	font-weight:bold;
	font-size:40px;
	vertical-align: left;
	display:inline-block;
	margin:0 auto;
}
 .text-size{
 	font-size: 20px
 }
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>cici的音乐网站</title>
<meta name="keywords" content="音乐,音乐网,音乐网站,最新音乐,歌曲,mp3,歌曲mp3,mp3下载,好听的歌曲,网络歌曲" />
<meta name="description" content="高品质音乐Mp3下载试听网站，提供最新最好听的流行歌曲、网络歌曲，以及权威、全面的歌曲排行榜。" />

<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>
<script type="text/javascript" src="js/music.js"></script>
</head>
<body background="images/love.gif">
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>

</div>
<center >
<div class="beijing">

<div  height="200" align="left">
<span class="songName"><%=song.getSname() %></span>
<span class="shoucang1" ><a onclick="shoucang(<%=song.getSid() %>)"><img height="40" width="70" src="images/shoucang.png"/></a></span>
</div>
<div style="width: 924px">

<div style=" float:left; width: 30%;margin-top:80px;">
<img class="dong"  style="visibility:hidden" src="images/zhuan.gif" width="216" height="132" />
</div>

<div style="float:left;width: 40%">
<img src="<%=song.getImg() %>" height="256" width="256"/>
<audio controls="controls" height="100" width="100" onplay="startPlay()" onpause="stopPlay()">
  <source src="<%=song.getSong() %>" type="audio/mp3" /> 
<embed height="100" width="100" src="<%=song.getSong() %>" /></audio>
</div>
<div  style="float:right;width: 30%;margin-top:80px;">
<img class="dong" style="visibility:hidden" src="images/zhuan.gif" width="216" height="132" />
</div>
</div>

</div>
<div class="cities">
<span class="text-size">歌曲名称：<%=song.getSname() %></span>



<p  class="text-size">演唱：<a href='singer.do?sid=<%=song.getSongerid()%>'><%=song.getSongerName()%></a></p>
<span class="text-size">歌词</span>
<hr style="border-color:#FFEFDB">

<p><textarea rows="25" cols="70"  style= "background:transparent;border-style:none; font-size: 18px;color: #ffffff;text-align: center;" disabled="disabled" ><%=song.getLyric() %></textarea> </p>
</div> 


</center>
</div>
</body>
</html>

<script type="text/javascript">
function startPlay(){
	$(".dong").css("visibility","visible");
	
}
function stopPlay(){
	$(".dong").css("visibility","hidden");
}
$(document).ready(function(){
	debugger;
	initCollect(<%=song.getSid()%>);
});

function initCollect(id){
$.ajax({
	  url:'iscollect.do',
	    type:'POST', //GET
	    async:true,    //��false,�Ƿ��첽
	    data:{
	       type:1,
	       id:id
	    },
	    timeout:5000,    //��ʱʱ��
	    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
	    success:function(data){
	    	data=JSON.parse(data);
	    	debugger;
	    	if(data.stats=='error'){
	    	}
	    	if(data.stats=='success'){
	    		if(data.success==1){
	    		$(".shoucang1").html("<span style='color:white;font-size:18px'>已收藏</span>[<a onclick='quitCollect("+id+")'>点击取消收藏</a>]");
	    		}
	    		
	    		return;
	    	}
	    },
	    error:function(xhr){
	    },
	   
});}

function quitCollect(id){
	$.ajax({
		  url:'quitcollect.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       type:"musicquit",
		       id:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	data=JSON.parse(data);
		    	debugger;
		    	if(data.stats=='error'){
		    		alert("失败！");
		    	}
		    	if(data.stats=='success'){
		    		$(".shoucang1").html("<a onclick='shoucang("+id+")'><img height='40' width='70' src='images/shoucang.png'/></a>");
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}

</script>