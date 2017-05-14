	function initSingerSong(id){
		ajaxSinger(id,1);
	}
	function initSingerAlbum(id){
		ajaxSinger(id,2);
	}
	
	function createSingerSong(data){
		
	}
	
	function ajaxSinger(id,t){
		$.ajax({
			  url:'singerdata.do',
			    type:'POST', //GET
			    async:true,    //��false,�Ƿ��첽
			    data:{
			       id:id,
			       type:t
			    },
			    timeout:5000,    //��ʱʱ��
			    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
			    success:function(data){
			    	debugger;
			    	data=JSON.parse(data);
			    	if(data.stats=='error'){
			    		window.location.href="index.do";
			    		return;
			    	}
			    	if(data.stats=='success'){
			    		if(t==1){
			    			createSingerSong(data);
			    			return;
			    		}
			    		
			    		
			    		var list = data.list;
			    		$(".musicList").html("");
			    		for(var i=0 ; i< list.length; i++){
			    			var newDate = new Date();
			    			newDate.setTime(list[i].fbtime );
			    			var str="<tr><td  class='musiclist'><a  href='playMusic.do?id="+list[i].sid+"'><div class='div-img'>" +
			    					"<img src='"+list[i].img+"' width='40px' height='40px'/></div><span>"+
			    			list[i].sname+"</span>------------------------------------<span>发布时间：";
			    			str=str+newDate.toLocaleDateString()+"</span><span>歌曲类型:"+list[i].typeName+"</span></a></td></tr>";
			    			$(".musicList").append(str);
			    		}
			    		
			    		return;
			    	}
			    },
			    error:function(xhr){
			    },
			   
		});
	}
	
	
function initSong(id){
	$.ajax({
		  url:'musicList.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       id:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		window.location.href="index.do";
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		var list = data.list;
		    		$(".musicList").html("");
		    		for(var i=0 ; i< list.length; i++){
		    			var newDate = new Date();
		    			newDate.setTime(list[i].fbtime );
		    			var str="<tr><td  class='musiclist'><a  href='playMusic.do?id="+list[i].sid+"'><div class='div-img'>" +
		    					"<img src='"+list[i].img+"' width='40px' height='40px'/></div><span>"+
		    			list[i].sname+"</span>------------------------------------<span>发布时间：";
		    			str=str+newDate.toLocaleDateString()+"</span><span>歌曲类型:"+list[i].typeName+"</span></a></td></tr>";
		    			$(".musicList").append(str);
		    		}
		    		
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}


function shoucangAlbum(id){
	$.ajax({
		  url:'collect.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       type:2,
		       id:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		window.location.href=data.url;
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		$(".shoucang1").html("已经收藏");
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}


function shoucang(id){
	$.ajax({
		  url:'collect.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       type:1,
		       id:id
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		    success:function(data){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		window.location.href=data.url;
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		$(".shoucang1").html("已经收藏");
		    		return;
		    	}
		    },
		    error:function(xhr){
		    },
		   
	});
}