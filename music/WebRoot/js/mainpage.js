
$().ready(function(){
	newSongInit();
	rigthview();
	middlelist();
	singer();
});

function singer(){
	$.ajax({
		  url:'rightsinger',
		    type:'POST', //GET
		    async:true,    //或false,是否异步
		    data:{
		       
		    },
		    timeout:5000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		   
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
		    	   $(".singerpic").append("<a href='"+data.url+"?sid="+head[i].sid+"'> <img src='"+head[i].head+"' width='90' height='90' ></img> </a>");
		       }
		       
		       var singer=data.singer;
		       /*
		        * <li><span>1</span><a href="/mlist/18083.shtml">TFBOYS</a></li>
		        */
		       for(var i=0;i<singer.length;i++){
		    	   $("#Top100").append("<li><span>'"+i+"'</span>  <a href='"+data.url+"?sid="+singer[i].sid+"'>"+singer[i].sname+"</a></li>");
		       }
		       },
		    error:function(xhr,textStatus){
		    },
		   
	});
}

function middlelist(){
	$.ajax({
		  url:'middlelist',
		    type:'POST', //GET
		    async:true,    //或false,是否异步
		    data:{
		       
		    },
		    timeout:5000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		   
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
		  url:'aaa',
		    type:'POST', //GET
		    async:true,    //或false,是否异步
		    data:{
		       
		    },
		    timeout:5000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		   
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
     	$(clazz).append("<li> <dl class='singer'> <a href='' title="+song[i].singername+"target='_blank'>"+song[i].singername+"</a></dl>"
     			+"<span class='"+((i+1)<=3?"numbertwo":"num")+"'>"+(i+1)+"</span>"+"<dl class='songname'> <a target='m' href='"+song[i].url+"' >"+song[i].name+"</a>   </dl> </li>");
     }
}


function rigthview(){
	if(islogin=='true'){
		
	}else if(islogin=='false'){
		debugger;
		$.ajax({
			  url:'rightview',
			    type:'POST', //GET
			    async:true,    //或false,是否异步
			    data:{
			    },
			    timeout:5000,    //超时时间
			    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
			   
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
}