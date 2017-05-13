<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Song song =(Song) request.getAttribute("song");
%>
    <%
     Album album = (Album)request.getAttribute("album");
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
.cities {
    background-color:black;
    color:white;
    margin:20px;
    padding:20px;
	
}	
.songName{
text-align:center;
	font-weight:bold;
	font-size:40px;
	vertical-align: left;
	display:inline-block;
	margin:0 auto;
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
<style> 
.div-a{ float:left;width:30%; height:200px; border:1px solid #F00} 
.div-d{ float:right;width:66%;height:200px;border:1px solid #000}
.div-b{ float:left;width:49%;height:200px;border:0px solid #000} 
.div-c{ float:right;width:49%;height:200px;border:0px solid #000} 
.div-f{float:left; width:100%;margin:0 auto;margin-top:10px }
.zjgq{ height: 30px;font-size: 30px;font-weight: bold;background-color: lime;width: 100% ;}
.musiclist{font-size: 20px;height: 30px;}
</style> 
</head>
<body >
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>
 </div>
<div >
<div class="div-a">
<div>
<img src="<%=album.getImg() %>" width="150" height="150"/></div>
<div>
    <span class="shoucang1" onclick="shoucangAlbum(<%=album.getAlbumId() %>)"><img height="40" width="70" src="images/shoucang.png"/></span>
</div>
</div> 

<div  class="div-d">
<div class="div-b">
<ol>
	<li>专辑名:<%=album.getAname() %></li>
	<li>歌手:<%=album.getSingername() %></li>
	<li>发型时间：<fmt:formatDate value="<%=album.getFbtime()%>" pattern="yyyy-MM-dd"/></li>
	<li>发行公司：<%=album.getFxgs()%></li>
	
	</ol>
</div> 
<div class="div-c">
	<li>专辑介绍：<%=album.getJs()%></li>
	
</div>

</div>
</div>
	
<div class="div-f">
<div class="zjgq">专辑歌曲</div>
<div>
<table>
<tbody class ="musicList">
<tr>
<td>
	
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>


</body>
</html>
<script type="text/javascript">

$(document).ready(function(){
	debugger;
	initCollect(<%=album.getAlbumId()%>);
	initSong(<%=album.getAlbumId()%>);
});

function initCollect(id){
$.ajax({
	  url:'iscollect.do',
	    type:'POST', //GET
	    async:true,    //��false,�Ƿ��첽
	    data:{
	       type:2,
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
	    		$(".shoucang1").html("已经收藏");
	    		return;
	    	}
	    },
	    error:function(xhr){
	    },
	   
});}
</script>