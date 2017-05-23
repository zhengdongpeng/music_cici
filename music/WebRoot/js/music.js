	function initSingerSong(id){
		ajaxSinger(id,1);
	}
	function initSingerAlbum(id){
		ajaxSinger(id,2);
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
			        $(".hot1").html("");
			        $(".new").html("");
			        data=JSON.parse(data);
			        createList(".collect",data.rank);
			        createList(".hot1",data.hot);
			        createList(".new",data.news);
			    },
			    error:function(xhr){
			    },
			   
		});
	}
	function createList(clazz,song){
		 for(var i=0;i<song.length;i++){
	     	$(clazz).append("<tr width='100%' height='30px'> <td><span class='"+((i+1)<=3?"numbertwo":"span1")+"'>"+(i+1)+"</span></td>"+
	     			" <td  width='144px'><a  target='m' href='playMusic.do?id="+song[i].sid+"' >"+song[i].name+"</a> </td>"
	     			+" <td width='20%'> <a  href='singer.do?sid="+song[i].si_id+"' title="+song[i].singername+"target='_blank'>"+song[i].singername+"</a></td>" +
	     					""
	     			);
	     }
	}
	function createSingerSong(data,t,id){
		var list = data.list;
		debugger;
		if(t==3){
			$(".data-div").html("");
			$(".data-div").append("<div class='div-c'><div><img src='images/song.png' width='78' height='128' /><span>全部歌曲</span><a href='singer.do?sid="+id+"'>点击返回</a></div>" +
					"<div ><ul class='ul-song'></ul></div></div>");
		}
		$(".ul-song").html("");
		for(var i=0;i<list.length;i++){
			$(".ul-song").append("<li style='width:20%;height: 40px;'><a href='playMusic.do?id="+list[i].sid
			+"'>"+list[i].sname+"</a></li>");
		}
	}
	
	function setAlbumPager(n){
		$.ajax({
			  url:'albumListData.do',
			    type:'POST', //GET
			    async:true,    //��false,�Ƿ��첽
			    data:{
			     n:n-1
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
			    		$(".albumul").html("");
			    		var list = data.list;
			    		for(var i=0;i<list.length;i++){
			    			var newDate = new Date();
			    			newDate.setTime(list[i].fbtime );
			    			var str="<li><div class='li-div1'><a href='playAlbum.do?id="+list[i].albumId
			    			+"'><img src='"+list[i].img+"' width='120' height='120' /></a>";
			    			str=str+"</div><div class='li-div1'><p>专辑："+list[i].aname+"</p><p>发行公司："+list[i].fxgs+"</p><p>时间："
			    			+newDate.toLocaleDateString()+"</p></div></li>";
			    			$(".albumul").append(str);
			    		}
			    	}
			    },
			    error:function(xhr){
			    },
			   
		});
	}
	
	function createSingerAlbum(data,t,id){
		var list = data.list;
		debugger;
		if(t==4){
			$(".data-div").html("");
			$(".data-div").append("<div class='div-b'><div><img src='images/album.png' width='78' height='128' /><span>全部专辑</span><a href='singer.do?sid="+id+"'>点击返回</a></div>" +
					"<div class='div-e'><ul id='albumul' class='albumul'></ul></div></div>");
		}
		$(".albumul").html("");
		for(var i=0;i<list.length;i++){
			var newDate = new Date();
			newDate.setTime(list[i].fbtime );
			var str="<li><div class='li-div1'><a href='playAlbum.do?id="+list[i].albumId
			+"'><img src='"+list[i].img+"' width='120' height='120' /></a>";
			str=str+"</div><div class='li-div1'><p>专辑："+list[i].aname+"</p><p>发行公司："+list[i].fxgs+"</p><p>时间："
			+newDate.toLocaleDateString()+"</p></div></li>";
			$(".albumul").append(str);
		}
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
			    			createSingerSong(data,t,id);
			    			return;
			    		}else if(t==2){
			    			createSingerAlbum(data,t,id);
			    		}else if(t==3){
			    			createSingerSong(data,t,id);
			    			return;
			    		}else if(t==4){
			    			createSingerAlbum(data,t,id);
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