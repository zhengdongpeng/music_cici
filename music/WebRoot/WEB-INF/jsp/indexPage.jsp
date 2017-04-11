<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script>
<!--
/*第一种形式 第二种形式 更换显示样式*/
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1;};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p;}('g p(h){2 5="";2 7=h.9("a");2 4=7.k;l(2 i=0;i<4;i++){2 3=7[i].n("3");j(3!=r&&3!=""){j(i==4-1){5+=3}o{5+=3+","}}};6.8("q").m=5;6.s.y()};g z(f,e,c){2 b=6.8(f).9("A");2 d=6.8(e).9("x");2 4=b.k;l(2 i=0;i<4;i++){b[i].t=i==c?"w":"";d[i].v.u=i==c?"":"B"}}',38,38,'||var|rel|count|url|document|allplays|getElementById|getElementsByTagName||navList|index|contList|contId|navId|function|list||if|length|for|value|getAttribute|else|play|id|null|form1|className|display|style|mover|ul|submit|showTab|li|none'.split('|'),0,{}))
-->
</script>
</head>
<body>
<div id="wrapper">
  <script type="text/javascript" src="http://cbjs.baidu.com/js/s.js"></script>
<!-- foreign country -->
<script type="text/javascript">BAIDU_CLB_fillSlot("1111134");</script>
<div id="top">
	<span class="H1Logo"><a href="/" title="365音乐网(yue365.com) - 最新最好听的网络歌曲分享" >365音乐网</a></span>
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
    <!--<script language="javascript" src="http://my.yue365.com/Indexlogin.aspx"></script> -->
	<!--<a target="_self" href="javascript:loginhtml();">登录</a> | <a target="_self" href="javascript:reghtml();">注册</a>-->
 </div>
  <ul id="nav">
    <li><a href="/">首页</a></li>
    <li><a href="/bang/">排行榜</a></li>
	<li><a href="/bang/tag13.shtml">好听的歌</a></li>
    <li><a href="/geci/">歌词搜索</a></li>
    <li><a href="/mlist/singerlist.shtml">歌手</a></li>
    <li><a href="/musiclist/ablumlist.shtml">专辑</a></li>
    <li><a href="/bang/fenlei.shtml">音乐分类</a></li>
	<span>欢迎来到365音乐网</span>
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
                <li><a target="_blank" class="pic" href="musiclist/77527.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/14579/77527_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77527.shtml">如果你是落花</a></div><a target="_blank" href="/mlist/14579.shtml">任妙音</a></li><li><a target="_blank" class="pic" href="musiclist/73086.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/33394/73086_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/73086.shtml">白狐妹妹</a></div><a target="_blank" href="/mlist/33394.shtml">艾美琦</a></li><li><a target="_blank" class="pic" href="musiclist/77523.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/951/77523_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77523.shtml">暧昧</a></div><a target="_blank" href="/mlist/951.shtml">薛之谦</a></li><li><a target="_blank" class="pic" href="musiclist/77486.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/10359/77486_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77486.shtml">最佳人选</a></div><a target="_blank" href="/mlist/10359.shtml">夏天Alex</a></li><li><a target="_blank" class="pic" href="musiclist/77399.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/3629/77399_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77399.shtml">T榜力量10</a></div><a target="_blank" href="/mlist/3629.shtml">群星</a></li><li><a target="_blank" class="pic" href="musiclist/77388.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/22297/77388_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77388.shtml">河溪早安</a></div><a target="_blank" href="/mlist/22297.shtml">杨朗朗</a></li>
              </ul>
              <ul style="display:none;">
                <li><a target="_blank" class="pic" href="/musiclist/77551.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/396/77551_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77551.shtml">我喜欢上你时的内心活动(电影《喜欢你》主题曲)</a></div><a target="_blank" href="/mlist/396.shtml">陈绮贞</a></li><li><a target="_blank" class="pic" href="/musiclist/77547.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/2166/77547_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77547.shtml">真爱无坦途(电影《绑架者》片尾曲)</a></div><a target="_blank" href="/mlist/2166.shtml">李玖哲</a></li><li><a target="_blank" class="pic" href="/musiclist/77546.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/35292/77546_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77546.shtml">全世界把我遗弃</a></div><a target="_blank" href="/mlist/35292.shtml">朱盈盈</a></li><li><a target="_blank" class="pic" href="/musiclist/77545.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/8671/77545_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77545.shtml">忘忧集之爱如烟雨</a></div><a target="_blank" href="/mlist/8671.shtml">孟杨</a></li><li><a target="_blank" class="pic" href="/musiclist/77544.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/30454/77544_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77544.shtml">酒太伤</a></div><a target="_blank" href="/mlist/30454.shtml">邵杰</a></li><li><a target="_blank" class="pic" href="/musiclist/77543.shtml"><img height="80px" width="80px" src="http://pic.yue365.com/13020/77543_100.jpg"></a><div class="ablumname"><a target="_blank" class="ablumlink" href="/musiclist/77543.shtml">梨花雪</a></div><a target="_blank" href="/mlist/13020.shtml">刘恺名</a></li>
              </ul>
             </div>
	  </div>
        <div id="lefttop">
          <div class="noborder">
            <ul class="title">
            <span>热歌</span>
          </ul>
          <ul id="netSong">
		   <dl><dt class="num numberone">1</dt><dt class="song"><a  target="m" href="/play/18083/336613.shtml" rel="2006_18083/48972/1.mp3|青春修炼手册|TFBOYS|336613|18083|48972|青春修炼手册">青春修炼手册</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl><dl><dt class="num numbertwo">2</dt><dt class="song"><a  target="m" href="/play/18083/362215.shtml" rel="2006_18083/60192/1.mp3|大梦想家|TFBOYS|362215|18083|60192|大梦想家">大梦想家</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl><dl><dt class="num numbertwo">3</dt><dt class="song"><a  target="m" href="/play/746/366624.shtml" rel="2006_746/62784/1.mp3|寻龙诀|陈坤|366624|746|62784|寻龙诀">寻龙诀</a></dt><dd><a href="/mlist/746.shtml" title="陈坤歌曲" target="_blank">陈坤</a></dd></dl><dl><dt class="num">4</dt><dt class="song"><a  target="m" href="/play/18083/324544.shtml" rel="2006_18083/44594/1.mp3|魔法城堡|TFBOYS|324544|18083|44594|魔法城堡">魔法城堡</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl><dl><dt class="num">5</dt><dt class="song"><a  target="m" href="/play/951/395447.shtml" rel="2006_951/77067/2.mp3|高尚|薛之谦|395447|951|77067|高尚">高尚</a></dt><dd><a href="/mlist/951.shtml" title="薛之谦歌曲" target="_blank">薛之谦</a></dd></dl><dl><dt class="num">6</dt><dt class="song"><a  target="m" href="/play/1206/343934.shtml" rel="2006_1206/51776/1.mp3|小鸡小鸡|王蓉|343934|1206|51776|小鸡小鸡">小鸡小鸡</a></dt><dd><a href="/mlist/1206.shtml" title="王蓉歌曲" target="_blank">王蓉</a></dd></dl><dl><dt class="num">7</dt><dt class="song"><a  target="m" href="/play/1594/378657.shtml" rel="2006_1594/68810/1.mp3|绝地逃亡|羽泉|378657|1594|68810|绝地逃亡">绝地逃亡</a></dt><dd><a href="/mlist/1594.shtml" title="羽泉歌曲" target="_blank">羽泉</a></dd></dl><dl><dt class="num">8</dt><dt class="song"><a  target="m" href="/play/10203/359236.shtml" rel="2006_10203/58679/1.mp3|小水果|筷子兄弟|359236|10203|58679|小水果">小水果</a></dt><dd><a href="/mlist/10203.shtml" title="筷子兄弟歌曲" target="_blank">筷子兄弟</a></dd></dl><dl><dt class="num">9</dt><dt class="song"><a  target="m" href="/play/18083/344337.shtml" rel="2006_18083/51903/1.mp3|信仰之名|TFBOYS|344337|18083|51903|信仰之名">信仰之名</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl><dl><dt class="num">10</dt><dt class="song"><a  target="m" href="/play/18083/309382.shtml" rel="2006_18083/40028/1.mp3|爱出发|TFBOYS|309382|18083|40028|爱出发">爱出发</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl><dl><dt class="num">11</dt><dt class="song"><a  target="m" href="/play/10203/353063.shtml" rel="2006_10203/55669/1.mp3|最炫小苹果 - 筷子兄弟&凤凰传奇|筷子兄弟|353063|10203|55669|最炫小苹果">最炫小苹果</a></dt><dd><a href="/mlist/10203.shtml" title="筷子兄弟歌曲" target="_blank">筷子兄弟</a></dd></dl><dl><dt class="num">12</dt><dt class="song"><a  target="m" href="/play/18083/340855.shtml" rel="2006_18083/50506/1.mp3|幸运符号|TFBOYS|340855|18083|50506|幸运符号">幸运符号</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl><dl><dt class="num">13</dt><dt class="song"><a  target="m" href="/play/28180/368167.shtml" rel="2006_28180/63605/1.mp3|幸福么么哒 - 邹市明&冉莹颖&轩轩|邹市明|368167|28180|63605|幸福么么哒">幸福么么哒</a></dt><dd><a href="/mlist/28180.shtml" title="邹市明歌曲" target="_blank">邹市明</a></dd></dl><dl><dt class="num">14</dt><dt class="song"><a  target="m" href="/play/16049/365221.shtml" rel="2006_16049/51171/6.mp3|小宝贝|夏天播放|365221|16049|51171|小宝贝">小宝贝</a></dt><dd><a href="/mlist/16049.shtml" title="夏天播放歌曲" target="_blank">夏天播放</a></dd></dl><dl><dt class="num">15</dt><dt class="song"><a  target="m" href="/play/18083/362869.shtml" rel="2006_18083/60550/1.mp3|剩下的盛夏 - TFBOYS&嘻游记|TFBOYS|362869|18083|60550|剩下的盛夏">剩下的盛夏</a></dt><dd><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dd></dl>
          </ul>
          </div>
          <div class="border">
            <ul id="menu2" class="title">
              <span>网络歌曲</span>
              <li class="mover">华语</li>
            </ul>
            <div id="main2">
              <ul>
                <li><dl class="singer"><a href="/mlist/35012.shtml" title="李志强歌曲" target="_blank">李志强</a></dl><span>1</span><dl  class="songname"><a  target="m" href="/play/35012/395134.shtml" rel="2006_35012/76901/1.mp3|脱下军装还是兵|李志强|395134|35012|76901|脱下军装还是兵">脱下军装还是兵</a></dl></li><li><dl class="singer"><a href="/mlist/17836.shtml" title="傅松歌曲" target="_blank">傅松</a></dl><span>2</span><dl  class="songname"><a  target="m" href="/play/17836/395776.shtml" rel="2006_17836/77282/1.mp3|老大|傅松|395776|17836|77282|老大">老大</a></dl></li><li><dl class="singer"><a href="/mlist/13219.shtml" title="张宇轩歌曲" target="_blank">张宇轩</a></dl><span>3</span><dl  class="songname"><a  target="m" href="/play/13219/395401.shtml" rel="2006_13219/77059/1.mp3|十年之约|张宇轩|395401|13219|77059|十年之约">十年之约</a></dl></li><li><dl class="singer"><a href="/mlist/34733.shtml" title="鲍鹏歌曲" target="_blank">鲍鹏</a></dl><span>4</span><dl  class="songname"><a  target="m" href="/play/34733/395537.shtml" rel="2006_34733/77146/1.mp3|朋友的圈|鲍鹏|395537|34733|77146|朋友的圈">朋友的圈</a></dl></li><li><dl class="singer"><a href="/mlist/10168.shtml" title="戴佳毅歌曲" target="_blank">戴佳毅</a></dl><span>5</span><dl  class="songname"><a  target="m" href="/play/10168/395453.shtml" rel="2006_10168/77103/1.mp3|我是真的很爱你|戴佳毅|395453|10168|77103|我是真的很爱你">我是真的很爱你</a></dl></li><li><dl class="singer"><a href="/mlist/8806.shtml" title="张牧阅歌曲" target="_blank">张牧阅</a></dl><span>6</span><dl  class="songname"><a  target="m" href="/play/8806/395248.shtml" rel="2006_8806/76977/1.mp3|无话可说|张牧阅|395248|8806|76977|无话可说">无话可说</a></dl></li><li><dl class="singer"><a href="/mlist/35021.shtml" title="大纯歌曲" target="_blank">大纯</a></dl><span>7</span><dl  class="songname"><a  target="m" href="/play/35021/395164.shtml" rel="2006_35021/76922/1.mp3|兄弟这份情谊我记得 - 大纯&袁飞扬|大纯|395164|35021|76922|兄弟这份情谊我记得">兄弟这份情谊我记得</a></dl></li><li><dl class="singer"><a href="/mlist/33661.shtml" title="索丽娜歌曲" target="_blank">索丽娜</a></dl><span>8</span><dl  class="songname"><a  target="m" href="/play/33661/394560.shtml" rel="2006_33661/76563/1.mp3|爱是对你最好的表达 - 索丽娜&南风|索丽娜|394560|33661|76563|爱是对你最好的表达">爱是对你最好的表达</a></dl></li><li><dl class="singer"><a href="/mlist/32334.shtml" title="郭旭歌曲" target="_blank">郭旭</a></dl><span>9</span><dl  class="songname"><a  target="m" href="/play/32334/394912.shtml" rel="2006_32334/76763/1.mp3|冬|郭旭|394912|32334|76763|冬">冬</a></dl></li><li><dl class="singer"><a href="/mlist/10833.shtml" title="望海高歌歌曲" target="_blank">望海高歌</a></dl><span>10</span><dl  class="songname"><a  target="m" href="/play/10833/394764.shtml" rel="2006_10833/76690/1.mp3|时光不老我们不散|望海高歌|394764|10833|76690|时光不老我们不散">时光不老我们不散</a></dl></li><li><dl class="singer"><a href="/mlist/34904.shtml" title="糖宝歌曲" target="_blank">糖宝</a></dl><span>11</span><dl  class="songname"><a  target="m" href="/play/34904/394723.shtml" rel="2006_34904/76663/1.mp3|你是我最爱的女人|糖宝|394723|34904|76663|你是我最爱的女人">你是我最爱的女人</a></dl></li><li><dl class="singer"><a href="/mlist/28758.shtml" title="四郎贡布歌曲" target="_blank">四郎贡布</a></dl><span>12</span><dl  class="songname"><a  target="m" href="/play/28758/394329.shtml" rel="2006_28758/76433/1.mp3|相伴一生 - 四郎贡布&索朗德吉|四郎贡布|394329|28758|76433|相伴一生">相伴一生</a></dl></li><li><dl class="singer"><a href="/mlist/10833.shtml" title="望海高歌歌曲" target="_blank">望海高歌</a></dl><span>13</span><dl  class="songname"><a  target="m" href="/play/10833/394001.shtml" rel="2006_10833/76261/1.mp3|红红火火又一年|望海高歌|394001|10833|76261|红红火火又一年">红红火火又一年</a></dl></li><li><dl class="singer"><a href="/mlist/27804.shtml" title="吴陌川歌曲" target="_blank">吴陌川</a></dl><span>14</span><dl  class="songname"><a  target="m" href="/play/27804/393602.shtml" rel="2006_27804/76011/1.mp3|怪叔叔有人爱|吴陌川|393602|27804|76011|怪叔叔有人爱">怪叔叔有人爱</a></dl></li><li><dl class="singer"><a href="/mlist/9159.shtml" title="祁隆歌曲" target="_blank">祁隆</a></dl><span>15</span><dl  class="songname"><a  target="m" href="/play/9159/393483.shtml" rel="2006_9159/75932/2.mp3|同学寄|祁隆|393483|9159|75932|同学寄">同学寄</a></dl></li>
              </ul>
            </div>
          </div>
          <div class="border">
            <ul id="menu3" class="title">
              <span>新歌</span>
              <li class="mover">华语</li>
            </ul>
            <div id="main3">
              <ul>
                <li><dl class="singer"><a href="/mlist/951.shtml" title="薛之谦歌曲" target="_blank">薛之谦</a></dl><span>1</span><dl  class="songname"><a  target="m" href="/play/951/396179.shtml" rel="2006_951/77523/1.mp3|暧昧|薛之谦|396179|951|77523|暧昧">暧昧</a></dl></li><li><dl class="singer"><a href="/mlist/26706.shtml" title="吕晶歌曲" target="_blank">吕晶</a></dl><span>2</span><dl  class="songname"><a  target="m" href="/play/26706/396077.shtml" rel="2006_26706/77473/1.mp3|味道|吕晶|396077|26706|77473|味道">味道</a></dl></li><li><dl class="singer"><a href="/mlist/22297.shtml" title="杨朗朗歌曲" target="_blank">杨朗朗</a></dl><span>3</span><dl  class="songname"><a  target="m" href="/play/22297/395964.shtml" rel="2006_22297/77388/1.mp3|河溪早安|杨朗朗|395964|22297|77388|河溪早安">河溪早安</a></dl></li><li><dl class="singer"><a href="/mlist/28061.shtml" title="简弘亦歌曲" target="_blank">简弘亦</a></dl><span>4</span><dl  class="songname"><a  target="m" href="/play/28061/395960.shtml" rel="2006_28061/77384/1.mp3|过节|简弘亦|395960|28061|77384|过节">过节</a></dl></li><li><dl class="singer"><a href="/mlist/951.shtml" title="薛之谦歌曲" target="_blank">薛之谦</a></dl><span>5</span><dl  class="songname"><a  target="m" href="/play/951/395778.shtml" rel="2006_951/77284/1.mp3|动物世界|薛之谦|395778|951|77284|动物世界">动物世界</a></dl></li><li><dl class="singer"><a href="/mlist/35181.shtml" title="HELLO GIRLS歌曲" target="_blank">HELLO GIRLS</a></dl><span>6</span><dl  class="songname"><a  target="m" href="/play/35181/395731.shtml" rel="2006_35181/77253/1.mp3|小黑屋|HELLO GIRLS|395731|35181|77253|小黑屋">小黑屋</a></dl></li><li><dl class="singer"><a href="/mlist/35128.shtml" title="L.I.K.E歌曲" target="_blank">L.I.K.E</a></dl><span>7</span><dl  class="songname"><a  target="m" href="/play/35128/395538.shtml" rel="2006_35128/77147/1.mp3|闺蜜城堡|L.I.K.E|395538|35128|77147|闺蜜城堡">闺蜜城堡</a></dl></li><li><dl class="singer"><a href="/mlist/23141.shtml" title="毛泽少歌曲" target="_blank">毛泽少</a></dl><span>8</span><dl  class="songname"><a  target="m" href="/play/23141/395522.shtml" rel="2006_23141/77133/1.mp3|心头的彩虹|毛泽少|395522|23141|77133|心头的彩虹">心头的彩虹</a></dl></li><li><dl class="singer"><a href="/mlist/7872.shtml" title="叶贝文歌曲" target="_blank">叶贝文</a></dl><span>9</span><dl  class="songname"><a  target="m" href="/play/7872/395449.shtml" rel="2006_7872/77099/1.mp3|相爱相守一辈子|叶贝文|395449|7872|77099|相爱相守一辈子">相爱相守一辈子</a></dl></li><li><dl class="singer"><a href="/mlist/951.shtml" title="薛之谦歌曲" target="_blank">薛之谦</a></dl><span>10</span><dl  class="songname"><a  target="m" href="/play/951/395447.shtml" rel="2006_951/77067/2.mp3|高尚|薛之谦|395447|951|77067|高尚">高尚</a></dl></li><li><dl class="singer"><a href="/mlist/5505.shtml" title="金志文歌曲" target="_blank">金志文</a></dl><span>11</span><dl  class="songname"><a  target="m" href="/play/5505/395408.shtml" rel="2006_5505/77066/1.mp3|迷途之光|金志文|395408|5505|77066|迷途之光">迷途之光</a></dl></li><li><dl class="singer"><a href="/mlist/797.shtml" title="胡彦斌歌曲" target="_blank">胡彦斌</a></dl><span>12</span><dl  class="songname"><a  target="m" href="/play/797/395381.shtml" rel="2006_797/77045/1.mp3|剃刀边缘|胡彦斌|395381|797|77045|剃刀边缘">剃刀边缘</a></dl></li><li><dl class="singer"><a href="/mlist/24801.shtml" title="1931女子偶像组合歌曲" target="_blank">1931女子偶像组合</a></dl><span>13</span><dl  class="songname"><a  target="m" href="/play/24801/395380.shtml" rel="2006_24801/77044/1.mp3|梦想广州|1931女子偶像组合|395380|24801|77044|梦想广州">梦想广州</a></dl></li><li><dl class="singer"><a href="/mlist/4486.shtml" title="许嵩歌曲" target="_blank">许嵩</a></dl><span>14</span><dl  class="songname"><a  target="m" href="/play/4486/395335.shtml" rel="2006_4486/77006/2.mp3|深夜书店 - 许嵩&洛天依|许嵩|395335|4486|77006|深夜书店">深夜书店</a></dl></li><li><dl class="singer"><a href="/mlist/35049.shtml" title="月光畅想歌曲" target="_blank">月光畅想</a></dl><span>15</span><dl  class="songname"><a  target="m" href="/play/35049/395222.shtml" rel="2006_35049/76961/1.mp3|还是她最美|月光畅想|395222|35049|76961|还是她最美">还是她最美</a></dl></li>
              </ul>
            </div>
          </div>
        </div>
      <div id="leftmiddle">
        <div class="noborder">
          <ul class="title"><span style="float:right;"><a href="/guangchangwu/" rel="nofollow">更多</a></span><a href="/guangchangwu/">广场舞</a></ul>  
          <ul id="gcwList">
		   <li><span class="numberone">1</span><a href="/guangchangwu/gequ/3183.shtml" target="_blank" title="广场舞小苹果">小苹果广场舞</a></li><li><span class="numberone">2</span><a href="/guangchangwu/gequ/2576.shtml" target="_blank" title="瑜伽视频教程初级">瑜伽视频教程初级广场舞</a></li><li><span class="numberone">3</span><a href="/guangchangwu/gequ/1372.shtml" target="_blank" title="广场舞火火的姑娘">火火的姑娘广场舞</a></li><li><span>4</span><a href="/guangchangwu/gequ/3656.shtml" target="_blank" title="广场舞美丽的牧羊姑娘">美丽的牧羊姑娘广场舞</a></li><li><span>5</span><a href="/guangchangwu/gequ/4300.shtml" target="_blank" title="广场舞感觉自己萌萌哒">感觉自己萌萌哒广场舞</a></li><li><span>6</span><a href="/guangchangwu/gequ/9.shtml" target="_blank" title="广场舞最炫民族风">最炫民族风广场舞</a></li><li><span>7</span><a href="/guangchangwu/gequ/4397.shtml" target="_blank" title="广场舞爱情过过招">爱情过过招广场舞</a></li><li><span>8</span><a href="/guangchangwu/gequ/3025.shtml" target="_blank" title="广场舞我的快乐就是想你">我的快乐就是想你广场舞</a></li><li><span>9</span><a href="/guangchangwu/gequ/3412.shtml" target="_blank" title="广场舞你是我的妞">你是我的妞广场舞</a></li><li><span>10</span><a href="/guangchangwu/gequ/856.shtml" target="_blank" title="广场舞今夜舞起来">今夜舞起来广场舞</a></li><li><span>11</span><a href="/guangchangwu/gequ/4245.shtml" target="_blank" title="肚皮舞">肚皮舞广场舞</a></li><li><span>12</span><a href="/guangchangwu/gequ/1261.shtml" target="_blank" title="广场舞爱的奴隶">爱的奴隶广场舞</a></li><li><span>13</span><a href="/guangchangwu/gequ/3729.shtml" target="_blank" title="广场舞江南梦">江南梦广场舞</a></li><li><span>14</span><a href="/guangchangwu/gequ/3877.shtml" target="_blank" title="广场舞辣妈">辣妈广场舞</a></li><li><span>15</span><a href="/guangchangwu/gequ/3578.shtml" target="_blank" title="广场舞老公赚钱老婆花">老公赚钱老婆花广场舞</a></li>
          </ul>
        </div>
        <div id="goodsong">
          <ul class="goodsongtitle">
            <span>首发歌曲/独播歌曲</span>
          </ul>
          <ul class="goodsongcontent">
          <li><span class="num">1</span><dl class="songname"><a href="/mlist/26562.shtml" title="沈梦辰歌曲"  class="u" target="_blank">沈梦辰</a> 首发歌曲 <a href="/play/26562/396159.shtml" target="m">追梦星城</a></dl><span class="time">19小时前</span></li>
<li><span class="num">2</span><dl class="songname"><a href="/mlist/28756.shtml" title="王冠乔歌曲"  class="u" target="_blank">王冠乔</a> 首发歌曲 <a href="/play/28756/396140.shtml" target="m">像石头一样坚强ＤＪ阿远ＲeMix</a></dl><span class="time">19小时前</span></li>
<li><span class="num">3</span><dl class="songname"><a href="/mlist/24801.shtml" title="1931女子偶像组合歌曲"  class="u" target="_blank">1931女子偶像组合</a> 首发歌曲 <a href="/play/24801/396115.shtml" target="m">并肩闪耀</a></dl><span class="time">20小时前</span></li>
<li><span class="num">4</span><dl class="songname"><a href="/mlist/26706.shtml" title="吕晶歌曲"  class="u" target="_blank">吕晶</a> 首发歌曲 <a href="/play/26706/396077.shtml" target="m">味道</a></dl><span class="time">3天前</span></li>
<li><span class="num">5</span><dl class="songname"><a href="/mlist/22297.shtml" title="杨朗朗歌曲"  class="u" target="_blank">杨朗朗</a> 首发歌曲 <a href="/play/22297/395964.shtml" target="m">河溪早安</a></dl><span class="time">5天前</span></li>
<li><span class="num">6</span><dl class="songname"><a href="/mlist/951.shtml" title="薛之谦歌曲"  class="u" target="_blank">薛之谦</a> 首发歌曲 <a href="/play/951/395778.shtml" target="m">动物世界</a></dl><span class="time">1周前</span></li>
<li><span class="num">7</span><dl class="songname"><a href="/mlist/17836.shtml" title="傅松歌曲"  class="u" target="_blank">傅松</a> 首发歌曲 <a href="/play/17836/395776.shtml" target="m">老大</a></dl><span class="time">1周前</span></li>
<li><span class="num">8</span><dl class="songname"><a href="/mlist/35181.shtml" title="HELLO GIRLS歌曲"  class="u" target="_blank">HELLO GIRLS</a> 首发歌曲 <a href="/play/35181/395731.shtml" target="m">小黑屋</a></dl><span class="time">1周前</span></li>
<li><span class="num">9</span><dl class="songname"><a href="/mlist/15707.shtml" title="马頔歌曲"  class="u" target="_blank">马頔</a> 首发歌曲 <a href="/play/15707/395546.shtml" target="m">大雁</a></dl><span class="time">2周前</span></li>
<li><span class="num">10</span><dl class="songname"><a href="/mlist/34733.shtml" title="鲍鹏歌曲"  class="u" target="_blank">鲍鹏</a> 首发歌曲 <a href="/play/34733/395537.shtml" target="m">朋友的圈</a></dl><span class="time">2周前</span></li>
<li><span class="num">11</span><dl class="songname"><a href="/mlist/35123.shtml" title="罗伊歌曲"  class="u" target="_blank">罗伊</a> 首发歌曲 <a href="/play/35123/395528.shtml" target="m">离别的车站</a></dl><span class="time">2周前</span></li>
<li><span class="num">12</span><dl class="songname"><a href="/mlist/10168.shtml" title="戴佳毅歌曲"  class="u" target="_blank">戴佳毅</a> 首发歌曲 <a href="/play/10168/395454.shtml" target="m">我是真的很爱你dj阿远 2017Extended Mix</a></dl><span class="time">2周前</span></li>
<li><span class="num">13</span><dl class="songname"><a href="/mlist/7872.shtml" title="叶贝文歌曲"  class="u" target="_blank">叶贝文</a> 首发歌曲 <a href="/play/7872/395449.shtml" target="m">相爱相守一辈子</a></dl><span class="time">2周前</span></li>
<li><span class="num">14</span><dl class="songname"><a href="/mlist/951.shtml" title="薛之谦歌曲"  class="u" target="_blank">薛之谦</a> 首发歌曲 <a href="/play/951/395447.shtml" target="m">高尚</a></dl><span class="time">2周前</span></li>
<li><span class="num">15</span><dl class="songname"><a href="/mlist/5505.shtml" title="金志文歌曲"  class="u" target="_blank">金志文</a> 首发歌曲 <a href="/play/5505/395408.shtml" target="m">迷途之光</a></dl><span class="time">2周前</span></li>

          </ul>
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
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>1</span><input title=336613 class="check" type="checkbox" name='id' value='2006_18083/48972/1.mp3|青春修炼手册|TFBOYS|336613|18083|48972|青春修炼手册'/><dl class="songname"><a target="m" href="/play/18083/336613.shtml">青春修炼手册</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>2</span><input title=362215 class="check" type="checkbox" name='id' value='2006_18083/60192/1.mp3|大梦想家|TFBOYS|362215|18083|60192|大梦想家'/><dl class="songname"><a target="m" href="/play/18083/362215.shtml">大梦想家</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>3</span><input title=324544 class="check" type="checkbox" name='id' value='2006_18083/44594/1.mp3|魔法城堡|TFBOYS|324544|18083|44594|魔法城堡'/><dl class="songname"><a target="m" href="/play/18083/324544.shtml">魔法城堡</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/19913.shtml" title="谢帝歌曲" target="_blank">谢帝</a></dl>
<span>4</span><input title=373910 class="check" type="checkbox" name='id' value='2006_19913/66439/1.mp3|绝世武神|谢帝|373910|19913|66439|绝世武神'/><dl class="songname"><a target="m" href="/play/19913/373910.shtml">绝世武神</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/866.shtml" title="李晓杰歌曲" target="_blank">李晓杰</a></dl>
<span>5</span><input title=228727 class="check" type="checkbox" name='id' value='2006_866/20834/1.mp3|朋友的酒|李晓杰|228727|866|20834|朋友的酒'/><dl class="songname"><a target="m" href="/play/866/228727.shtml">朋友的酒</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/10203.shtml" title="筷子兄弟歌曲" target="_blank">筷子兄弟</a></dl>
<span>6</span><input title=359236 class="check" type="checkbox" name='id' value='2006_10203/58679/1.mp3|小水果|筷子兄弟|359236|10203|58679|小水果'/><dl class="songname"><a target="m" href="/play/10203/359236.shtml">小水果</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>7</span><input title=344337 class="check" type="checkbox" name='id' value='2006_18083/51903/1.mp3|信仰之名|TFBOYS|344337|18083|51903|信仰之名'/><dl class="songname"><a target="m" href="/play/18083/344337.shtml">信仰之名</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>8</span><input title=309382 class="check" type="checkbox" name='id' value='2006_18083/40028/1.mp3|爱出发|TFBOYS|309382|18083|40028|爱出发'/><dl class="songname"><a target="m" href="/play/18083/309382.shtml">爱出发</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>9</span><input title=359281 class="check" type="checkbox" name='id' value='2006_18083/58701/1.mp3|明天你好|TFBOYS|359281|18083|58701|明天你好'/><dl class="songname"><a target="m" href="/play/18083/359281.shtml">明天你好</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>10</span><input title=340855 class="check" type="checkbox" name='id' value='2006_18083/50506/1.mp3|幸运符号|TFBOYS|340855|18083|50506|幸运符号'/><dl class="songname"><a target="m" href="/play/18083/340855.shtml">幸运符号</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/13957.shtml" title="南征北战歌曲" target="_blank">南征北战</a></dl>
<span>11</span><input title=365198 class="check" type="checkbox" name='id' value='2006_13957/61935/1.mp3|萨瓦迪卡|南征北战|365198|13957|61935|萨瓦迪卡'/><dl class="songname"><a target="m" href="/play/13957/365198.shtml">萨瓦迪卡</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>12</span><input title=362869 class="check" type="checkbox" name='id' value='2006_18083/60550/1.mp3|剩下的盛夏 - TFBOYS&嘻游记|TFBOYS|362869|18083|60550|剩下的盛夏'/><dl class="songname"><a target="m" href="/play/18083/362869.shtml">剩下的盛夏</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/1229.shtml" title="华人群星13歌曲" target="_blank">弦子</a></dl>
<span>13</span><input title=207966 class="check" type="checkbox" name='id' value='2006_7656/18378/18.mp3|舍不得 - 弦子|弦子|207966|7656|18378|舍不得'/><dl class="songname"><a target="m" href="/play/7656/207966.shtml">舍不得</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>14</span><input title=340993 class="check" type="checkbox" name='id' value='2006_18083/50551/1.mp3|快乐环岛|TFBOYS|340993|18083|50551|快乐环岛'/><dl class="songname"><a target="m" href="/play/18083/340993.shtml">快乐环岛</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>15</span><input title=307478 class="check" type="checkbox" name='id' value='2006_18083/39432/1.mp3|heart|TFBOYS|307478|18083|39432|heart'/><dl class="songname"><a target="m" href="/play/18083/307478.shtml">heart</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/30572.shtml" title="MissMass歌曲" target="_blank">MissMass</a></dl>
<span>16</span><input title=374937 class="check" type="checkbox" name='id' value='2006_30572/66969/1.mp3|Wake Up|MissMass|374937|30572|66969|Wake Up'/><dl class="songname"><a target="m" href="/play/30572/374937.shtml">Wake Up</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>17</span><input title=337726 class="check" type="checkbox" name='id' value='2006_18083/49400/1.mp3|为梦想时刻准备着|TFBOYS|337726|18083|49400|为梦想时刻准备着'/><dl class="songname"><a target="m" href="/play/18083/337726.shtml">为梦想时刻准备着</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/7879.shtml" title="王祖蓝歌曲" target="_blank">王祖蓝</a></dl>
<span>18</span><input title=373997 class="check" type="checkbox" name='id' value='2006_7879/66483/1.mp3|brother - 王祖蓝&刘维|王祖蓝|373997|7879|66483|brother'/><dl class="songname"><a target="m" href="/play/7879/373997.shtml">brother</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/23259.shtml" title="张碧晨歌曲" target="_blank">张碧晨</a></dl>
<span>19</span><input title=365016 class="check" type="checkbox" name='id' value='2006_23259/61850/1.mp3|年少轻狂|张碧晨|365016|23259|61850|年少轻狂'/><dl class="songname"><a target="m" href="/play/23259/365016.shtml">年少轻狂</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>20</span><input title=355944 class="check" type="checkbox" name='id' value='2006_18083/56955/1.mp3|样YOUNG|TFBOYS|355944|18083|56955|样YOUNG'/><dl class="songname"><a target="m" href="/play/18083/355944.shtml">样YOUNG</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/8693.shtml" title="王露凝歌曲" target="_blank">王露凝</a></dl>
<span>21</span><input title=256665 class="check" type="checkbox" name='id' value='2006_8693/20956/3.mp3|眼泪的错觉|王露凝|256665|8693|20956|眼泪的错觉'/><dl class="songname"><a target="m" href="/play/8693/256665.shtml">眼泪的错觉</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/18083.shtml" title="TFBOYS歌曲" target="_blank">TFBOYS</a></dl>
<span>22</span><input title=310820 class="check" type="checkbox" name='id' value='2006_18083/40444/1.mp3|梦想起航|TFBOYS|310820|18083|40444|梦想起航'/><dl class="songname"><a target="m" href="/play/18083/310820.shtml">梦想起航</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/20387.shtml" title="刘维歌曲" target="_blank">刘维</a></dl>
<span>23</span><input title=370325 class="check" type="checkbox" name='id' value='2006_20387/64679/1.mp3|因为你是范晓萱|刘维|370325|20387|64679|因为你是范晓萱'/><dl class="songname"><a target="m" href="/play/20387/370325.shtml">因为你是范晓萱</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/25674.shtml" title="苏运莹歌曲" target="_blank">苏运莹</a></dl>
<span>24</span><input title=380628 class="check" type="checkbox" name='id' value='2006_25674/69668/1.mp3|后来|苏运莹|380628|25674|69668|后来'/><dl class="songname"><a target="m" href="/play/25674/380628.shtml">后来</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/5505.shtml" title="金志文歌曲" target="_blank">金志文</a></dl>
<span>25</span><input title=367455 class="check" type="checkbox" name='id' value='2006_5505/63236/1.mp3|尘|金志文|367455|5505|63236|尘'/><dl class="songname"><a target="m" href="/play/5505/367455.shtml">尘</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/1563.shtml" title="水木年华歌曲" target="_blank">水木年华</a></dl>
<span>26</span><input title=364725 class="check" type="checkbox" name='id' value='2006_1563/61630/1.mp3|世界上最美的花|水木年华|364725|1563|61630|世界上最美的花'/><dl class="songname"><a target="m" href="/play/1563/364725.shtml">世界上最美的花</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/5608.shtml" title="萧敬腾歌曲" target="_blank">萧敬腾</a></dl>
<span>27</span><input title=369591 class="check" type="checkbox" name='id' value='2006_5608/64305/1.mp3|我的大学|萧敬腾|369591|5608|64305|我的大学'/><dl class="songname"><a target="m" href="/play/5608/369591.shtml">我的大学</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/993.shtml" title="张杰歌曲" target="_blank">张杰</a></dl>
<span>28</span><input title=342293 class="check" type="checkbox" name='id' value='2006_993/51081/1.mp3|My Sunshine|张杰|342293|993|51081|My Sunshine'/><dl class="songname"><a target="m" href="/play/993/342293.shtml">My Sunshine</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/15162.shtml" title="高姗歌曲" target="_blank">高姗</a></dl>
<span>29</span><input title=350260 class="check" type="checkbox" name='id' value='2006_15162/54427/1.mp3|The Road Not Taken|高姗|350260|15162|54427|The Road Not Taken'/><dl class="songname"><a target="m" href="/play/15162/350260.shtml">The Road Not Taken</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/891.shtml" title="朴树歌曲" target="_blank">朴树</a></dl>
<span>30</span><input title=364328 class="check" type="checkbox" name='id' value='2006_891/61406/1.mp3|好好地|朴树|364328|891|61406|好好地'/><dl class="songname"><a target="m" href="/play/891/364328.shtml">好好地</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/359.shtml" title="钟汉良歌曲" target="_blank">钟汉良</a></dl>
<span>31</span><input title=349724 class="check" type="checkbox" name='id' value='2006_359/30783/10.mp3|何以爱情|钟汉良|349724|359|30783|何以爱情'/><dl class="songname"><a target="m" href="/play/359/349724.shtml">何以爱情</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/11430.shtml" title="崔恕歌曲" target="_blank">崔恕</a></dl>
<span>32</span><input title=372868 class="check" type="checkbox" name='id' value='2006_11430/65900/1.mp3|长安乱 - 崔恕&赵佳霖|崔恕|372868|11430|65900|长安乱'/><dl class="songname"><a target="m" href="/play/11430/372868.shtml">长安乱</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/6026.shtml" title="王铮亮歌曲" target="_blank">王铮亮</a></dl>
<span>33</span><input title=365491 class="check" type="checkbox" name='id' value='2006_6026/62083/1.mp3|相爱一场|王铮亮|365491|6026|62083|相爱一场'/><dl class="songname"><a target="m" href="/play/6026/365491.shtml">相爱一场</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/6540.shtml" title="李易峰歌曲" target="_blank">李易峰</a></dl>
<span>34</span><input title=366270 class="check" type="checkbox" name='id' value='2006_6540/62568/1.mp3|请跟我联络|李易峰|366270|6540|62568|请跟我联络'/><dl class="songname"><a target="m" href="/play/6540/366270.shtml">请跟我联络</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/1086.shtml" title="金池歌曲" target="_blank">金池</a></dl>
<span>35</span><input title=364480 class="check" type="checkbox" name='id' value='2006_1086/61511/1.mp3|反省|金池|364480|1086|61511|反省'/><dl class="songname"><a target="m" href="/play/1086/364480.shtml">反省</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/30342.shtml" title="TVBOYS歌曲" target="_blank">TVBOYS</a></dl>
<span>36</span><input title=371884 class="check" type="checkbox" name='id' value='2006_30342/65366/1.mp3|春水|TVBOYS|371884|30342|65366|春水'/><dl class="songname"><a target="m" href="/play/30342/371884.shtml">春水</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/10913.shtml" title="杨泉歌曲" target="_blank">杨泉</a></dl>
<span>37</span><input title=361494 class="check" type="checkbox" name='id' value='2006_10913/59797/3.mp3|喜欢两个人|杨泉|361494|10913|59797|喜欢两个人'/><dl class="songname"><a target="m" href="/play/10913/361494.shtml">喜欢两个人</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/13957.shtml" title="南征北战歌曲" target="_blank">南征北战</a></dl>
<span>38</span><input title=303606 class="check" type="checkbox" name='id' value='2006_13957/32091/2.mp3|我的天空|南征北战|303606|13957|32091|我的天空'/><dl class="songname"><a target="m" href="/play/13957/303606.shtml">我的天空</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/8399.shtml" title="徐佳莹歌曲" target="_blank">徐佳莹</a></dl>
<span>39</span><input title=370291 class="check" type="checkbox" name='id' value='2006_8399/64662/1.mp3|遗忘之前|徐佳莹|370291|8399|64662|遗忘之前'/><dl class="songname"><a target="m" href="/play/8399/370291.shtml">遗忘之前</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/1192.shtml" title="谭维维歌曲" target="_blank">谭维维</a></dl>
<span>40</span><input title=377013 class="check" type="checkbox" name='id' value='2006_1192/67994/1.mp3|Take My Hand|谭维维|377013|1192|67994|Take My Hand'/><dl class="songname"><a target="m" href="/play/1192/377013.shtml">Take My Hand</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/22200.shtml" title="李明霖歌曲" target="_blank">李明霖</a></dl>
<span>41</span><input title=336806 class="check" type="checkbox" name='id' value='2006_22200/49060/2.mp3|好男娃 - 李明霖&李宏毅|李明霖|336806|22200|49060|好男娃'/><dl class="songname"><a target="m" href="/play/22200/336806.shtml">好男娃</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/24413.shtml" title="孔垂楠歌曲" target="_blank">孔垂楠</a></dl>
<span>42</span><input title=374536 class="check" type="checkbox" name='id' value='2006_24413/66750/1.mp3|遇见东京的雨|孔垂楠|374536|24413|66750|遇见东京的雨'/><dl class="songname"><a target="m" href="/play/24413/374536.shtml">遇见东京的雨</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/221.shtml" title="谭咏麟歌曲" target="_blank">谭咏麟</a></dl>
<span>43</span><input title=368994 class="check" type="checkbox" name='id' value='2006_221/64015/1.mp3|棒棒哒|谭咏麟|368994|221|64015|棒棒哒'/><dl class="songname"><a target="m" href="/play/221/368994.shtml">棒棒哒</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/9357.shtml" title="星弟歌曲" target="_blank">星弟</a></dl>
<span>44</span><input title=306768 class="check" type="checkbox" name='id' value='2006_9357/39184/1.mp3|制造浪漫|星弟|306768|9357|39184|制造浪漫'/><dl class="songname"><a target="m" href="/play/9357/306768.shtml">制造浪漫</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/1086.shtml" title="金池歌曲" target="_blank">金池</a></dl>
<span>45</span><input title=364545 class="check" type="checkbox" name='id' value='2006_1086/60930/4.mp3|Super Girl|金池|364545|1086|60930|Super Girl'/><dl class="songname"><a target="m" href="/play/1086/364545.shtml">Super Girl</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/8074.shtml" title="门丽歌曲" target="_blank">门丽</a></dl>
<span>46</span><input title=262646 class="check" type="checkbox" name='id' value='2006_8074/27122/1.mp3|都是为了爱|门丽|262646|8074|27122|都是为了爱'/><dl class="songname"><a target="m" href="/play/8074/262646.shtml">都是为了爱</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/24801.shtml" title="1931女子偶像组合歌曲" target="_blank">1931女子偶像组合</a></dl>
<span>47</span><input title=374519 class="check" type="checkbox" name='id' value='2006_24801/66737/1.mp3|你要好好的|1931女子偶像组合|374519|24801|66737|你要好好的'/><dl class="songname"><a target="m" href="/play/24801/374519.shtml">你要好好的</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/31205.shtml" title="VAV歌曲" target="_blank">VAV</a></dl>
<span>48</span><input title=376692 class="check" type="checkbox" name='id' value='2006_31205/67815/1.mp3|Brotherhood|VAV|376692|31205|67815|Brotherhood'/><dl class="songname"><a target="m" href="/play/31205/376692.shtml">Brotherhood</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/963.shtml" title="杨坤歌曲" target="_blank">杨坤</a></dl>
<span>49</span><input title=308262 class="check" type="checkbox" name='id' value='2006_963/39669/1.mp3|我没你想的那么坚强|杨坤|308262|963|39669|我没你想的那么坚强'/><dl class="songname"><a target="m" href="/play/963/308262.shtml">我没你想的那么坚强</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/12670.shtml" title="蒋蒋歌曲" target="_blank">蒋蒋</a></dl>
<span>50</span><input title=373430 class="check" type="checkbox" name='id' value='2006_12670/66202/1.mp3|故事1983|蒋蒋|373430|12670|66202|故事1983'/><dl class="songname"><a target="m" href="/play/12670/373430.shtml">故事1983</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/29629.shtml" title="Ume band歌曲" target="_blank">Ume band</a></dl>
<span>51</span><input title=367982 class="check" type="checkbox" name='id' value='2006_29629/63517/1.mp3|Be My Lover|Ume band|367982|29629|63517|Be My Lover'/><dl class="songname"><a target="m" href="/play/29629/367982.shtml">Be My Lover</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/25540.shtml" title="谷亚潼歌曲" target="_blank">谷亚潼</a></dl>
<span>52</span><input title=357997 class="check" type="checkbox" name='id' value='2006_25540/58033/1.mp3|繁星点点|谷亚潼|357997|25540|58033|繁星点点'/><dl class="songname"><a target="m" href="/play/25540/357997.shtml">繁星点点</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/28857.shtml" title="孙祖君歌曲" target="_blank">孙祖君</a></dl>
<span>53</span><input title=364158 class="check" type="checkbox" name='id' value='2006_28857/61324/1.mp3|地心引力|孙祖君|364158|28857|61324|地心引力'/><dl class="songname"><a target="m" href="/play/28857/364158.shtml">地心引力</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/24801.shtml" title="1931女子偶像组合歌曲" target="_blank">1931女子偶像组合</a></dl>
<span>54</span><input title=375025 class="check" type="checkbox" name='id' value='2006_24801/67022/1.mp3|梦想天空|1931女子偶像组合|375025|24801|67022|梦想天空'/><dl class="songname"><a target="m" href="/play/24801/375025.shtml">梦想天空</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/1086.shtml" title="金池歌曲" target="_blank">金池</a></dl>
<span>55</span><input title=363505 class="check" type="checkbox" name='id' value='2006_1086/60930/1.mp3|混账|金池|363505|1086|60930|混账'/><dl class="songname"><a target="m" href="/play/1086/363505.shtml">混账</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/5608.shtml" title="萧敬腾歌曲" target="_blank">萧敬腾</a></dl>
<span>56</span><input title=362006 class="check" type="checkbox" name='id' value='2006_5608/60085/1.mp3|僵尸全明星|萧敬腾|362006|5608|60085|僵尸全明星'/><dl class="songname"><a target="m" href="/play/5608/362006.shtml">僵尸全明星</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/8999.shtml" title="李治廷歌曲" target="_blank">李治廷</a></dl>
<span>57</span><input title=376620 class="check" type="checkbox" name='id' value='2006_8999/67790/1.mp3|绅士作风|李治廷|376620|8999|67790|绅士作风'/><dl class="songname"><a target="m" href="/play/8999/376620.shtml">绅士作风</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/12873.shtml" title="周子琰歌曲" target="_blank">周子琰</a></dl>
<span>58</span><input title=375003 class="check" type="checkbox" name='id' value='2006_12873/67007/1.mp3|爱的微积分|周子琰|375003|12873|67007|爱的微积分'/><dl class="songname"><a target="m" href="/play/12873/375003.shtml">爱的微积分</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/7078.shtml" title="赵照歌曲" target="_blank">赵照</a></dl>
<span>59</span><input title=375552 class="check" type="checkbox" name='id' value='2006_7078/67319/1.mp3|犀安路999号|赵照|375552|7078|67319|犀安路999号'/><dl class="songname"><a target="m" href="/play/7078/375552.shtml">犀安路999号</a></dl></li>
<li>
<dl class="singer"><a href="/mlist/9625.shtml" title="徐良歌曲" target="_blank">徐良</a></dl>
<span>60</span><input title=257391 class="check" type="checkbox" name='id' value='2006_9625/25108/8.mp3|即使说抱歉|徐良|257391|9625|25108|即使说抱歉'/><dl class="songname"><a target="m" href="/play/9625/257391.shtml">即使说抱歉</a></dl></li>

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
        <ul id="menu5">
          <span><a href="/bang/xinge.shtml" target="_blank">最新歌曲</a></span>
        </ul>
        <div id="main5">
          <ul class="musicList">
			  <li><dl class="singer"><a href="/mlist/35234.shtml" title="指甲刀人魔歌曲" target="_blank">指甲刀人魔</a></dl><span>1</span><dl class="songname"><a target="m" href="/play/35234/396231.shtml" rel="2006_35234/77397/2.mp3|指甲刀人魔推广曲(伤心太平洋) - 汪东城|指甲刀人魔|396231|35234|77397|指甲刀人魔推广曲">指甲刀人魔推广曲</a></dl></li><li><dl class="singer"><a href="/mlist/35295.shtml" title="爱情冻住了歌曲" target="_blank">爱情冻住了</a></dl><span>2</span><dl class="songname"><a target="m" href="/play/35295/396230.shtml" rel="2006_35295/77552/1.mp3|爱情冻住了主题曲(宠儿) - 林宥嘉|爱情冻住了|396230|35295|77552|爱情冻住了主题曲">爱情冻住了主题曲</a></dl></li><li><dl class="singer"><a href="/mlist/35294.shtml" title="喜欢你歌曲" target="_blank">喜欢你</a></dl><span>3</span><dl class="songname"><a target="m" href="/play/35294/396229.shtml" rel="2006_35294/77550/2.mp3|喜欢你主题曲|喜欢你|396229|35294|77550|喜欢你主题曲">喜欢你主题曲</a></dl></li><li><dl class="singer"><a href="/mlist/35294.shtml" title="喜欢你歌曲" target="_blank">喜欢你</a></dl><span>4</span><dl class="songname"><a target="m" href="/play/35294/396228.shtml" rel="2006_35294/77550/1.mp3|电影喜欢你主题曲(我喜欢上你时的内心活动) - 陈绮贞|喜欢你|396228|35294|77550|电影喜欢你主题曲">电影喜欢你主题曲</a></dl></li><li><dl class="singer"><a href="/mlist/396.shtml" title="陈绮贞歌曲" target="_blank">陈绮贞</a></dl><span>5</span><dl class="songname"><a target="m" href="/play/396/396227.shtml" rel="2006_396/77551/1.mp3|我喜欢上你时的内心活动|陈绮贞|396227|396|77551|我喜欢上你时的内心活动">我喜欢上你时的内心活动</a></dl></li><li><dl class="singer"><a href="/mlist/35293.shtml" title="择天记电视剧歌曲" target="_blank">择天记电视剧</a></dl><span>6</span><dl class="songname"><a target="m" href="/play/35293/396226.shtml" rel="2006_35293/77548/2.mp3|择天记片尾曲|择天记电视剧|396226|35293|77548|择天记片尾曲">择天记片尾曲</a></dl></li><li><dl class="singer"><a href="/mlist/1270.shtml" title="周笔畅歌曲" target="_blank">周笔畅</a></dl><span>7</span><dl class="songname"><a target="m" href="/play/1270/396225.shtml" rel="2006_1270/77549/1.mp3|注定 - 周笔畅&白举纲|周笔畅|396225|1270|77549|注定">注定</a></dl></li><li><dl class="singer"><a href="/mlist/35293.shtml" title="择天记电视剧歌曲" target="_blank">择天记电视剧</a></dl><span>8</span><dl class="songname"><a target="m" href="/play/35293/396224.shtml" rel="2006_35293/77548/1.mp3|择天记电视剧片尾曲(注定) - 周笔畅&白举纲|择天记电视剧|396224|35293|77548|择天记电视剧片尾曲">择天记电视剧片尾曲</a></dl></li><li><dl class="singer"><a href="/mlist/2166.shtml" title="李玖哲歌曲" target="_blank">李玖哲</a></dl><span>9</span><dl class="songname"><a target="m" href="/play/2166/396223.shtml" rel="2006_2166/77547/1.mp3|真爱无坦途|李玖哲|396223|2166|77547|真爱无坦途">真爱无坦途</a></dl></li><li><dl class="singer"><a href="/mlist/35157.shtml" title="绑架者歌曲" target="_blank">绑架者</a></dl><span>10</span><dl class="songname"><a target="m" href="/play/35157/396222.shtml" rel="2006_35157/77205/2.mp3|绑架者片尾曲(真爱无坦途) - 李玖哲|绑架者|396222|35157|77205|绑架者片尾曲">绑架者片尾曲</a></dl></li><li><dl class="singer"><a href="/mlist/35292.shtml" title="朱盈盈歌曲" target="_blank">朱盈盈</a></dl><span>11</span><dl class="songname"><a target="m" href="/play/35292/396221.shtml" rel="2006_35292/77546/1.mp3|全世界把我遗弃|朱盈盈|396221|35292|77546|全世界把我遗弃">全世界把我遗弃</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>12</span><dl class="songname"><a target="m" href="/play/8671/396220.shtml" rel="2006_8671/77545/10.mp3|犹如新知|孟杨|396220|8671|77545|犹如新知">犹如新知</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>13</span><dl class="songname"><a target="m" href="/play/8671/396219.shtml" rel="2006_8671/77545/9.mp3|忘忧集|孟杨|396219|8671|77545|忘忧集">忘忧集</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>14</span><dl class="songname"><a target="m" href="/play/8671/396218.shtml" rel="2006_8671/77545/8.mp3|伤恨古逸|孟杨|396218|8671|77545|伤恨古逸">伤恨古逸</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>15</span><dl class="songname"><a target="m" href="/play/8671/396217.shtml" rel="2006_8671/77545/7.mp3|情依恋意|孟杨|396217|8671|77545|情依恋意">情依恋意</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>16</span><dl class="songname"><a target="m" href="/play/8671/396216.shtml" rel="2006_8671/77545/6.mp3|念思雨泣|孟杨|396216|8671|77545|念思雨泣">念思雨泣</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>17</span><dl class="songname"><a target="m" href="/play/8671/396215.shtml" rel="2006_8671/77545/5.mp3|梦如幻迹|孟杨|396215|8671|77545|梦如幻迹">梦如幻迹</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>18</span><dl class="songname"><a target="m" href="/play/8671/396214.shtml" rel="2006_8671/77545/4.mp3|记忆点兮|孟杨|396214|8671|77545|记忆点兮">记忆点兮</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>19</span><dl class="songname"><a target="m" href="/play/8671/396213.shtml" rel="2006_8671/77545/3.mp3|孤影怜惜|孟杨|396213|8671|77545|孤影怜惜">孤影怜惜</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>20</span><dl class="songname"><a target="m" href="/play/8671/396212.shtml" rel="2006_8671/77545/2.mp3|冰若语诺|孟杨|396212|8671|77545|冰若语诺">冰若语诺</a></dl></li><li><dl class="singer"><a href="/mlist/8671.shtml" title="孟杨歌曲" target="_blank">孟杨</a></dl><span>21</span><dl class="songname"><a target="m" href="/play/8671/396211.shtml" rel="2006_8671/77545/1.mp3|爱如烟雨|孟杨|396211|8671|77545|爱如烟雨">爱如烟雨</a></dl></li><li><dl class="singer"><a href="/mlist/30454.shtml" title="邵杰歌曲" target="_blank">邵杰</a></dl><span>22</span><dl class="songname"><a target="m" href="/play/30454/396210.shtml" rel="2006_30454/77544/2.mp3|酒太伤Dj小志|邵杰|396210|30454|77544|酒太伤Dj小志">酒太伤Dj小志</a></dl></li><li><dl class="singer"><a href="/mlist/30454.shtml" title="邵杰歌曲" target="_blank">邵杰</a></dl><span>23</span><dl class="songname"><a target="m" href="/play/30454/396209.shtml" rel="2006_30454/77544/1.mp3|酒太伤|邵杰|396209|30454|77544|酒太伤">酒太伤</a></dl></li><li><dl class="singer"><a href="/mlist/13020.shtml" title="刘恺名歌曲" target="_blank">刘恺名</a></dl><span>24</span><dl class="songname"><a target="m" href="/play/13020/396208.shtml" rel="2006_13020/77543/1.mp3|梨花雪|刘恺名|396208|13020|77543|梨花雪">梨花雪</a></dl></li><li><dl class="singer"><a href="/mlist/34266.shtml" title="吴官辉歌曲" target="_blank">吴官辉</a></dl><span>25</span><dl class="songname"><a target="m" href="/play/34266/396207.shtml" rel="2006_34266/77542/1.mp3|有你的季节花最美|吴官辉|396207|34266|77542|有你的季节花最美">有你的季节花最美</a></dl></li><li><dl class="singer"><a href="/mlist/35289.shtml" title="王海州歌曲" target="_blank">王海州</a></dl><span>26</span><dl class="songname"><a target="m" href="/play/35289/396206.shtml" rel="2006_35289/77541/1.mp3|听老婆的话|王海州|396206|35289|77541|听老婆的话">听老婆的话</a></dl></li><li><dl class="singer"><a href="/mlist/23590.shtml" title="万海东歌曲" target="_blank">万海东</a></dl><span>27</span><dl class="songname"><a target="m" href="/play/23590/396205.shtml" rel="2006_23590/77540/1.mp3|带你装逼带你飞|万海东|396205|23590|77540|带你装逼带你飞">带你装逼带你飞</a></dl></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div style="clear:both;"></div>
  <div class="friend">
  <div class="bluetitle02">友情连接 <a href="/about/friend.shtml" target="_blank">交换连接</a></div>
  <div class="linktxt">
    <ul>
      <li><a href="http://www.kugou.com/" target="_blank">酷狗音乐</a></li>
      <li><a href="http://www.baike.com/" target="_blank">互动百科</a></li>
      <li><a href="http://www.xilu.com/" target="_blank">西陆军事</a></li>
      <li><a href="http://www.kuwo.cn/" target="_blank">酷我音乐</a></li>
      <li><a href="http://www.xiazaiba.com/" target="_blank">软件下载</a></li>
      <li><a href="http://www.mtv123.com/" target="_blank">网络歌曲</a></li>
      <li><a href="http://www.manmankan.com/" target="_blank">火影漫画</a></li>
      <li><a href="http://www.yy8844.cn/" target="_blank">Mp3歌曲</a></li>
      <li><a href="http://www.19lou.com/" target="_blank">杭州19楼</a></li>
      <li><a href="http://www.1ting.com/" target="_blank">一听音乐</a></li>
      <li><a href="http://www.xialv.com/" target="_blank">侠侣周边游</a></li>
      <li><a href="http://www.yaolan.com/" target="_blank">摇篮网</a></li>
      <li><a href="http://www.07073.com/" target="_blank">07073网页游戏</a></li>
      <li><a href="http://www.ali213.net/" target="_blank">游侠单机游戏</a></li>
      <li><a href="http://www.yxdown.com/" target="_blank">单机游戏</a></li>
      <li><a href="http://www.ik123.com/" target="_blank">深港dj舞曲</a></li>
      <li><a href="http://www.meishij.net/" target="_blank">美食杰</a></li>
      <li><a href="http://www.ooopic.com/" target="_blank">我图网</a></li>
      <li><a href="http://www.narutom.com" target="_blank">火影忍者中文网</a></li>
      <li><a href="http://www.zongheng.com/" target="_blank">纵横中文网</a></li>
      <li><a href="http://www.doyo.cn/" target="_blank">逗游网</a></li>
      <li><a href="http://www.52pk.com" target="_blank">52PK游戏网</a></li>
      <li><a href="http://www.mafengwo.cn/" target="_blank">蚂蜂窝</a></li>
      <li><a href="http://www.lvmama.com/" target="_blank">驴妈妈旅游网</a></li>
      <li><a href="http://www.eeyy.com/" target="_blank">网页游戏</a></li>
      <li><a href="http://www.9ku.com/" target="_blank">九酷音乐网</a></li>
      <li><a href="http://www.666ccc.com/" target="_blank">今生缘音乐网</a></li>
      <li><a href="http://baike.1688.com/" target="_blank">生意经</a></li>
      <li><a href="http://www.265g.com/" target="_blank">265G网页游戏</a></li>
      <li><a href="http://www.pc6.com/" target="_blank">pc6下载站</a></li>
      <li><a href="http://www.178.com/" target="_blank">178游戏网</a></li>
      <li><a href="http://www.cr173.com/" target="_blank">西西软件园</a></li> 
      <li><a href="http://www.mumayi.com/" target="_blank">木蚂蚁应用市场</a></li>
      <li><a href="http://www.tgbus.com/" target="_blank">电玩巴士</a></li>
      <li><a href="http://www.tianqi.com/" target="_blank">天气预报查询</a></li>
      <li><a href="http://game.3533.com/" target="_blank">手机应用</a></li>       
      <li><a href="http://www.91wan.com/" target="_blank">91wan网页游戏</a></li>
      <li><a href="http://www.33lc.com/" target="_blank">绿茶软件下载</a></li>
      <li><a href="http://news.4399.com/" target="_blank">4399游戏资讯</a></li>
      <li><a href="http://www.newyx.net/" target="_blank">单机游戏下载</a></li>
      <li><a href="http://www.cnmo.com/" target="_blank">手机中国</a></li>
      <li><a href="http://www.hc360.com/" target="_blank">慧聪网</a></li>
      <li><a href="http://www.jia.com/" target="_blank">装修</a></li>
      <li><a href="/about/friend.shtml">更多</a></li>
    </ul>
  </div>
</div>
  <div class="partners">
    <div class="ab">
      <div class="bluetitle02">合作伙伴 <a href="/about/contact.shtml" target="_blank"  rel="nofollow">唱片公司合作</a></div>
      <table cellspacing="0" cellpadding="5" border="0" width="100%">
        <tbody>
          <tr>
            <td><div align="center"><img src="http://zy.yue365.com/images/company.gif"></div></td>
          </tr>
        </tbody>
      </table>
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
		<a href="http://www.yue365.com/" target="_blank">365音乐网</a> 在线音乐门户，分享最新网络歌曲，带给你最好听的新歌 <br />
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