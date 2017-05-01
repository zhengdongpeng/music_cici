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
              <li>
<dl class="singer">
<a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>1</span>
<input title=336613 class="check" type="checkbox" name='id' value=''>
<dl class="songname"><a target="m" href="/play/18083/336613.shtml">青春修炼手册</a></dl>
</li>

            </ul>
            <ul id="content2" style="display:none;">
              <li><dl class="singer"><a href="/mlist/25610.shtml" title="吉雅歌曲" target="_blank">吉雅</a></dl><span>1</span><input title=389996 class="check" type="checkbox" name='id' value='2006_25610/74168/1.mp3|醉在草原唱情歌 - 吉雅&韩冰|韩冰|389996|25610|74168|醉在草原唱情歌'/><dl  class="songname"><a  target="m" href="/play/25610/389996.shtml">醉在草原唱情歌</a></dl></li><li><dl class="singer"><a href="/mlist/13941.shtml" title="刘子琪歌曲" target="_blank">刘子琪</a></dl><span>2</span><input title=376927 class="check" type="checkbox" name='id' value='2006_13941/67937/5.mp3|遇上你是我的缘|刘子琪|376927|13941|67937|遇上你是我的缘'/><dl  class="songname"><a  target="m" href="/play/13941/376927.shtml">遇上你是我的缘</a></dl></li><li><dl class="singer"><a href="/mlist/14478.shtml" title="肖洋歌曲" target="_blank">肖洋</a></dl><span>3</span><input title=376730 class="check" type="checkbox" name='id' value='2006_14478/67839/1.mp3|父爱如山|肖洋|376730|14478|67839|父爱如山'/><dl  class="songname"><a  target="m" href="/play/14478/376730.shtml">父爱如山</a></dl></li><li><dl class="singer"><a href="/mlist/31396.shtml" title="刘建东歌曲" target="_blank">刘建东</a></dl><span>4</span><input title=377554 class="check" type="checkbox" name='id' value='2006_31396/68240/12.mp3|梦中的兰花花|刘建东|377554|31396|68240|梦中的兰花花'/><dl  class="songname"><a  target="m" href="/play/31396/377554.shtml">梦中的兰花花</a></dl></li><li><dl class="singer"><a href="/mlist/11852.shtml" title="苗伟歌曲" target="_blank">苗伟</a></dl><span>5</span><input title=389564 class="check" type="checkbox" name='id' value='2006_11852/73908/1.mp3|红颜知己 - 苗伟&龙梅子|龙梅子|389564|11852|73908|红颜知己'/><dl  class="songname"><a  target="m" href="/play/11852/389564.shtml">红颜知己</a></dl></li><li><dl class="singer"><a href="/mlist/10621.shtml" title="纪晓斌歌曲" target="_blank">纪晓斌</a></dl><span>6</span><input title=390326 class="check" type="checkbox" name='id' value='2006_10621/74331/1.mp3|妈妈的味道|纪晓斌|390326|10621|74331|妈妈的味道'/><dl  class="songname"><a  target="m" href="/play/10621/390326.shtml">妈妈的味道</a></dl></li><li><dl class="singer"><a href="/mlist/23504.shtml" title="张智勇歌曲" target="_blank">张智勇</a></dl><span>7</span><input title=380298 class="check" type="checkbox" name='id' value='2006_23504/69494/1.mp3|如果有一天|张智勇|380298|23504|69494|如果有一天'/><dl  class="songname"><a  target="m" href="/play/23504/380298.shtml">如果有一天</a></dl></li><li><dl class="singer"><a href="/mlist/11748.shtml" title="魏新雨歌曲" target="_blank">魏新雨</a></dl><span>8</span><input title=380872 class="check" type="checkbox" name='id' value='2006_11748/69799/1.mp3|来生愿做一朵莲|魏新雨|380872|11748|69799|来生愿做一朵莲'/><dl  class="songname"><a  target="m" href="/play/11748/380872.shtml">来生愿做一朵莲</a></dl></li><li><dl class="singer"><a href="/mlist/27564.shtml" title="范小倩歌曲" target="_blank">范小倩</a></dl><span>9</span><input title=388441 class="check" type="checkbox" name='id' value='2006_27564/73305/1.mp3|一个人走|范小倩|388441|27564|73305|一个人走'/><dl  class="songname"><a  target="m" href="/play/27564/388441.shtml">一个人走</a></dl></li><li><dl class="singer"><a href="/mlist/17700.shtml" title="星月组合歌曲" target="_blank">星月组合</a></dl><span>10</span><input title=388330 class="check" type="checkbox" name='id' value='2006_17700/73240/1.mp3|你是我今生难忘的梦|星月组合|388330|17700|73240|你是我今生难忘的梦'/><dl  class="songname"><a  target="m" href="/play/17700/388330.shtml">你是我今生难忘的梦</a></dl></li><li><dl class="singer"><a href="/mlist/32881.shtml" title="舒方歌曲" target="_blank">舒方</a></dl><span>11</span><input title=385433 class="check" type="checkbox" name='id' value='2006_32881/71887/4.mp3|这条路上我们一起走|舒方|385433|32881|71887|这条路上我们一起走'/><dl  class="songname"><a  target="m" href="/play/32881/385433.shtml">这条路上我们一起走</a></dl></li><li><dl class="singer"><a href="/mlist/9738.shtml" title="朱其民歌曲" target="_blank">朱其民</a></dl><span>12</span><input title=381124 class="check" type="checkbox" name='id' value='2006_9738/69922/1.mp3|亲爱的我懂了|朱其民|381124|9738|69922|亲爱的我懂了'/><dl  class="songname"><a  target="m" href="/play/9738/381124.shtml">亲爱的我懂了</a></dl></li><li><dl class="singer"><a href="/mlist/31581.shtml" title="高一格歌曲" target="_blank">高一格</a></dl><span>13</span><input title=378400 class="check" type="checkbox" name='id' value='2006_31581/68666/1.mp3|别具一格|高一格|378400|31581|68666|别具一格'/><dl  class="songname"><a  target="m" href="/play/31581/378400.shtml">别具一格</a></dl></li><li><dl class="singer"><a href="/mlist/7851.shtml" title="高夫歌曲" target="_blank">高夫</a></dl><span>14</span><input title=382405 class="check" type="checkbox" name='id' value='2006_7851/70468/1.mp3|赌徒|高夫|382405|7851|70468|赌徒'/><dl  class="songname"><a  target="m" href="/play/7851/382405.shtml">赌徒</a></dl></li><li><dl class="singer"><a href="/mlist/33571.shtml" title="刘智晗歌曲" target="_blank">刘智晗</a></dl><span>15</span><input title=388691 class="check" type="checkbox" name='id' value='2006_33571/73439/1.mp3|野有蔓草|刘智晗|388691|33571|73439|野有蔓草'/><dl  class="songname"><a  target="m" href="/play/33571/388691.shtml">野有蔓草</a></dl></li><li><dl class="singer"><a href="/mlist/29708.shtml" title="鹏泊歌曲" target="_blank">鹏泊</a></dl><span>16</span><input title=383536 class="check" type="checkbox" name='id' value='2006_29708/70947/1.mp3|偷偷|鹏泊|383536|29708|70947|偷偷'/><dl  class="songname"><a  target="m" href="/play/29708/383536.shtml">偷偷</a></dl></li><li><dl class="singer"><a href="/mlist/11125.shtml" title="大庆小芳歌曲" target="_blank">大庆小芳</a></dl><span>17</span><input title=387350 class="check" type="checkbox" name='id' value='2006_11125/72774/1.mp3|就爱广场舞|大庆小芳|387350|11125|72774|就爱广场舞'/><dl  class="songname"><a  target="m" href="/play/11125/387350.shtml">就爱广场舞</a></dl></li><li><dl class="singer"><a href="/mlist/31343.shtml" title="葫芦姐妹(神龙妹子团&lunar)歌曲" target="_blank">葫芦姐妹</a></dl><span>18</span><input title=377266 class="check" type="checkbox" name='id' value='2006_31343/68105/1.mp3|葫芦姐妹|葫芦姐妹|377266|31343|68105|葫芦姐妹'/><dl  class="songname"><a  target="m" href="/play/31343/377266.shtml">葫芦姐妹</a></dl></li><li><dl class="singer"><a href="/mlist/13219.shtml" title="张宇轩歌曲" target="_blank">张宇轩</a></dl><span>19</span><input title=395401 class="check" type="checkbox" name='id' value='2006_13219/77059/1.mp3|十年之约|张宇轩|395401|13219|77059|十年之约'/><dl  class="songname"><a  target="m" href="/play/13219/395401.shtml">十年之约</a></dl></li><li><dl class="singer"><a href="/mlist/10833.shtml" title="望海高歌歌曲" target="_blank">望海高歌</a></dl><span>20</span><input title=394764 class="check" type="checkbox" name='id' value='2006_10833/76690/1.mp3|时光不老我们不散|望海高歌|394764|10833|76690|时光不老我们不散'/><dl  class="songname"><a  target="m" href="/play/10833/394764.shtml">时光不老我们不散</a></dl></li><li><dl class="singer"><a href="/mlist/7303.shtml" title="BY2歌曲" target="_blank">BY2</a></dl><span>21</span><input title=392711 class="check" type="checkbox" name='id' value='2006_7303/75553/1.mp3|桃花旗袍|BY2|392711|7303|75553|桃花旗袍'/><dl  class="songname"><a  target="m" href="/play/7303/392711.shtml">桃花旗袍</a></dl></li><li><dl class="singer"><a href="/mlist/14579.shtml" title="任妙音歌曲" target="_blank">任妙音</a></dl><span>22</span><input title=378417 class="check" type="checkbox" name='id' value='2006_14579/68682/1.mp3|风含情水含笑|任妙音|378417|14579|68682|风含情水含笑'/><dl  class="songname"><a  target="m" href="/play/14579/378417.shtml">风含情水含笑</a></dl></li><li><dl class="singer"><a href="/mlist/34904.shtml" title="糖宝歌曲" target="_blank">糖宝</a></dl><span>23</span><input title=394723 class="check" type="checkbox" name='id' value='2006_34904/76663/1.mp3|你是我最爱的女人|糖宝|394723|34904|76663|你是我最爱的女人'/><dl  class="songname"><a  target="m" href="/play/34904/394723.shtml">你是我最爱的女人</a></dl></li><li><dl class="singer"><a href="/mlist/8806.shtml" title="张牧阅歌曲" target="_blank">张牧阅</a></dl><span>24</span><input title=395248 class="check" type="checkbox" name='id' value='2006_8806/76977/1.mp3|无话可说|张牧阅|395248|8806|76977|无话可说'/><dl  class="songname"><a  target="m" href="/play/8806/395248.shtml">无话可说</a></dl></li><li><dl class="singer"><a href="/mlist/33573.shtml" title="hello girls你好少女歌曲" target="_blank">hello girls你好少女</a></dl><span>25</span><input title=388710 class="check" type="checkbox" name='id' value='2006_33573/73448/1.mp3|好喜欢你|hello girls你好少女|388710|33573|73448|好喜欢你'/><dl  class="songname"><a  target="m" href="/play/33573/388710.shtml">好喜欢你</a></dl></li><li><dl class="singer"><a href="/mlist/31080.shtml" title="大娇娇歌曲" target="_blank">大娇娇</a></dl><span>26</span><input title=382400 class="check" type="checkbox" name='id' value='2006_31080/70465/1.mp3|进退两难|大娇娇|382400|31080|70465|进退两难'/><dl  class="songname"><a  target="m" href="/play/31080/382400.shtml">进退两难</a></dl></li><li><dl class="singer"><a href="/mlist/98.shtml" title="黑龙歌曲" target="_blank">黑龙</a></dl><span>27</span><input title=380893 class="check" type="checkbox" name='id' value='2006_98/69808/1.mp3|男人三十|黑龙|380893|98|69808|男人三十'/><dl  class="songname"><a  target="m" href="/play/98/380893.shtml">男人三十</a></dl></li><li><dl class="singer"><a href="/mlist/31062.shtml" title="BING歌曲" target="_blank">BING</a></dl><span>28</span><input title=375764 class="check" type="checkbox" name='id' value='2006_31062/67416/1.mp3|Hanging On|BING|375764|31062|67416|Hanging On'/><dl  class="songname"><a  target="m" href="/play/31062/375764.shtml">Hanging On</a></dl></li><li><dl class="singer"><a href="/mlist/4481.shtml" title="王绎龙歌曲" target="_blank">王绎龙</a></dl><span>29</span><input title=376786 class="check" type="checkbox" name='id' value='2006_4481/67866/1.mp3|葡萄皮|王绎龙|376786|4481|67866|葡萄皮'/><dl  class="songname"><a  target="m" href="/play/4481/376786.shtml">葡萄皮</a></dl></li><li><dl class="singer"><a href="/mlist/17276.shtml" title="张明远歌曲" target="_blank">张明远</a></dl><span>30</span><input title=384964 class="check" type="checkbox" name='id' value='2006_17276/71655/1.mp3|桃园三结义|张明远|384964|17276|71655|桃园三结义'/><dl  class="songname"><a  target="m" href="/play/17276/384964.shtml">桃园三结义</a></dl></li><li><dl class="singer"><a href="/mlist/10759.shtml" title="孟刚歌曲" target="_blank">孟刚</a></dl><span>31</span><input title=381340 class="check" type="checkbox" name='id' value='2006_10759/70045/4.mp3|既生瑜何生亮 - 孟刚&郭少杰|郭少杰|381340|10759|70045|既生瑜何生亮'/><dl  class="songname"><a  target="m" href="/play/10759/381340.shtml">既生瑜何生亮</a></dl></li><li><dl class="singer"><a href="/mlist/19450.shtml" title="崔馨月歌曲" target="_blank">崔馨月</a></dl><span>32</span><input title=387185 class="check" type="checkbox" name='id' value='2006_19450/72676/1.mp3|幸福的轮廓|崔馨月|387185|19450|72676|幸福的轮廓'/><dl  class="songname"><a  target="m" href="/play/19450/387185.shtml">幸福的轮廓</a></dl></li><li><dl class="singer"><a href="/mlist/10621.shtml" title="纪晓斌歌曲" target="_blank">纪晓斌</a></dl><span>33</span><input title=375124 class="check" type="checkbox" name='id' value='2006_10621/67071/1.mp3|原来我爱你|纪晓斌|375124|10621|67071|原来我爱你'/><dl  class="songname"><a  target="m" href="/play/10621/375124.shtml">原来我爱你</a></dl></li><li><dl class="singer"><a href="/mlist/27138.shtml" title="沈千依歌曲" target="_blank">沈千依</a></dl><span>34</span><input title=375207 class="check" type="checkbox" name='id' value='2006_27138/67119/1.mp3|等你说分手|沈千依|375207|27138|67119|等你说分手'/><dl  class="songname"><a  target="m" href="/play/27138/375207.shtml">等你说分手</a></dl></li><li><dl class="singer"><a href="/mlist/12670.shtml" title="蒋蒋歌曲" target="_blank">蒋蒋</a></dl><span>35</span><input title=375837 class="check" type="checkbox" name='id' value='2006_12670/67457/1.mp3|河畔老人|蒋蒋|375837|12670|67457|河畔老人'/><dl  class="songname"><a  target="m" href="/play/12670/375837.shtml">河畔老人</a></dl></li><li><dl class="singer"><a href="/mlist/28440.shtml" title="赵霏儿歌曲" target="_blank">赵霏儿</a></dl><span>36</span><input title=385604 class="check" type="checkbox" name='id' value='2006_28440/71951/1.mp3|小目标|赵霏儿|385604|28440|71951|小目标'/><dl  class="songname"><a  target="m" href="/play/28440/385604.shtml">小目标</a></dl></li><li><dl class="singer"><a href="/mlist/27656.shtml" title="庆吉歌曲" target="_blank">庆吉</a></dl><span>37</span><input title=377502 class="check" type="checkbox" name='id' value='2006_27656/68230/1.mp3|七步莲花|庆吉|377502|27656|68230|七步莲花'/><dl  class="songname"><a  target="m" href="/play/27656/377502.shtml">七步莲花</a></dl></li><li><dl class="singer"><a href="/mlist/26242.shtml" title="黄腾歌曲" target="_blank">黄腾</a></dl><span>38</span><input title=389123 class="check" type="checkbox" name='id' value='2006_26242/73644/1.mp3|难受想哭|黄腾|389123|26242|73644|难受想哭'/><dl  class="songname"><a  target="m" href="/play/26242/389123.shtml">难受想哭</a></dl></li><li><dl class="singer"><a href="/mlist/1238.shtml" title="香香歌曲" target="_blank">香香</a></dl><span>39</span><input title=385567 class="check" type="checkbox" name='id' value='2006_1238/71925/1.mp3|炫爱|香香|385567|1238|71925|炫爱'/><dl  class="songname"><a  target="m" href="/play/1238/385567.shtml">炫爱</a></dl></li><li><dl class="singer"><a href="/mlist/9159.shtml" title="祁隆歌曲" target="_blank">祁隆</a></dl><span>40</span><input title=393483 class="check" type="checkbox" name='id' value='2006_9159/75932/2.mp3|同学寄|祁隆|393483|9159|75932|同学寄'/><dl  class="songname"><a  target="m" href="/play/9159/393483.shtml">同学寄</a></dl></li><li><dl class="singer"><a href="/mlist/24254.shtml" title="冯光歌曲" target="_blank">冯光</a></dl><span>41</span><input title=386036 class="check" type="checkbox" name='id' value='2006_24254/72106/1.mp3|铁了心忘记你|冯光|386036|24254|72106|铁了心忘记你'/><dl  class="songname"><a  target="m" href="/play/24254/386036.shtml">铁了心忘记你</a></dl></li><li><dl class="singer"><a href="/mlist/23239.shtml" title="许歌歌曲" target="_blank">许歌</a></dl><span>42</span><input title=386177 class="check" type="checkbox" name='id' value='2006_23239/72167/1.mp3|让爱成书 - 许歌&许嘉文|许嘉文|386177|23239|72167|让爱成书'/><dl  class="songname"><a  target="m" href="/play/23239/386177.shtml">让爱成书</a></dl></li><li><dl class="singer"><a href="/mlist/32515.shtml" title="金福歌曲" target="_blank">金福</a></dl><span>43</span><input title=384876 class="check" type="checkbox" name='id' value='2006_32515/71606/1.mp3|明天天晴|金福|384876|32515|71606|明天天晴'/><dl  class="songname"><a  target="m" href="/play/32515/384876.shtml">明天天晴</a></dl></li><li><dl class="singer"><a href="/mlist/32334.shtml" title="郭旭歌曲" target="_blank">郭旭</a></dl><span>44</span><input title=386363 class="check" type="checkbox" name='id' value='2006_32334/72252/1.mp3|一条穿过所有点的直线|郭旭|386363|32334|72252|一条穿过所有点的直线'/><dl  class="songname"><a  target="m" href="/play/32334/386363.shtml">一条穿过所有点的直线</a></dl></li><li><dl class="singer"><a href="/mlist/3994.shtml" title="龙梅子歌曲" target="_blank">龙梅子</a></dl><span>45</span><input title=386440 class="check" type="checkbox" name='id' value='2006_3994/72299/1.mp3|大叔不卖我香蕉 - 龙梅子&老猫|老猫|386440|3994|72299|大叔不卖我香蕉'/><dl  class="songname"><a  target="m" href="/play/3994/386440.shtml">大叔不卖我香蕉</a></dl></li><li><dl class="singer"><a href="/mlist/14478.shtml" title="肖洋歌曲" target="_blank">肖洋</a></dl><span>46</span><input title=386677 class="check" type="checkbox" name='id' value='2006_14478/72400/1.mp3|走进阿西里西|肖洋|386677|14478|72400|走进阿西里西'/><dl  class="songname"><a  target="m" href="/play/14478/386677.shtml">走进阿西里西</a></dl></li><li><dl class="singer"><a href="/mlist/33087.shtml" title="倪中乐歌曲" target="_blank">倪中乐</a></dl><span>47</span><input title=386662 class="check" type="checkbox" name='id' value='2006_33087/72397/1.mp3|大汉刘邦 - 倪中乐&潘倩倩|潘倩倩|386662|33087|72397|大汉刘邦'/><dl  class="songname"><a  target="m" href="/play/33087/386662.shtml">大汉刘邦</a></dl></li><li><dl class="singer"><a href="/mlist/33017.shtml" title="海鑫歌曲" target="_blank">海鑫</a></dl><span>48</span><input title=386362 class="check" type="checkbox" name='id' value='2006_33017/72251/1.mp3|梦回大山|海鑫|386362|33017|72251|梦回大山'/><dl  class="songname"><a  target="m" href="/play/33017/386362.shtml">梦回大山</a></dl></li><li><dl class="singer"><a href="/mlist/856.shtml" title="李元歌曲" target="_blank">李元</a></dl><span>49</span><input title=384909 class="check" type="checkbox" name='id' value='2006_856/71620/1.mp3|宝贝，不哭|李元|384909|856|71620|宝贝,不哭'/><dl  class="songname"><a  target="m" href="/play/856/384909.shtml">宝贝,不哭</a></dl></li><li><dl class="singer"><a href="/mlist/26054.shtml" title="贾孟昕歌曲" target="_blank">贾孟昕</a></dl><span>50</span><input title=384958 class="check" type="checkbox" name='id' value='2006_26054/71651/1.mp3|草原上的爱|贾孟昕|384958|26054|71651|草原上的爱'/><dl  class="songname"><a  target="m" href="/play/26054/384958.shtml">草原上的爱</a></dl></li><li><dl class="singer"><a href="/mlist/10675.shtml" title="乌兰图雅歌曲" target="_blank">乌兰图雅</a></dl><span>51</span><input title=384925 class="check" type="checkbox" name='id' value='2006_10675/71625/1.mp3|大美兴和|乌兰图雅|384925|10675|71625|大美兴和'/><dl  class="songname"><a  target="m" href="/play/10675/384925.shtml">大美兴和</a></dl></li><li><dl class="singer"><a href="/mlist/32779.shtml" title="李恒茁歌曲" target="_blank">李恒茁</a></dl><span>52</span><input title=384926 class="check" type="checkbox" name='id' value='2006_32779/71626/1.mp3|自己的歌|李恒茁|384926|32779|71626|自己的歌'/><dl  class="songname"><a  target="m" href="/play/32779/384926.shtml">自己的歌</a></dl></li><li><dl class="singer"><a href="/mlist/32760.shtml" title="王檀歌曲" target="_blank">王檀</a></dl><span>53</span><input title=384833 class="check" type="checkbox" name='id' value='2006_32760/71586/1.mp3|此生无悔|王檀|384833|32760|71586|此生无悔'/><dl  class="songname"><a  target="m" href="/play/32760/384833.shtml">此生无悔</a></dl></li><li><dl class="singer"><a href="/mlist/10483.shtml" title="刘牧歌曲" target="_blank">刘牧</a></dl><span>54</span><input title=385102 class="check" type="checkbox" name='id' value='2006_10483/71731/1.mp3|我不是黄渤|刘牧|385102|10483|71731|我不是黄渤'/><dl  class="songname"><a  target="m" href="/play/10483/385102.shtml">我不是黄渤</a></dl></li><li><dl class="singer"><a href="/mlist/29872.shtml" title="合力歌曲" target="_blank">合力</a></dl><span>55</span><input title=385188 class="check" type="checkbox" name='id' value='2006_29872/71771/2.mp3|大美兴和 －合力&乌兰图雅|合力|385188|29872|71771|大美兴和 －合力&乌兰图雅'/><dl  class="songname"><a  target="m" href="/play/29872/385188.shtml">大美兴和 －合力&乌兰图雅</a></dl></li><li><dl class="singer"><a href="/mlist/8985.shtml" title="龙奔歌曲" target="_blank">龙奔</a></dl><span>56</span><input title=385468 class="check" type="checkbox" name='id' value='2006_8985/71897/1.mp3|我的好哥们|龙奔|385468|8985|71897|我的好哥们'/><dl  class="songname"><a  target="m" href="/play/8985/385468.shtml">我的好哥们</a></dl></li><li><dl class="singer"><a href="/mlist/31412.shtml" title="候亚周歌曲" target="_blank">候亚周</a></dl><span>57</span><input title=385454 class="check" type="checkbox" name='id' value='2006_31412/71893/1.mp3|你走吧RB新版|候亚周|385454|31412|71893|你走吧RB新版'/><dl  class="songname"><a  target="m" href="/play/31412/385454.shtml">你走吧RB新版</a></dl></li><li><dl class="singer"><a href="/mlist/32171.shtml" title="Better Man组合歌曲" target="_blank">Better Man组合</a></dl><span>58</span><input title=385424 class="check" type="checkbox" name='id' value='2006_32171/71881/1.mp3|见面再说吧|Better Man组合|385424|32171|71881|见面再说吧'/><dl  class="songname"><a  target="m" href="/play/32171/385424.shtml">见面再说吧</a></dl></li><li><dl class="singer"><a href="/mlist/27435.shtml" title="周品歌曲" target="_blank">周品</a></dl><span>59</span><input title=387857 class="check" type="checkbox" name='id' value='2006_27435/73009/1.mp3|淡出少年|周品|387857|27435|73009|淡出少年'/><dl  class="songname"><a  target="m" href="/play/27435/387857.shtml">淡出少年</a></dl></li><li><dl class="singer"><a href="/mlist/19002.shtml" title="李小薇歌曲" target="_blank">李小薇</a></dl><span>60</span><input title=388055 class="check" type="checkbox" name='id' value='2006_19002/73116/1.mp3|爱自己多一点|李小薇|388055|19002|73116|爱自己多一点'/><dl  class="songname"><a  target="m" href="/play/19002/388055.shtml">爱自己多一点</a></dl></li>
            </ul>
            <ul id="content3" style="display:none;">
              <li><dl class="singer"><a href="/mlist/6589.shtml" title="陈娇歌曲" target="_blank">陈娇</a></dl><span>1</span><input title=379489 class="check" type="checkbox" name='id' value='2006_6589/69167/3.mp3|新郎新娘 - 陈咏&陈娇|陈咏|379489|6589|69167|新郎新娘'/><dl  class="songname"><a  target="m" href="/play/6589/379489.shtml">新郎新娘</a></dl></li><li><dl class="singer"><a href="/mlist/5869.shtml" title="路童歌曲" target="_blank">路童</a></dl><span>2</span><input title=379245 class="check" type="checkbox" name='id' value='2006_5869/69069/1.mp3|其实男人不容易 - 路童&张婡|张婡|379245|5869|69069|其实男人不容易'/><dl  class="songname"><a  target="m" href="/play/5869/379245.shtml">其实男人不容易</a></dl></li><li><dl class="singer"><a href="/mlist/31368.shtml" title="阿古哥歌曲" target="_blank">阿古哥</a></dl><span>3</span><input title=377411 class="check" type="checkbox" name='id' value='2006_31368/68169/1.mp3|我们结婚吧|阿古哥|377411|31368|68169|我们结婚吧'/><dl  class="songname"><a  target="m" href="/play/31368/377411.shtml">我们结婚吧</a></dl></li><li><dl class="singer"><a href="/mlist/1265.shtml" title="张靓颖歌曲" target="_blank">张靓颖</a></dl><span>4</span><input title=375004 class="check" type="checkbox" name='id' value='2006_1265/67008/1.mp3|只是没有如果 - 张靓颖&王铮亮|王铮亮|375004|1265|67008|只是没有如果'/><dl  class="songname"><a  target="m" href="/play/1265/375004.shtml">只是没有如果</a></dl></li><li><dl class="singer"><a href="/mlist/11578.shtml" title="纳兰歌曲" target="_blank">纳兰</a></dl><span>5</span><input title=374530 class="check" type="checkbox" name='id' value='2006_11578/66747/1.mp3|一生痴情只为你 - 纳兰&张天赋|张天赋|374530|11578|66747|一生痴情只为你'/><dl  class="songname"><a  target="m" href="/play/11578/374530.shtml">一生痴情只为你</a></dl></li><li><dl class="singer"><a href="/mlist/19572.shtml" title="格桑央西歌曲" target="_blank">格桑央西</a></dl><span>6</span><input title=372415 class="check" type="checkbox" name='id' value='2006_19572/65664/1.mp3|说好不许哭|格桑央西|372415|19572|65664|说好不许哭'/><dl  class="songname"><a  target="m" href="/play/19572/372415.shtml">说好不许哭</a></dl></li><li><dl class="singer"><a href="/mlist/23590.shtml" title="万海东歌曲" target="_blank">万海东</a></dl><span>7</span><input title=372420 class="check" type="checkbox" name='id' value='2006_23590/65668/1.mp3|前世修来今生的爱 - 万海东&王语心|王语心|372420|23590|65668|前世修来今生的爱'/><dl  class="songname"><a  target="m" href="/play/23590/372420.shtml">前世修来今生的爱</a></dl></li><li><dl class="singer"><a href="/mlist/14955.shtml" title="郭涛歌曲" target="_blank">郭涛</a></dl><span>8</span><input title=371475 class="check" type="checkbox" name='id' value='2006_14955/65165/2.mp3|牡丹花和放羊娃 - 郭涛&云飞|云飞|371475|14955|65165|牡丹花和放羊娃'/><dl  class="songname"><a  target="m" href="/play/14955/371475.shtml">牡丹花和放羊娃</a></dl></li><li><dl class="singer"><a href="/mlist/7571.shtml" title="陈咏歌曲" target="_blank">陈咏</a></dl><span>9</span><input title=366945 class="check" type="checkbox" name='id' value='2006_7571/62949/1.mp3|我们做夫妻 - 陈咏&陈娇|陈娇|366945|7571|62949|我们做夫妻'/><dl  class="songname"><a  target="m" href="/play/7571/366945.shtml">我们做夫妻</a></dl></li><li><dl class="singer"><a href="/mlist/7571.shtml" title="陈咏歌曲" target="_blank">陈咏</a></dl><span>10</span><input title=366067 class="check" type="checkbox" name='id' value='2006_7571/62438/1.mp3|梦里人 - 陈咏&陈娇|陈娇|366067|7571|62438|梦里人'/><dl  class="songname"><a  target="m" href="/play/7571/366067.shtml">梦里人</a></dl></li><li><dl class="singer"><a href="/mlist/4350.shtml" title="陈瑞歌曲" target="_blank">陈瑞</a></dl><span>11</span><input title=362085 class="check" type="checkbox" name='id' value='2006_4350/60131/1.mp3|火与蝶 - 陈瑞&小多|小多|362085|4350|60131|火与蝶'/><dl  class="songname"><a  target="m" href="/play/4350/362085.shtml">火与蝶</a></dl></li><li><dl class="singer"><a href="/mlist/10359.shtml" title="夏天Alex歌曲" target="_blank">夏天Alex</a></dl><span>12</span><input title=361837 class="check" type="checkbox" name='id' value='2006_10359/59975/1.mp3|我知道他爱你 - 夏天Alex&白婧|白婧|361837|10359|59975|我知道他爱你'/><dl  class="songname"><a  target="m" href="/play/10359/361837.shtml">我知道他爱你</a></dl></li><li><dl class="singer"><a href="/mlist/25385.shtml" title="必须组合歌曲" target="_blank">必须组合</a></dl><span>13</span><input title=347752 class="check" type="checkbox" name='id' value='2006_25385/53393/1.mp3|七年之仰|必须组合|347752|25385|53393|七年之仰'/><dl  class="songname"><a  target="m" href="/play/25385/347752.shtml">七年之仰</a></dl></li><li><dl class="singer"><a href="/mlist/8427.shtml" title="高安歌曲" target="_blank">高安</a></dl><span>14</span><input title=288643 class="check" type="checkbox" name='id' value='2006_8427/29932/6.mp3|多情伤离别 - 高安&司徒兰芳|司徒兰芳|288643|8427|29932|多情伤离别'/><dl  class="songname"><a  target="m" href="/play/8427/288643.shtml">多情伤离别</a></dl></li><li><dl class="singer"><a href="/mlist/11155.shtml" title="苏小花歌曲" target="_blank">苏小花</a></dl><span>15</span><input title=354689 class="check" type="checkbox" name='id' value='2006_11155/56415/1.mp3|真心爱你对唱版 - 苏小花&刘冲|刘冲|354689|11155|56415|真心爱你对唱版'/><dl  class="songname"><a  target="m" href="/play/11155/354689.shtml">真心爱你对唱版</a></dl></li><li><dl class="singer"><a href="/mlist/9357.shtml" title="星弟歌曲" target="_blank">星弟</a></dl><span>16</span><input title=306768 class="check" type="checkbox" name='id' value='2006_9357/39184/1.mp3|制造浪漫|星弟|306768|9357|39184|制造浪漫'/><dl  class="songname"><a  target="m" href="/play/9357/306768.shtml">制造浪漫</a></dl></li>
            </ul>
            <ul id="content4" style="display:none;">
              <li><dl class="singer"><a href="/mlist/25610.shtml" title="吉雅歌曲" target="_blank">吉雅</a></dl><span>1</span><input title=393059 class="check" type="checkbox" name='id' value='2006_25610/75687/1.mp3|马背上的萨日朗|吉雅|393059|25610|75687|马背上的萨日朗'/><dl  class="songname"><a  target="m" href="/play/25610/393059.shtml">马背上的萨日朗</a></dl></li><li><dl class="singer"><a href="/mlist/25610.shtml" title="吉雅歌曲" target="_blank">吉雅</a></dl><span>2</span><input title=389996 class="check" type="checkbox" name='id' value='2006_25610/74168/1.mp3|醉在草原唱情歌 - 吉雅&韩冰|韩冰|389996|25610|74168|醉在草原唱情歌'/><dl  class="songname"><a  target="m" href="/play/25610/389996.shtml">醉在草原唱情歌</a></dl></li><li><dl class="singer"><a href="/mlist/7979.shtml" title="苏勒亚其其格歌曲" target="_blank">苏勒亚其其格</a></dl><span>3</span><input title=381689 class="check" type="checkbox" name='id' value='2006_7979/70182/1.mp3|歌在飞|苏勒亚其其格|381689|7979|70182|歌在飞'/><dl  class="songname"><a  target="m" href="/play/7979/381689.shtml">歌在飞</a></dl></li><li><dl class="singer"><a href="/mlist/14478.shtml" title="肖洋歌曲" target="_blank">肖洋</a></dl><span>4</span><input title=386677 class="check" type="checkbox" name='id' value='2006_14478/72400/1.mp3|走进阿西里西|肖洋|386677|14478|72400|走进阿西里西'/><dl  class="songname"><a  target="m" href="/play/14478/386677.shtml">走进阿西里西</a></dl></li><li><dl class="singer"><a href="/mlist/26054.shtml" title="贾孟昕歌曲" target="_blank">贾孟昕</a></dl><span>5</span><input title=384958 class="check" type="checkbox" name='id' value='2006_26054/71651/1.mp3|草原上的爱|贾孟昕|384958|26054|71651|草原上的爱'/><dl  class="songname"><a  target="m" href="/play/26054/384958.shtml">草原上的爱</a></dl></li><li><dl class="singer"><a href="/mlist/31840.shtml" title="斯日古楞歌曲" target="_blank">斯日古楞</a></dl><span>6</span><input title=379793 class="check" type="checkbox" name='id' value='2006_31840/69309/4.mp3|秋牧歌|斯日古楞|379793|31840|69309|秋牧歌'/><dl  class="songname"><a  target="m" href="/play/31840/379793.shtml">秋牧歌</a></dl></li><li><dl class="singer"><a href="/mlist/31840.shtml" title="斯日古楞歌曲" target="_blank">斯日古楞</a></dl><span>7</span><input title=379792 class="check" type="checkbox" name='id' value='2006_31840/69309/3.mp3|多想在草原遇见你|斯日古楞|379792|31840|69309|多想在草原遇见你'/><dl  class="songname"><a  target="m" href="/play/31840/379792.shtml">多想在草原遇见你</a></dl></li><li><dl class="singer"><a href="/mlist/9909.shtml" title="索南扎西歌曲" target="_blank">索南扎西</a></dl><span>8</span><input title=371845 class="check" type="checkbox" name='id' value='2006_9909/65340/1.mp3|草原痴情郎|索南扎西|371845|9909|65340|草原痴情郎'/><dl  class="songname"><a  target="m" href="/play/9909/371845.shtml">草原痴情郎</a></dl></li><li><dl class="singer"><a href="/mlist/13941.shtml" title="刘子琪歌曲" target="_blank">刘子琪</a></dl><span>9</span><input title=376926 class="check" type="checkbox" name='id' value='2006_13941/67937/4.mp3|相约高原|刘子琪|376926|13941|67937|相约高原'/><dl  class="songname"><a  target="m" href="/play/13941/376926.shtml">相约高原</a></dl></li><li><dl class="singer"><a href="/mlist/13941.shtml" title="刘子琪歌曲" target="_blank">刘子琪</a></dl><span>10</span><input title=376925 class="check" type="checkbox" name='id' value='2006_13941/67937/3.mp3|马背上的摇篮|刘子琪|376925|13941|67937|马背上的摇篮'/><dl  class="songname"><a  target="m" href="/play/13941/376925.shtml">马背上的摇篮</a></dl></li><li><dl class="singer"><a href="/mlist/25491.shtml" title="萌萌哒天团歌曲" target="_blank">萌萌哒天团</a></dl><span>11</span><input title=373858 class="check" type="checkbox" name='id' value='2006_25491/66419/1.mp3|神奇大草原|萌萌哒天团|373858|25491|66419|神奇大草原'/><dl  class="songname"><a  target="m" href="/play/25491/373858.shtml">神奇大草原</a></dl></li><li><dl class="singer"><a href="/mlist/29733.shtml" title="柴达木民族乐团歌曲" target="_blank">柴达木民族乐团</a></dl><span>12</span><input title=368475 class="check" type="checkbox" name='id' value='2006_29733/63752/5.mp3|神速的骏马|柴达木民族乐团|368475|29733|63752|神速的骏马'/><dl  class="songname"><a  target="m" href="/play/29733/368475.shtml">神速的骏马</a></dl></li><li><dl class="singer"><a href="/mlist/29733.shtml" title="柴达木民族乐团歌曲" target="_blank">柴达木民族乐团</a></dl><span>13</span><input title=368474 class="check" type="checkbox" name='id' value='2006_29733/63752/4.mp3|蒙古包赞歌|柴达木民族乐团|368474|29733|63752|蒙古包赞歌'/><dl  class="songname"><a  target="m" href="/play/29733/368474.shtml">蒙古包赞歌</a></dl></li><li><dl class="singer"><a href="/mlist/11618.shtml" title="韩冰歌曲" target="_blank">韩冰</a></dl><span>14</span><input title=363916 class="check" type="checkbox" name='id' value='2006_11618/61152/1.mp3|天边的故乡|韩冰|363916|11618|61152|天边的故乡'/><dl  class="songname"><a  target="m" href="/play/11618/363916.shtml">天边的故乡</a></dl></li><li><dl class="singer"><a href="/mlist/24656.shtml" title="王丰钰歌曲" target="_blank">王丰钰</a></dl><span>15</span><input title=366565 class="check" type="checkbox" name='id' value='2006_24656/62744/1.mp3|爱唱歌的草原|王丰钰|366565|24656|62744|爱唱歌的草原'/><dl  class="songname"><a  target="m" href="/play/24656/366565.shtml">爱唱歌的草原</a></dl></li><li><dl class="singer"><a href="/mlist/13941.shtml" title="刘子琪歌曲" target="_blank">刘子琪</a></dl><span>16</span><input title=365010 class="check" type="checkbox" name='id' value='2006_13941/61847/3.mp3|酒歌飘香|刘子琪|365010|13941|61847|酒歌飘香'/><dl  class="songname"><a  target="m" href="/play/13941/365010.shtml">酒歌飘香</a></dl></li><li><dl class="singer"><a href="/mlist/28648.shtml" title="布格歌曲" target="_blank">布格</a></dl><span>17</span><input title=362944 class="check" type="checkbox" name='id' value='2006_28648/60591/1.mp3|情歌唱给草原听|布格|362944|28648|60591|情歌唱给草原听'/><dl  class="songname"><a  target="m" href="/play/28648/362944.shtml">情歌唱给草原听</a></dl></li><li><dl class="singer"><a href="/mlist/28452.shtml" title="张娜歌曲" target="_blank">张娜</a></dl><span>18</span><input title=361980 class="check" type="checkbox" name='id' value='2006_28452/60075/1.mp3|马兰花|张娜|361980|28452|60075|马兰花'/><dl  class="songname"><a  target="m" href="/play/28452/361980.shtml">马兰花</a></dl></li><li><dl class="singer"><a href="/mlist/28438.shtml" title="雪莲卓玛歌曲" target="_blank">雪莲卓玛</a></dl><span>19</span><input title=361941 class="check" type="checkbox" name='id' value='2006_28438/60042/1.mp3|高原情|雪莲卓玛|361941|28438|60042|高原情'/><dl  class="songname"><a  target="m" href="/play/28438/361941.shtml">高原情</a></dl></li><li><dl class="singer"><a href="/mlist/9856.shtml" title="朱永飞歌曲" target="_blank">朱永飞</a></dl><span>20</span><input title=356334 class="check" type="checkbox" name='id' value='2006_9856/28839/2.mp3|家乡的小河|朱永飞|356334|9856|28839|家乡的小河'/><dl  class="songname"><a  target="m" href="/play/9856/356334.shtml">家乡的小河</a></dl></li><li><dl class="singer"><a href="/mlist/16522.shtml" title="周强歌曲" target="_blank">周强</a></dl><span>21</span><input title=297132 class="check" type="checkbox" name='id' value='2006_16522/36425/1.mp3|我在草原上|周强|297132|16522|36425|我在草原上'/><dl  class="songname"><a  target="m" href="/play/16522/297132.shtml">我在草原上</a></dl></li>
            </ul>
        </div>
      </div>
    </div>
    <div id="mainright">
      <div class="bord">
         <ul id="menu5">
          <span><a href="/bang/xinge.shtml" target="_blank">我的歌曲收藏夹</a></span>
        </ul>
        <div id="main5">
          <ul class="musicList">
			
          </ul>
      </div>
      <div class="bord">
        <p class="bordtitle"><span class="more"><a href="/mlist/singerlist.shtml" target="_blank" rel="nofollow">更多>></a></span><a href="/mlist/singerlist.shtml" target="_blank">歌手top500</a></p>
        <ul class="singerpic">
          <a href="/mlist/18083.shtml"><img src="http://pic.yue365.com/singer/90/10/18083.jpg" width="90" height="90"/></a><a href="/mlist/10675.shtml"><img src="http://pic.yue365.com/singer/90/6/10675.jpg" width="90" height="90"/></a>
        </ul>
        <ul class="top100" id="Top100">
          <li><span>1</span><a href="/mlist/18083.shtml">TFBOYS</a></li><li><span>2</span><a href="/mlist/10675.shtml">乌兰图雅</a></li><li><span>3</span><a href="/mlist/427.shtml">范玮琪</a></li><li><span>4</span><a href="/mlist/9625.shtml">徐良</a></li><li><span>5</span><a href="/mlist/9159.shtml">祁隆</a></li><li><span>6</span><a href="/mlist/8160.shtml">冷漠</a></li><li><span>7</span><a href="/mlist/9626.shtml">阿悄</a></li><li><span>8</span><a href="/mlist/4350.shtml">陈瑞</a></li><li><span>9</span><a href="/mlist/10995.shtml">孙子涵</a></li><li><span>10</span><a href="/mlist/10203.shtml">筷子兄弟</a></li><li><span>11</span><a href="/mlist/809.shtml">后弦</a></li><li><span>12</span><a href="/mlist/9298.shtml">小贱</a></li><li><span>13</span><a href="/mlist/1238.shtml">香香</a></li><li><span>14</span><a href="/mlist/4603.shtml">蓝雨</a></li><li><span>15</span><a href="/mlist/7371.shtml">徐誉滕</a></li><li><span>16</span><a href="/mlist/4104.shtml">易欣</a></li><li><span>17</span><a href="/mlist/7099.shtml">陈玉建</a></li><li><span>18</span><a href="/mlist/4789.shtml">乌兰托娅</a></li>
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