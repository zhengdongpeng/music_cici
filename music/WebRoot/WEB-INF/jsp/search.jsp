<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.cici.music.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String type = (String)request.getAttribute("type");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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
.albumul ul{
width:900px;
}
ul li{
width:20%;float:left;
}
 
 </style>
</head>
<body >
<div id="wrapper">
<div>
 <jsp:include page="head.jsp"></jsp:include>

</div>
 <div id="div1">
      <div>搜索"<font id="kw" size="10px"><%=request.getAttribute("value") %></font>" 约<font size="10px" id="outCount" color="red"><%=request.getAttribute("size") %></font>项结果</div>
    <% 
    if("song".equals(type)) {
    List<Song> list = (List<Song> )request.getAttribute("list");%>
    <table>
     <thead>
    <tr>
     <td width="200px">歌曲名</td>
     <td width="300px">歌手</td>
     <td width="300px">专辑</td>
     <td width="100px">试听</td>
     </tr>
    </thead>
     <tbody class="listtable">
     
  <%  for(Song s : list){ 
    %>
      <tr class="data" >

      	<td class="songname" width="200px">
      		<a href="playMusic.do?id=<%=s.getSid() %>" target="_blank">
      		<%=s.getSname() %></a>
      	</td>
      	<td class="singer" width="300px">
      		<%=s.getSongerName() %>
      	</td>
      	<td class="ablum" width="300px">
      	<% if(!"".equals(s.getZjName()) && ! (null== s.getZjName())){%>
      		<a href="playMusic.do?id=<%=s.getZjid()%>"  target="_blank"><%=s.getZjName() %></a>
      	<%} %>
      	</td>
      	      	<td class="operation" width="100px">
      		<a class="listen" href="playMusic.do?id=<%=s.getSid() %>" title="试听歌曲"><img  src="images/college.png"></a>
      	</td>
      </tr>
     <%} %>
     </tbody>
      </table>
      <%}else if("singer".equals(type)){
    	 List<Singer> list = (List<Singer> )request.getAttribute("list");
     %>
      <ul id="SingerList" class="albumul">
      <% for(Singer s : list){%>
      <li>
       <div align="center">
      <a href="" target="_blank">
      <img src="<%=s.getHead()  %>" height="120px",width="120px"></a>
      <br><a href="" target="_blank">
      <%=s.getSname() %></a>
      </div>
      </li>
     <%}%>
      </ul>
     
     <% } else if("album".equals(type)){
    	 List<Album> list = (List<Album> )request.getAttribute("list");
     %>
     <div>
      <ul id="albumul" class="albumul">
      <% for(Album s : list){%>
      <li>
      <div align="center">
      <a href="" target="_blank">
      <img src="<%=s.getImg() %>" height="120px",width="120px"></a>
      <br><a href="" target="_blank">
      <%=s.getAname() %></a>
      </div>
      </li>
     
     <%}
      } %>
       </ul>
      </div>
 </div>
 <div class="PageList">

 <% int count=Integer.parseInt(request.getAttribute("size").toString());
 int num=0;
 if(count%3==0){
	 num=count/3;
 }else{
	 num=count/3+1;
 }
 %>
<div class="page" style="width:500px;"></div>
 </div>
</div>
</body>
</html>
<script>
var value='<%=request.getAttribute("value") %>';
var first=0;
var type='<%=type%>';
$('.page').createPage(function(n){
	first++;
	if(first>1)
		setPager(n,value,type);
},{
	pageCount:<%=num%>,//总页码,默认10
	
});
</script>