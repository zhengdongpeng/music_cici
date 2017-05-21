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
<script type="text/javascript" src="js/jquery.page.js"></script>
<style type="text/css">
.div-a{ float:left;width:30%; height:200px; background-color: #FFE4E1;} 
.div-d{ float:right;width:66%;height:200px;font-size: 18px;margin-top:20px}
.div-b{ font-size: 18px;margin-top:1px;width:958px;float:left;overflow:hidden;} 
.div-c{ float:left;font-size: 18px;margin-top:10px;width:900px;} 
.div-e{ margin-top:20px;} 
.li-div1{ float:left;width:49%; height:140px;} 
.albumul ul{
width:1200px;
}
.ul-song{width:1200px;}
ul li{
width:20%;float:left;height: 140px;
}
</style>
</head>
<body >
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>
</div>
<div>


<div class="data-div">
<div class="div-b">
	<div><img src="img/head/touxiang1.jpg" width="100" height="100" /><span style="float: right;margin-top: 80px;padding-right: 50px" class="text-1" ">全部歌手展示</a></div>
	<hr>
	<div class="div-e">
	<ul id="albumul" class="albumul">
	
	</ul>
	</div>
</div>
<div class="page" style="width:500px;margin-top:50px"></div>
</div>
</div>
</div>
</body>
</html>
<% int count=Integer.parseInt(request.getAttribute("size").toString());
 int num=0;
 if(count%10==0){
	 num=count/10;
 }else{
	 num=count/10+1;
 }
 %>
<<script type="text/javascript">
$('.page').createPage(function(n){
		setSingerPager(n);
},{
	pageCount:<%=num%>,//总页码,默认10
	
});
function setSingerPager(n){
	$.ajax({
		  url:'singerlistData.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		     n:n-1
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		window.location.href="index.do";
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		$(".albumul").html("");
		    		var list = data.list;
		    		for(var i=0;i<list.length;i++){
		    			var str="<li><div class='li-div1'><a href='singer.do?sid="+list[i].sid
		    			+"'><img src='"+list[i].head+"' width='120' height='120' /></a><p>"+list[i].sname+"</p></div></li>";
		    			$(".albumul").append(str);
		    		}
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}
</script>
