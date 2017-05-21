
<%@ page language="java" contentType="text/html; charset=utf-8"	   pageEncoding="utf-8" import="java.util.*,com.cici.music.contans.*,com.cici.music.pojo.*"%>
    <%  Map<Integer,Integer> typenum =(Map<Integer,Integer>) request.getAttribute("typenum"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <jsp:include page="head.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>tab标签</title>
  <link type="text/css" rel="stylesheet" href="365_files/newindex.css"/>
<link type="text/css" rel="stylesheet" href="365_files/header.css?v=0907"/>
  <link href="css/stylet.css" type="text/css" rel="stylesheet" >
<link type="text/css" rel="stylesheet" href="css/common.css"/>
<script type="text/javascript" src="365_files/jquery.js"></script>
<script type="text/javascript" src="365_files/common.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/jquery.page.js"></script>
  <style type="text/css">a:link {color: #00000;!important;}</style>
</head>
<body background="images/typebg.jpg">
<div id="wrapper">


  <div class="tab-contain">
    <!-- tab栏 -->
    <ul id="tabs">
      <li class="current"><a href="#" title="tab1"  class="a-t">民谣</a></li>
      <li><a href="#" title="tab2"  class="a-t">古典音乐</a></li>
      <li><a href="#" title="tab3" class="a-t">影视金曲</a></li>
      <li><a href="#" title="tab4" class="a-t">网络金曲</a></li>
      <li><a href="#" title="tab5" class="a-t">摇滚金曲</a></li>
      <li><a href="#" title="tab6" class="a-t">流行金曲</a></li>
      <li><a href="#" title="tab7" class="a-t">情歌对唱</a></li>
      <li><a href="#" title="tab8" class="a-t">草原金曲</a></li>
    </ul>
    <!-- 对应显示内容 -->
    <div id="content">
      <div id="tab1" class="item show">
         <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_1">
        </tbody>
        </table>
        <div class="page1" style="width:500px;margin-top:50px"></div>
        </div>
      <div id="tab2" class="item">
    	  <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_2">
        </tbody>
        </table>
			<div class="page2" style="width:500px;margin-top:50px"></div>
      </div>
      <div id="tab3" class="item">
         <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_3">
        </tbody>
        </table>
   
			<div class="page3" style="width:500px;margin-top:50px"></div>
      </div>
       <div id="tab4" class="item">
       
     <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_4">
        </tbody>
        </table>
			<div class="page4" style="width:500px;margin-top:50px"></div>
      </div>
       <div id="tab5" class="item">
       
     <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_5">
        </tbody>
        </table>
			<div class="page5" style="width:500px;margin-top:50px"></div>
      </div>
       <div id="tab6" class="item">
       
     <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_6">
        </tbody>
        </table>
			<div class="page6" style="width:500px;margin-top:50px"></div>
      </div>
       <div id="tab7" class="item">
       
     <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_7">
        </tbody>
        </table>
				<div class="page7" style="width:500px;margin-top:50px"></div>
      </div>
       <div id="tab8" class="item">
         <table width="900" >
                   <thead>
          <tr class="thead">
            <td width="261">歌曲名</td>
            <td width="226">歌手</td>
            <td width="236">专辑</td>
            <td width="268">试听</td>
          </tr>
          </thead>
           <tbody class="table_8">
           
        </tbody>
        </table>
   
			<div class="page8" style="width:500px;margin-top:50px"></div>
      </div>
      </div>
 </div>
 </div>
 

  <script type="text/javascript" src="js/js.js"></script>
</body>
</html>
<script type="text/javascript">
$('.page1').createPage(function(n){
		setSingerPager(n,1);
},{
	pageCount:<%=(typenum.containsKey(1)?(Integer)(typenum.get(1)):0) %>,
});
$('.page2').createPage(function(n){
	setSingerPager(n,2);
},{
pageCount:<%=(typenum.containsKey(2)?(Integer)(typenum.get(2)):0) %>,//总页码,默认10
});
$('.page3').createPage(function(n){
		setSingerPager(n,3);
},{
	pageCount:<%=(typenum.containsKey(3)?(Integer)(typenum.get(3)):0) %>,//总页码,默认10
});
$('.page4').createPage(function(n){
		setSingerPager(n,4);
},{
	pageCount:<%=(typenum.containsKey(4)?(Integer)(typenum.get(4)):0) %>,//总页码,默认10
});
$('.page5').createPage(function(n){
		setSingerPager(n,5);
},{
	pageCount:<%=(typenum.containsKey(5)?(Integer)(typenum.get(5)):0) %>,//总页码,默认10
});
$('.page6').createPage(function(n){
		setSingerPager(n,6);
},{
	pageCount:<%=(typenum.containsKey(6)?(Integer)(typenum.get(6)):0) %>,//总页码,默认10
});
$('.page7').createPage(function(n){
		setSingerPager(n,7);
},{
	pageCount:<%=(typenum.containsKey(7)?(Integer)(typenum.get(7)):0) %>,//总页码,默认10
});
$('.page8').createPage(function(n){
		setSingerPager(n,8);
},{
	pageCount:<%=(typenum.containsKey(8)?(Integer)(typenum.get(8)):0) %>,//总页码,默认10
});
debugger;

function setSingerPager(n,type){
	$.ajax({
		  url:'clasifySong.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		     n:n-1,
		     type:type
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	data=JSON.parse(data);
		    	debugger;
		    	if(data.stats=='error'){
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		var clazz=".table_"+type;
		    		$(clazz).html("");
		    		var list = data.list;
		    		for(var i=0;i<list.length;i++){
		    			var str="<tr class='datahang' height='30px'><td><a href='playMusic.do?id="+list[i].sid
		    			+"'\>"+list[i].sname+"</td><td>"+list[i].songerName+"</td><td>"+(list[i].zjName?list[i].zjName:"")+"</td><td><a href='playMusic.do?id="+list[i].sid
		    			+"'><img  src='images/player.png' /></a></td></tr>";
		    			$(clazz).append(str);
		    		}
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}
</script>
