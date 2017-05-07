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
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>

<!-- foreign country -->
<script type="text/javascript">BAIDU_CLB_fillSlot("1111134");</script>
<!-- 手机 -->
<script type="text/javascript">BAIDU_CLB_fillSlot("203363");</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>cici的音乐网站</title>
<meta name="keywords" content="音乐,音乐网,音乐网站,最新音乐,歌曲,mp3,歌曲mp3,mp3下载,好听的歌曲,网络歌曲" />
<meta name="description" content="高品质音乐Mp3下载试听网站，提供最新最好听的流行歌曲、网络歌曲，以及权威、全面的歌曲排行榜。" />

<link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
<link href="http://zy.yue365.com/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>


<script>
var islogin='<%=islogin%>';
<!--
/*第一种形式 第二种形式 更换显示样式*/
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1;};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p;}('g p(h){2 5="";2 7=h.9("a");2 4=7.k;l(2 i=0;i<4;i++){2 3=7[i].n("3");j(3!=r&&3!=""){j(i==4-1){5+=3}o{5+=3+","}}};6.8("q").m=5;6.s.y()};g z(f,e,c){2 b=6.8(f).9("A");2 d=6.8(e).9("x");2 4=b.k;l(2 i=0;i<4;i++){b[i].t=i==c?"w":"";d[i].v.u=i==c?"":"B"}}',38,38,'||var|rel|count|url|document|allplays|getElementById|getElementsByTagName||navList|index|contList|contId|navId|function|list||if|length|for|value|getAttribute|else|play|id|null|form1|className|display|style|mover|ul|submit|showTab|li|none'.split('|'),0,{}))
-->
</script>
</head>
<body bgcolor='#000000'>
<div id="wrapper">
  <script type="text/javascript" src="http://cbjs.baidu.com/js/s.js"></script>
<!-- foreign country -->
<script type="text/javascript">BAIDU_CLB_fillSlot("1111134");</script>
<div id="top">
	<span class="H1Logo"><a href="/" title="cici音乐网(cici.com) - 最新最好听的网络歌曲分享" >cici音乐网</a></span>
	<div id="search">
	<input  id="KeyWords" name="KeyWords" class="searchinput" />
	<input type="button"   value=" " id="searchbotton"  onclick="onSearch();"/>
	<div id="searchradio">
		<input name="type"  type="radio" value="album">
		<span>专辑</span>
		<input name="type" checked="checked"  type="radio" value="song">
		<span>歌曲</span>
		<input name="type"  type="radio" value="artist">
		<span>歌手</span>
        <input name="type"  type="radio" value="geci">
		<span>歌词</span>
	</div>
	<div style="display:inline-block; float:left; margin-top:7px;"><script type="text/javascript">BAIDU_CLB_fillSlot("186412");</script> <a href="http://www.yue365.com/tv/" target="_blank">电视剧</a> <a href="http://www.yue365.com/movie/" target="_blank">电影</a> <a href="http://www.yue365.com/zongyi/" target="_blank">综艺</a> <a href="http://www.yue365.com/zixun/" target="_blank">资讯</a></div>
	
</div>
  
  <div id="login">
<!--     <script language="javascript" src="http://my.yue365.com/Indexlogin.aspx"></script>
	<a target="_self" href="javascript:loginhtml();">登录</a> | <a target="_self" href="javascript:reghtml();">注册</a> -->
	    <span>欢迎来到cici－－音乐网</span>
 </div>
  <ul id="nav">
    <li><a href="/">首页</a></li>
    <li><a href="/bang/">排行榜</a></li>
	<li><a href="/bang/tag13.shtml">好听的歌</a></li>
    <li><a href="/geci/">歌词搜索</a></li>
    <li><a href="/mlist/singerlist.shtml">歌手</a></li>
    <li><a href="/musiclist/ablumlist.shtml">专辑</a></li>
    <li><a href="/bang/fenlei.shtml">音乐分类</a></li>
	
	 <li><a  target="_self" href="javascript:loginhtml();">登陆</a></li>
    <li><a target="_self" href="javascript:reghtml();">注册</a></li>

  </ul>
</div>
<script type="text/javascript">
function navSel(){var navs=$('#nav li');var urlstr=document.location.toString();$('#nav li .hot').remove();if(urlstr.indexOf("/tag13")!=-1||urlstr.indexOf("/tag9")!=-1||urlstr.indexOf("/tag10")!=-1||urlstr.indexOf("/haoting")!=-1){navs[2].className="navmover";$("#nav li:eq(1)").append("<div class=\"hot\" style=\"margin-left:-25px;\"><img src=\"http://zy.yue365.com/images/hot.gif\" /></div>")}else if(urlstr.indexOf("/geci/")!=-1){navs[3].className="navmover"}else if(urlstr.indexOf("/mlist")!=-1||urlstr.indexOf("/music/")!=-1){navs[4].className="navmover"}else if(urlstr.indexOf("/musiclist")!=-1||urlstr.indexOf("/zlist")!=-1){navs[5].className="navmover"}else if(urlstr.indexOf("/bang/fenlei")!=-1 || urlstr.indexOf("/paihang/fenlei")!=-1){navs[6].className="navmover"}else if(urlstr.indexOf("/bang")!=-1){navs[1].className="navmover";$("#nav li:eq(2)").append("<div class=\"hot\"><img src=\"http://zy.yue365.com/images/hot.gif\" /></div>")}else{navs[0].className="navmover"}if(navs[1].className==""&&navs[2].className==""){$("#nav li:eq(2)").append("<div class=\"hot\"><img src=\"http://zy.yue365.com/images/hot.gif\" /></div>")}}navSel();
$(document).keypress(function(e){if(e.which==13){onSearch();}})
</script>

<script type="text/javascript">
	BAIDU_CLB_fillSlot("45023");
</script>

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
                              <li><a target="_blank" class="pic" href="musiclist/77527.shtml">
                              <img height="80px" width="80px" src="${zhuanji.img }"></a>
                              <div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77527.shtml">${zhuanji. zname }</a></div>
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
    </div>
  </div>
 

<div id="footer">
  <div style="height:28px;line-height:28px;border-bottom:1px solid #DDDDDD;margin-bottom:10px;width:960px;" align="center">
		<a href="/about/us.shtml" rel="nofollow">网站介绍</a> | 
		<a href="/about/copy.shtml" rel="nofollow">版权声明</a> | 
		<a href="/about/company.shtml" rel="nofollow">合作单位</a> | 
		<a href="/about/contact.shtml" rel="nofollow">联系方式</a> | 
		<a href="/about/gctg.shtml" rel="nofollow">歌曲推广</a> | 
		<a href="/about/ad.shtml" rel="nofollow">广告投放</a> | 
        <a href="/about/gequruku.shtml" rel="nofollow">歌曲入库</a>
	</div>
  <div>
    <div align="center">
		<a href="http://www.yue365.com/" target="_blank">cici音乐网</a> 在线音乐门户，分享最新网络歌曲，带给你最好听的新歌 <br />
		记住我们的域名：www.yue365.com
		<script language="javascript"> document.write("<a href='http://www.miitbeian.gov.cn/' target='_blank'>闽ICP备10016424号-4</a>");</script>&nbsp;&nbsp;
		<script type="text/javascript" src="http://cbjs.baidu.com/js/s.js"></script>
		<script type="text/javascript">BAIDU_CLB_singleFillSlot("117775");</script>
		<!-- 鸿媒体 -->
		<script type="text/javascript">BAIDU_CLB_fillSlot("243238");</script>
		<!-- 广告位：yue365_tuijian_ 创建于 2015-05-30 -->
		<script type="text/javascript">BAIDU_CLB_fillSlot("1092205");</script>
		
		<div style="  width:300px;margin:0 auto; padding:0px;">
			<a style="display:inline-block;text-decoration:none;height:20px;line-height:20px;" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=35020302000124" target="_blank">
			<img style="float:left;" src="http://www.yue365.com/about/gonganbu.jpg">
			<p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">闽公网安备 35020302000124号</p>
			</a>
		</div>
		
			
		<div style="display:none;">
		<script language="javascript" type="text/javascript" src="http://js.users.51.la/591322.js"></script>
		<script type="text/javascript" src="http://zy.yue365.com/js/tongji.js"></script>
		<script type="text/javascript">
	    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F1b5ab692bf3dcc99a9ff4d3a916b0c59' type='text/javascript'%3E%3C/script%3E"));
        </script>
		</div>
		<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=6&amp;uid=400402" ></script>
		<script type="text/javascript" id="bdshell_js"></script>
		<script type="text/javascript">
			var bds_config={"bdTop":79};
			document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
		</script>
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
<script type="text/javascript">
function numstyle(id){var tli=document.getElementById(id).getElementsByTagName("li");for(i=0;i<tli.length;i++){var tspan=tli[i].getElementsByTagName("span");if(i==0){tspan[0].className="numberone"};if(i==1||i==2){tspan[0].className="numbertwo"}}};numstyle('main2');numstyle('main3');numstyle('main5');numstyle('content1');numstyle('content2');numstyle('content3');numstyle('content4');numstyle('Top100');
</script>
</body>
</html>