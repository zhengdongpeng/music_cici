

$().ready(function(){
	newSongInit();
	rigthview();
	middlelist();
	singer();
	initRanking();
	tuijianalbum();
});

function tuijianalbum(){
	$.ajax({
		  url:'albumCollect.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	debugger;
		        $(".tuijian").html("");
		        data=JSON.parse(data);
		        var list =data.list;
		        for (var i=0;i<list.length;i++){
		        	var str = "<li><a target='_blank' class='pic' href='playAlbum.do?id="+list[i].albumId+"'>" +
		        			"<img height='80px' width='80px' src='"+list[i].img+"'></a><div class='ablumname'>"+
		        			"<a target='_blank' class='ablumlink' href='playAlbum.do?id="+list[i].albumId+"'>"+
		        			list[i].aname+"</a></div><a target='_blank' href='singer.do?sid="+list[i].singerId+"'>"+list[i].singername+"</a></li>"
		        			 $(".tuijian").append(str);
		        }
	
		    },
		    error:function(xhr){
		    },
		   
	});
}

function initRanking(){
	$.ajax({
		  url:'rankingData.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	debugger;
		    	//data=JSON.parse(data);
		    	
		        $(".collect").html("");
		     
		        data=JSON.parse(data);
		        createList1(".collect",data.rank);
		        
	
		    },
		    error:function(xhr){
		    },
		   
	});
}
function createList1(clazz,song){
	var len = song.length;
	if(len>20){
		len=20;
	}
	 for(var i=0;i<len;i++){
	$(clazz).append("<li><dl class='songname'> <a target='m' href='playMusic.do?id="+song[i].sid+"' >"+song[i].name+"</a>   </dl> </li>");
	 }
	 }
function singer(){
	$.ajax({
		  url:'rightsinger.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		   
		    success:function(data,textStatus,jqXHR){
		    	debugger;
		        $(".singerpic").html("");
		        $("#Top100").html("");
		        data=JSON.parse(data);
		        /**   <a href="/mlist/18083.shtml">
		         * <img src="http://pic.yue365.com/singer/90/10/18083.jpg" width="90" height="90"/>
		         * </a>
		         */
		        var head=data.head;
		       for(var i=0;i<head.length;i++){
		    	   $(".singerpic").append("<li><a href='singer.do?sid="+head[i].sid+"'> <img src='"+head[i].head+"' width='90' height='90' ></img> </a></li>");
		       }
		       
		       var singer=data.singer;
		       /*
		        * <li><span>1</span><a href="/mlist/18083.shtml">TFBOYS</a></li>
		        */
		       for(var i=0;i<singer.length;i++){
		    	   $("#Top100").append("<li><span>"+(i+1)+"</span>  <a href='singer.do?sid="+singer[i].sid+"'>"+singer[i].sname+"</a></li>");
		       }
		       },
		    error:function(xhr,textStatus){
		    },
		   
	});
}

function middlelist(){
	$.ajax({
		  url:'middlelist.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		   
		    success:function(data,textStatus,jqXHR){
		    	debugger;
		        $("#content1").html("");
		        $("#content2").html("");
		        $("#content3").html("");
		        $("#content4").html("");
		        data=JSON.parse(data);
		        createList("#content1",data.list1);
		        createList("#content2",data.list2);
		        createList("#content3",data.list3);
		        createList("#content4",data.list4);
		       },
		    error:function(xhr,textStatus){
		    },
		   
	});
}

function newSongInit(){
	$.ajax({
		  url:'aaa.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		   
		    success:function(data,textStatus,jqXHR){
		        $(".hotSong").html("");
		        $(".netSong").html("");
		        $(".newsong").html("");
		        data=JSON.parse(data);
		        createList(".hotSong",data.hotsong[0]);
		        createList(".netSong",data.typesong[0]);
		        createList(".newsong",data.ccc_c[0]);
		        
		       },
		    error:function(xhr,textStatus){
		    },
		   
	});
}
function createList(clazz,song){
	 for(var i=0;i<song.length;i++){
     	$(clazz).append("<li> <dl class='singer'> <a href='singer.do?sid="+song[i].si_id+"' title="+song[i].singername+"target='_blank'>"+song[i].singername+"</a></dl>"
     			+"<span class='"+((i+1)<=3?"numbertwo":"num")+"'>"+(i+1)+"</span>"+"<dl class='songname'> <a target='m' href='playMusic.do?id="+song[i].sid+"' >"+song[i].name+"</a>   </dl> </li>");
     }
}


function rigthview(){
	var type=1;
	if(islogin=='true'){
		tyep=2;
	}else if(islogin=='false'){
		type=1;
	}
		debugger;
		$.ajax({
			  url:'rightview.do',
			    type:'POST', //GET
			    async:true,    //��false,�Ƿ��첽
			    data:{
			    	type:type
			    },
			    timeout:5000,    //��ʱʱ��
			    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
			   
			    success:function(data,textStatus,jqXHR){
			        debugger;
			        $(".musicList").html("");
			        data=JSON.parse(data);
			        createList(".musicList",data.recommend[0]);
			       },
			    error:function(xhr,textStatus){
			    	alert(0)
			    },
			   
		});
	
}