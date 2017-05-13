<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,com.cici.music.pojo.*"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
boolean islogin=false;
User user=(User)session.getAttribute("user");
if(user!=null){
	islogin=true;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
    <base href="<%=basePath%>">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>cici的音乐网站</title>
<meta name="keywords" content="音乐,音乐网,音乐网站,最新音乐,歌曲,mp3,歌曲mp3,mp3下载,好听的歌曲,网络歌曲" />
<meta name="description" content="高品质音乐Mp3下载试听网站，提供最新最好听的流行歌曲、网络歌曲，以及权威、全面的歌曲排行榜。" />

<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>


<script>
var islogin='<%=islogin%>';
</script>
</head>
<body bgcolor='#000000'>

<div id="wrapper">
<div>
<jsp:include page="head.jsp"></jsp:include>
</div>


  <div id="main">
    <div id="mainleft">
	  <div id="album">
	   <ul id="menu1" class="albumtitle">
              <li class="mover" onclick="setTab(1,0)">推荐专辑</li>
              <li class="mout" onclick="setTab(1,1)">最新专辑</li>
            </ul>
            <div id="main1">
              <ul>
                <li><a target="_blank" class="pic" href="musiclist/77527.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/14579/77527_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77527.shtml">如果你是落花</a></div><a target="_blank" href="/mlist/14579.shtml">任妙音</a></li>
                <li><a target="_blank" class="pic" href="musiclist/73086.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/33394/73086_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/73086.shtml">白狐妹妹</a></div><a target="_blank" href="/mlist/33394.shtml">艾美琦</a></li>
                <li><a target="_blank" class="pic" href="musiclist/77523.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/951/77523_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77523.shtml">暧昧</a></div><a target="_blank" href="/mlist/951.shtml">薛之谦</a></li>
                <li><a target="_blank" class="pic" href="musiclist/77486.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/10359/77486_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77486.shtml">最佳人选</a></div><a target="_blank" href="/mlist/10359.shtml">夏天Alex</a></li>
                <li><a target="_blank" class="pic" href="musiclist/77399.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/3629/77399_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77399.shtml">T榜力量10</a></div><a target="_blank" href="/mlist/3629.shtml">群星</a></li>
                <li><a target="_blank" class="pic" href="musiclist/77388.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/22297/77388_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77388.shtml">河溪早安</a></div><a target="_blank" href="/mlist/22297.shtml">杨朗朗</a></li>
              </ul>
              <ul style="display:none;">
              <c:forEach var="zhuanji" items="${zuixinzj }">
                              <li><a target="_blank" class="pic" href="playAlbum.do?id=${zhuanji.albumId}">
                              <img height="80px" width="80px" src="${zhuanji.img }"></a>
                              <div class="ablumname"><a target="_blank" class="ablumlink" href="playAlbum.do?id=${zhuanji.albumId}">${zhuanji. aname }</a></div>
                              <a target="_blank" href="/mlist/14579.shtml">${zhuanji. singername}</a></li>
              </c:forEach>
              </ul>
             </div>
	  </div>
        <div id="lefttop">
          <div class="noborder">
            <ul class="title">
            <span>热歌</span>
          </ul>
           <div id="main2">
          <ul class="hotSong">
          		
          </ul>
           </div>
          </div>
          <div class="border">
            <ul id="menu2" class="title">
              <span>网络歌曲</span>
              <li class="mover">华语</li>
            </ul>
            <div id="main2">
              <ul class="netSong">
              
              </ul>
            </div>
          </div>
          <div class="border">
            <ul id="menu3" class="title">
              <span>新歌</span>
              <li class="mover">华语</li>
            </ul>
            <div id="main3">
              <ul class="newsong">
              </ul>
            </div>
          </div>
        </div>
      
        
      <div id="tags"><strong>热门标签:</strong>
<a target="_blank"  href="/mlist/4789.shtml">乌兰托娅</a> <a target="_blank"  href="/bang/box100_w.shtml" class="brown f16 blod">歌曲大全</a> <a target="_blank"  href="/guangchangwu/wudui/1774/">郑多燕减肥舞</a> <a target="_blank"  href="/bang/tag9.shtml" class="green f16 blod">好听的英文歌</a> <a target="_blank"  href="/bang/tag147.shtml">父亲节歌曲</a> <a target="_blank"  href="/bang/tag17.shtml" class="red f16 blod">儿歌大全100首</a> <a target="_blank"  href="/mlist/9625.shtml" class="green blod">徐良</a> <a target="_blank"  href="/bang/tag2.shtml">老歌</a><br /> <a target="_blank"  href="/bang/tag13.shtml" class="red f15 blod">最好听的歌</a> <a target="_blank"  href="/mlist/3345.shtml">凤凰传奇最新歌曲</a> <a target="_blank"  href="/mlist/4486.shtml">许嵩的歌</a> <a target="_blank"  href="/mlist/8793.shtml" class="brown f16 blod">降央卓玛歌曲大全</a> <a target="_blank"  href="/mlist/9707.shtml">汪苏泷</a> <a target="_blank"  href="/bang/tag89.shtml">古风歌曲</a> <a target="_blank"  href="/mlist/8160.shtml" class="green f16 blod">冷漠</a> <a target="_blank"  href="/bang/tag14.shtml">好听的铃声</a> <a target="_blank"  href="/mlist/8968.shtml" class="red f16 blod">六哲</a><br /> <a target="_blank"  href="/bang/tag147.shtml">父亲节歌曲</a> <a target="_blank"  href="/mlist/6130.shtml" class="green f16 blod">王麟</a> <a target="_blank"  href="/mlist/4499.shtml">龚玥</a> <a target="_blank"  href="/bang/tag13.shtml" class="red">好听的歌曲推荐2017</a> <a target="_blank"  href="/bang/tag40.shtml">摇滚</a> <a target="_blank"  href="/bang/tag13.shtml" class="green f16 blod">有什么好听的歌</a> <a target="_blank"  href="/bang/tag93.shtml">神曲排行榜</a> <a target="_blank" href="/bang/box100_w.shtml">流行歌曲排行榜2017</a> </div>
      <div id="listen">
        <ul id="menu4">
          <span>歌曲排行</span>
          <li class="mover" onclick="showTab('menu4','main4',0)">流行歌曲</li>
          <li onclick="showTab('menu4','main4',1)">网络歌曲</li>
          <li onclick="showTab('menu4','main4',2)">情歌对唱</li>
          <li onclick="showTab('menu4','main4',3)">草原歌曲</li>
        </ul>
        <div id="main4">
            <ul id="content1">
            </ul>
            <ul id="content2" style="display:none;">
            </ul>
            <ul id="content3" style="display:none;">
            </ul>
            <ul id="content4" style="display:none;">
            </ul>
        </div>
      </div>
    </div>
    <div id="mainright">
      <div class="bord">
         <ul id="menu5">
         <% if(islogin)  {%>
          <span><a href="/bang/xinge.shtml" target="_blank">我的歌曲收藏夹</a></span>
          <%} else { %>
                    <span><a href="/bang/xinge.shtml" target="_blank">推荐歌曲榜</a></span>
          <%} %>
        </ul>
        <div id="main5">
          <ul class="musicList">
          </ul>
      </div>
      <div class="bord">
        <p class="bordtitle"><span class="more"><a href="/mlist/singerlist.shtml" target="_blank" rel="nofollow">更多>></a></span><a href="/mlist/singerlist.shtml" target="_blank">歌手top500</a></p>
        <ul class="singerpic">
        </ul>
        <ul class="top100" id="Top100">
        </ul>
		<div id="iSingerNav"><a href="/mlist/wangluo.shtml" target="_blank">网络歌手</a> &nbsp;&nbsp;<a href="/mlist/recsingerlist.shtml" target="_blank">推荐歌手</a></div>
      </div>
      <div class="bord">
      
         <p class="bordtitle"><span class="more"><a href="/bang/fenlei.shtml">歌曲分类</a></span>排行榜</p>
        <p class="intitle">歌曲排行榜</p>
        <ul>
          <li><a href="/bang/box100_w.shtml">歌曲总排行</a></li>
          <li><a href="/bang/">新歌排行榜</a></li>
        </ul>
        <p class="intitle">歌曲分类排行榜</p>
        <ul>
          <li><a href="/bang/tag4.shtml">网络歌曲</a></li>
          <li><a href="/bang/tag5.shtml">伤感歌曲</a></li>
          <li><a href="/bang/tag9.shtml">英文歌曲</a></li>
          <li><a href="/bang/tag6.shtml">韩国歌曲</a></li>
          <li><a href="/bang/tag11.shtml">情歌对唱</a></li>
          <li><a href="/bang/tag8.shtml">草原歌曲</a></li>
          <li><a href="/bang/tag10.shtml">粤语歌曲</a></li>
          <li><a href="/bang/tag2.shtml">经典老歌</a></li>
          <li><a href="/bang/tag20.shtml">KTV歌曲</a></li>
          <li><a href="/bang/tag12.shtml">影视金曲</a></li>
          <li><a href="/bang/tag7.shtml">劲爆歌曲</a></li>
          <li><a href="/bang/tag3.shtml">非主流歌曲</a></li>
          <li><a href="/bang/tag17.shtml">儿童歌曲大全</a></li>
          <li><a href="/bang/tag19.shtml">红歌</a></li>
          <li><a href="/bang/tag16.shtml">通俗歌曲</a></li>
          <li><a href="/bang/tag23.shtml">励志歌曲</a></li>
	  <li><a href="/bang/tag22.shtml">闽南语歌曲</a></li>
          <li><a href="/bang/tag18.shtml">轻音乐</a></li>
	  <li><a href="/bang/tag24.shtml">胎教音乐</a></li>
	  <li><a href="/bang/tag25.shtml">佛教音乐</a></li>
	  <li><a href="/bang/tag26.shtml">基督教歌曲</a></li>
	  <li><a href="/bang/tag27.shtml">结婚歌曲</a></li>
	  <li><a href="/bang/tag72.shtml">DJ舞曲</a></li>
	  <li><a href="/bang/tag36.shtml">毕业歌曲</a></li>
        </ul>
        <p class="intitle">歌曲推荐排行榜</p>
        <ul>
          <li><a href="http://www.yue365.com/bang/bang1.shtml">好歌人气榜</a></li>
          <li><a href="/bang/tagpasheng.shtml">新歌爬升榜</a></li>
          <li><a href="/bang/tag13.shtml">好听的歌</a></li>
        </ul>
    </div>
  </div>
 

<div id="footer">
  <div style="height:28px;line-height:28px;border-bottom:1px solid #DDDDDD;margin-bottom:10px;width:960px;" align="center">
		<a href="/about/us.shtml" rel="nofollow">网站介绍</a> | 
		<a href="/about/copy.shtml" rel="nofollow">版权声明</a> | 
		<a href="/about/contact.shtml" rel="nofollow">联系方式</a> | 
	</div>
  <div>
    <div align="center">
		<a href="http://www.yue365.com/" target="_blank">cici音乐网</a> 在线音乐门户，分享最新网络歌曲，带给你最好听的新歌 <br />
		
		<div style="  width:300px;margin:0 auto; padding:0px;">
			<a style="display:inline-block;text-decoration:none;height:20px;line-height:20px;" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=35020302000124" target="_blank">
			<img style="float:left;" src="http://www.yue365.com/about/gonganbu.jpg">
			<p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">闽公网安备 35020302000124号</p>
			</a>
		</div>
		
			
		<div style="display:none;">
		
		</div>
		
	  </div>
  </div>
</div>
<div class="dialogPopup" id="dialogPopup">
  <div class="dialogMain">
    <h3 id="dialogTitle">音乐收藏</h3>
    <div class="dialogContent">
      <p class="loading">正为您在处理数据, 请稍候...</p>
    </div>
    <span onclick="closedialog();" class="closeDiv">关闭</span></div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
function numstyle(id){var tli=document.getElementById(id).getElementsByTagName("li");for(i=0;i<tli.length;i++){var tspan=tli[i].getElementsByTagName("span");if(i==0){tspan[0].className="numberone"};if(i==1||i==2){tspan[0].className="numbertwo"}}};numstyle('main2');numstyle('main3');numstyle('main5');numstyle('content1');numstyle('content2');numstyle('content3');numstyle('content4');numstyle('Top100');
</script>
</body>
</html>