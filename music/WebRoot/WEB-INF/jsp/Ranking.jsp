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
.div-a{ float:left;clear:both;width:33%; font-size: 18px;margin-top:10px; border:0px solid  #000;background-color:rgba(21,179,228,0.3);} 
.div-b{ font-size: 18px;width:33%;float:left;margin-left:2px; margin-top:10px;border:1px solid  #000;background-color:rgba(212,179,228,0.8);} 
.div-c{ float:right;font-size: 18px;margin-top:10px;width:33%;border:0px solid  #000;background-color:rgba(21,179,228,0.3);} 
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
<body background="images/bg_dong2.gif">
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>
</div>

<div class="div-a" >
<p>最热歌曲榜</p><hr>
<div class="hot1" align="left" style="margin-left: 20px;font-size: 18px;"></div>
</div> 

<div class="div-b" >
<p>歌曲收藏榜</p><hr>
<div class="collect" align="left" style="margin-left: 15px;font-size: 18px;"></div>
</div>
<div class="div-c" >
<p>最新歌曲榜</p><hr>
<div class="new" align="left" style="margin-left: 15px;"></div>
</div>


</div>
</body >
</html>
<script type="text/javascript">
var singerid='0';
$().ready(function(){
	initRanking();
});
</script>
