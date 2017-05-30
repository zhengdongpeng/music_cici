<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*,com.cici.music.contans.*"%>
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
<script type="text/javascript" src="js/jquery.page.js"></script>
<style type="text/css">
.div-a{ float:left;width:30%; height:200px; background-color: #FFE4E1;} 
.div-d{ float:right;width:66%;height:200px;font-size: 18px;margin-top:20px}
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
.beijing{
background-color:rgba(250,228,225,0.8);
}
</style>
</head>
<body background="images/love6.gif">
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>
</div>
<div class="beijing">


<div class="data-div">
<div class="div-b">
	<div><img src="images/album.png" width="78" height="128" /><span style="float: right;margin-top: 100px;padding-right: 50px" class="text-1" ">全部专辑展示</a></div>
	<hr>
	<div class="div-e">
	<ul id="albumul" class="albumul">
	
	</ul>
	</div>
</div>
<div class="page" style="margin-top:50px"></div>
</div>
</div>
</div>
</body>
</html>
<% int count=Integer.parseInt(request.getAttribute("size").toString());
 int num=0;
 int pager=MusicConts.PAGER_COUNT;
 if(count%pager==0){
	 num=count/pager;
 }else{
	 num=count/pager+1;
 }
 %>
<<script type="text/javascript">
$('.page').createPage(function(n){
		setAlbumPager(n);
},{
	pageCount:<%=num%>,//总页码,默认10
	
});
$().ready(function(){
	
	//initSingerSong(singerid);
	//initSingerAlbum(singerid);
});
</script>
