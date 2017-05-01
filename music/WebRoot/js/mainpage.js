
$().ready(function(){
	newSongInit();
	rigthview();
});

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