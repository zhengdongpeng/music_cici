<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Singer singer =(Singer) request.getAttribute("singer");
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
<style type="text/css">
.div-a{ float:left;width:30%; height:200px; background-color: #FFE4E1;} 
.div-d{ float:right;width:66%;height:200px;color:white;font-size: 20px;background-color:rgba(2,130,238,0.6);}
.div-b{ font-size: 18px;margin-top:1px;width:958px;float:left;overflow:hidden;} 
.div-c{ float:left;font-size: 18px;margin-top:10px;width:900px;} 
.div-e{ margin-top:20px;} 
.li-div1{ float:left;width:49%; height:60px;} 
.albumul ul{
width:1200px;
}
.ul-song{width:1200px;}
ul li{
width:33.33%;float:left;height: 120px;
}
</style>
</head>
<body background="images/guzheng.jpg">
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>
</div>
<div>
<div class="div-a" align="center">
<div>
<img src="<%=singer.getHead() %>" width="200" height="200"/>
</div>

</div> 

<div  class="div-d">
	<%=singer.getSname() %>,<%=singer.getSex() %><br><br>
	<%=singer.getJieshao() %>
	
</div>
<div class="data-div">
<div class="div-b">
	<div><img src="images/album.png" width="78" height="128" /><a class="text-1" onclick="ajaxSinger(<%=singer.getSid() %>,4)">点击查看全部专辑>></a></div>
	<div class="div-e">
	<ul id="albumul" class="albumul">
	</ul>
	</div>
</div>
<div class="div-c">
<div><img src="images/song.png" width="78" height="128" /><a class="text-1" onclick="ajaxSinger(<%=singer.getSid() %>,3)">点击查看全部歌曲>></a></div>
<div>
<ul class = "ul-song">
	
</ul>
</div>

</div>

</div>
</div>
</div>
</body>
</html>
<script type="text/javascript">
var singerid='<%=singer.getSid()%>';
$().ready(function(){
	initSingerSong(singerid);
	initSingerAlbum(singerid);
});
</script>
