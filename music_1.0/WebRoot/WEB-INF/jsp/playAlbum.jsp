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

<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>
<script type="text/javascript" src="js/music.js"></script>
<style> 
.div-a{ float:left;width:30%; height:250px;} 
.div-d{ float:right;width:66%;height:200px;}
.div-b{ float:left;width:49%;height:200px;color:#00FFCC;font-size: 20px;margin-top:10px; background-color: rgba(204,102,153,0.6);} 
.div-c{ float:right;width:49%;height:200px;color:border:0px solid #000;font-size: 18px;margin-top:10px; background-color: rgba(255,255,51,0.6);} 
.div-f{float:left; width:100%;margin:0 auto;margin-top:10px ;margin-bottom: 70px}
.div-img{float:left;width:50px;height:50px;}
.zjgq{ height: 35px;font-size: 28px;font-weight: bold;background-color:rgba(0,204,255,0.8);width: 100% ;}
.tabs{
margin-top:13px;
margin-bottom:8px;
}
a { outline: none; color:#fC143C; }
.tables{
width:950px;

}
.musiclist{font-size: 20px;height: 30px; background-color: rgba(204,102,255,0.6);}
.div-f1{ margin-top:40px; height:70px;position:fixed;bottom:0px;left:0px; width:100%;
background-color:rgba(0,0,0,0.8) ; } 
.lianjie{
vertical-align:middle;
}
li{height:30px;}
</style> 
</head>
<body background="images/bg_4.jpg">

<div style=" float:left; width: 14%;margin-top:200px;">
<img class="dong"  style="visibility:hidden" src="images/mei.gif" width="200" height="532" />
</div>
<div id="wrapper" style=" float:left;width:72%">
<div>
 <jsp:include page="head.jsp"></jsp:include>
 </div>
 


<div >
<div class="div-a" align="center">
<div>
<img src="<%=album.getImg() %>" width="224" height="221"/></div>
<div>
    <span class="shoucang1"  ><a style="font-size: 18px;color: white;" onclick="shoucangAlbum(<%=album.getAlbumId() %>)">点击添加收藏</a></span>
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
<div class="zjgq">专辑歌曲<div style="float: right;"><button onclick='playAllmusic()'>播放全部</button></div></div>
<div class="tabs">
<table class="tables">
<tbody class ="musicList">
<tr>
<td>
	
</td>
</tr>
</tbody>
</table>
</div>
</div>

<div class="div-f1" align="center"> 
    <div>  
                    </div>  
                         <div class="btn-group" id="ctrl-area" style="float: left;width: 48%;vertical-align:center;" align="right">  
        
                          
                        <div style="float: right; width: 50px ;height: 100%;margin-top: 10px">
                        <img class="img-head" src="img/head/touxiang2.jpg"  width='50px' height='50px'/ >
                        </div>
                    
                       <div style="float: right; width: 60px;height: 100%;margin-top: 10px" align="center">
   <button id="btn-next" class="btn btn-success"  style="height: 51px;width:51px;border:none; margin-bottom: 20px;background-image: url('images/xysg.gif' );background-color: rgba(255,255,255,0)">  
                           
                        </button>                        
                         </div>
                                <div style="float: right; width: 60px;height: 100%;margin-top: 10px" align="center">
 <button id="btn-pre" class="btn btn-success"  style="height: 51px;width:51px;border:none; margin-bottom: 20px;background-image: url('images/sys.gif' );background-color: rgba(255,255,255,0)">  
                        
                        </button>                          
                        </div>
   </div>
                        <div style="float: right;margin-top:10px; width: 49%;" align="left">  
                        <audio  id="audio1" controls onplay="startPlay()" onpause="stopPlay()"></audio><br>
                        <strong id="rmusic" style="color: #ffffff" >专辑音乐</strong>  </div>
                      
                        <a href="#" id="btn-order">  
                                    </a>  
                 
</div>
</div>
<div style=" float:right; width: 14%;margin-top:200px;">
<img class="dong"  style="visibility:hidden" src="images/mei.gif" width="200" height="532" />
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
var songdata= new Array();
var songname= new Array();
var songImg = new Array();
var singerid='<%=album.getAlbumId()%>';
$(document).ready(function(){
	debugger;
	initCollect(<%=album.getAlbumId()%>);

});
function initSong(id){
	$.ajax({
		  url:'musicList.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       id:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		window.location.href="index.do";
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		var list = data.list;
		    		$(".musicList").html("");
		    		for(var i=0 ; i< list.length; i++){
		    			var newDate = new Date();
		    			newDate.setTime(list[i].fbtime );
		    			songdata[i]=list[i].song;
		    			songname[i]=list[i].sname;
		    			songImg[i]=list[i].img;
		    			if(i==0){
		    				$("#audio1").src=list[i].song;
		    				$(".img-head").src=list[i].img;
		    			}
		    			var str="<tr class='musiclist'><span><td ><a onclick='playmusic("+i+")' width='200px'><div class='div-img'>" +
		    					"<img src='"+list[i].img+"' width='50px' height='50px'/></div><td><a href='playMusic.do?id="+list[i].sid+"'>"
		    			+list[i].sname+"</a></span></td><td>发布时间：";
		    			str=str+newDate.toLocaleDateString()+"</span></td><td><span>歌曲类型:"+list[i].typeName+"</span></a></td><td><a class ='play-a' onclick='playmusic("+i+")'>播放</a></td></tr>";
		    			$(".musicList").append(str);
		    		}
		    		
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}
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
	    		$(".shoucang1").html("<span style='color:white;font-size:18px'>已收藏</span>[<a onclick='quitCollect("+id+")'>点击取消收藏</a>]");
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
		       type:"albumquit",
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
		    		$(".shoucang1").html("<a  style='font-size: 18px;color: white;' onclick='shoucangAlbum("+id+")'>点击添加收藏</a>");
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}
</script>
<script type="text/javascript" src="js/audio1.js"></script>
