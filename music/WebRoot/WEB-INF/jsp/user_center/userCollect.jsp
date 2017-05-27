<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user =(User) session.getAttribute("user");
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
.div-a{ float:left;width:100%; height:350px; background-color: #FFE4E1;} 
.div-a1{ float:left;width:30%; height:100px;} 
.div-d{ float:right;width:100%;height:100px;font-size: 18px;margin-top:20px}
.data-div{ float:right;width:69%; background-color:rgba(0,255,0,0.15);}
.div-b{ font-size: 18px;margin-top:1px;width:100%; float:left;overflow:hidden;} 
.div-c{ float:left;font-size: 18px;margin-top:10px;width:100% ; margin-bottom: 100px} 
.div-e{ margin-top:20px;} 
.div-f{ margin-top:20px; height:70px;position:fixed;bottom:0px;left:0px; width:100%;
background-color:rgba(0,0,0,0.8) ; } 
.li-div1{ float:left;width:100%; height:100px;} 
.albumul ul{
width:286px;
}
#m-list{width:100%;}
ul li{
width:33.33%;float:left;height: 180px;
}
</style>
</head>
<body background="images/love2.gif">
<div id="wrapper">
<div>
 <jsp:include page="../head.jsp"></jsp:include>
</div>
<div>
<div class="div-a1" >
<div class="div-a" align="center">
<div>
<img src="<%=user.getHead() %>"  width="200" height="200"/>
</div>
<div  class="div-d">
	登录账号：<%=user.getUsername() %><br>
	<%=user.getUname() %>,<%=user.getSex() %><br>
		所在城市：<%=user.getCity() %><br>
		生日：<%=user.getBirthday()%><br>
	<%=user.getEmail() %>
</div>
</div> 
<div class="div-b">
	<div><p>专辑</p><hr></div>
	<div class="div-e">
	<ul id="albumul" class="albumul">
	</ul>
	</div>
</div>
</div>
<div class="data-div">
<div class="div-c">
<div><img src="images/song.png" width="78" height="128" />播放列表 <button id="btn-play" class="btn btn-success" style="height: 40px;width: 140px" >  
                            点击播放
                        </button>  
             <div  style="float: right;"><img class="music-top" src="<%=user.getHead() %>"  width="150" height="150"/></div>
<hr></div>
<div>
<ul id = "m-list">
</ul>
</div>
</div>

<div class="div-f" align="center"> 
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
                        <audio  id="audio1" controls ></audio><br>
                        <strong id="rmusic" style="color: #ffffff" >我的音乐</strong>  </div>
                      
                        <a href="#" id="btn-order">  
                                    </a>  
                 
</div>
</div>
</div>
</div>
</body>
</html>
<script type="text/javascript">
var songdata= new Array();
var songname= new Array();
var songImg = new Array();
var singerid='<%=user.getUid()%>';
debugger;
$(document).ready(function(){
//	initSingerSong(singerid);
});
function initSonguser(id){
	$.ajax({
		  url:'musiclistForUid.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		  uid:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	data=JSON.parse(data);
		    	debugger;
		    	if(data.stats=='error'){
		    	}
		    	if(data.stats=='success'){
		    			$("#m-list").html("");
		    		var list=data.list;
		    		for(var i=0;i<list.length;i++){
		    			debugger;
		    			songdata[i]=list[i].song;
		    			songname[i]=list[i].sname;
		    			songImg[i]=list[i].img;
		    			if(i==0){
		    				$("#audio1").src=list[i].song;
		    				$(".img-head").src=list[i].img;
		    			}
		    			var str="<tr style='width:100%;height: 40px;'><td style='width:10%;'><img src='"+list[i].img+" ' width='40px' height='40'/></td>"
		    			+"<td  style='width:40%;line-height: 40px;height: 50px;text-align: center;vertical-align:middle;'><a class='a-list' href='playMusic.do?id="+list[i].sid
	    				+"' >"+list[i].sname+"</a></td><td style='width:20%;vertical-align:middle;'>"+list[i].songerName+"</td>"+
	    				"<td style='width:20%;vertical-align:middle;'>"+list[i].zjName+" </td><td  style='width:20%;vertical-align:middle;'><a class ='play-a' onclick='playmusic("+i+")'>播放</a></td></tr>"
		    				$("#m-list").append(str);
		    			
		    		}
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}
function initCollectuser(id){
	$.ajax({
		  url:'albumlistForUid.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		  uid:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	data=JSON.parse(data);
		    	debugger;
		    	if(data.stats=='error'){
		    	}
		    	if(data.stats=='success'){
		    		$(".albumul").html("");
		    		var list=data.list;
		    		for(var i=0;i<list.length;i++){
		    			var str="<li><div class='li-div1'><a href='playAlbum.do?id="+list[i].albumId
		    			+"'><img src='"+list[i].img+"' width='90' height='90' /></a>";
		    			str=str+""+list[i].aname+""+
		    			"</div></li>";
		    			$(".albumul").append(str);
		    		}
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});}
</script>
<script type="text/javascript" src="js/audio.js"></script>
