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
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/audio.js"></script>
</head>
<body >
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>

</div>
<audio id="audio12 " src="song/ah.mp3"></audio>
 <div class="container">  
            <div class="row">  
                <div class="col-md-4">  
                    <ol id="m-list">  
  
                    </ol>  
                </div>  
                <div class="col-md-4">  
                    <div>  
                        正在播放: <strong id="rmusic"></strong>  
                    </div>  
       
                    <div class="btn-group" id="ctrl-area">  
     <!--                    <button id="btn-play" class="btn btn-success">  
                            播放  
                        </button>  --> 
                                      <button id="btn-pre" class="btn btn-success">  
                            上一首  
                        </button>  
                        <button id="btn-next" class="btn btn-success">  
                            下一首  
                        </button> 
                    <audio id="audio1" controls></audio>  
<!--                         <button id="btn-pause" class="btn btn-success">  
                            暂停  
                        </button>   -->
  
                        <!-- Single button -->  
                    <!--     <div class="btn-group">  
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">  
                                播放模式 <span class="caret"></span>  
                            </button>  
                            <ul class="dropdown-menu" role="menu">  
                                <li>  
                                    <a href="#" id="btn-loop">  
                                        单曲循环  
                                    </a>  
                                </li>  
                                <li>  
                                    <a href="#" id="btn-order">  
                                        顺序播放  
                                    </a>  
                                </li>  
                                <li>  
                                    <a href="#" id="btn-random">  
                                        随机播放  
                                    </a>  
                                </li>  
                            </ul>  
                        </div>   -->
                    </div>  
                </div>  
            </div>  
        </div>  
</div>
</body>
</html>
<script type="text/javascript">

$(document).ready(function(){
	debugger;
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
	    		$(".shoucang1").html("已经收藏");
	    		}
	    		
	    		return;
	    	}
	    },
	    error:function(xhr){
	    },
	   
});}
</script>