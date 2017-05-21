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
<!--
/*第一种形式 第二种形式 更换显示样式*/
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1;};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p;}('g p(h){2 5="";2 7=h.9("a");2 4=7.k;l(2 i=0;i<4;i++){2 3=7[i].n("3");j(3!=r&&3!=""){j(i==4-1){5+=3}o{5+=3+","}}};6.8("q").m=5;6.s.y()};g z(f,e,c){2 b=6.8(f).9("A");2 d=6.8(e).9("x");2 4=b.k;l(2 i=0;i<4;i++){b[i].t=i==c?"w":"";d[i].v.u=i==c?"":"B"}}',38,38,'||var|rel|count|url|document|allplays|getElementById|getElementsByTagName||navList|index|contList|contId|navId|function|list||if|length|for|value|getAttribute|else|play|id|null|form1|className|display|style|mover|ul|submit|showTab|li|none'.split('|'),0,{}))
-->
</script>

<script>
var islogin='<%=islogin%>';
</script>
</head>
<body >

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
              <ul class ="tuijian">
              </ul>
              <ul style="display:none;">
              <c:forEach var="zhuanji" items="${zuixinzj }">
                              <li><a target="_blank" class="pic" href="playAlbum.do?id=${zhuanji.albumId}">
                              <img height="80px" width="80px" src="${zhuanji.img }"></a>
                              <div class="ablumname"><a target="_blank" class="ablumlink" href="playAlbum.do?id=${zhuanji.albumId}">${zhuanji. aname }</a></div>
                              <a target="_blank" href="singer.do?sid=${zhuanji.songerId }">${zhuanji. singername}</a></li>
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
      
        
      <div style="width: 696px;height: 97px">
      <img src="images/banner.jpg" alt=""  width='696px' height=' 97px'/>
 </div>
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
          <span><a href="userCollect.do" target="_blank">我的歌曲收藏夹</a></span>
          <%} else { %>
                    <span><a href="ranking.do" target="_blank">推荐歌曲榜</a></span>
          <%} %>
        </ul>
        <div id="main5">
          <ul class="musicList">
          </ul>
      </div>
      <div class="bord">
        <p class="bordtitle"><span class="more"><a href="singerlist.do" target="_blank" rel="nofollow">更多>></a></span><a href="singerlist.do" target="_blank">歌手top500</a></p>
        <ul class="singerpic">
        </ul>
        <ul class="top100" id="Top100">
        </ul>
      </div>
      <div class="main5">
      
         <p class="bordtitle"><span class="more"><a href="ranking.do">歌曲分类</a></span>收藏排行榜</p>
        <ul class="collect">
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