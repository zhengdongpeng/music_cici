function toSearch(){
	var value = $("#KeyWords").val();
	var type = $('#searchradio input[name="type"]:checked ').val();
	if(value==""){
		return;
	}
	
	window.location.href="search.do?value="+value+"&type="+type;
}

function setPager(n,val,type){
	debugger;
	$.ajax({
		  url:'searchlist.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		       pager:n-1,
		       val:val,
		       type:type
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		   
		    success:function(data){
		        data=JSON.parse(data);
		        if(type=="song"){
		        	$(".listtable").html("");
		        	var list = data.list;
		        	 for(var i=0;i<list.length;i++){
		        		 var 
				    	 str="<tr><td  width='200px'><a href='playMusic.do?id="+list[i].sid+"target='_blank'>"
				    			   +list[i].sname+"</a> </td><td  width='300px'>"+list[i].songerName+"</td>"
				    			   +"<td  width='300px'>";
				    	   if(!list[i].zjName==null && !list[i].zjname==""){
				    		  str=str+"<a href='playMusic.do?id="+list[i].zjid+"'target='_blank'>"
				    				  +"</a>" ;
				    	   }
				    	   str=str+"</td><td  width='100px'><a class='listen' href='playMusic.do?id="+list[i].sid+
				    			   " ><img  src='images/college.png'/></a></td></tr>";
				    	   $(".listtable").append(str);
		        	 }
		        }else if(type=="album"){
		        	 $("#albumul").html("");
		        	var list = data.list;
		        	 for(var i=0;i<list.length;i++){
		        		 var str="<li>  <div align='center'> <a href=''target='_blank'><img src='";
		        		 str=str+list[i].img+"'height='120px',width='120px'></a><br><a href='' target='_blank'>";
		        		 str=str+list[i].aname+"</a></div></div>"
		        		 $("#albumul").append(str);
		        	 }
		        }else if(type=="singer"){
		        	$("#SingerList").html("");
		        	var list = data.list;
		        	 for(var i=0;i<list.length;i++){
		        		 var str="<li>  <div align='center'> <a href=''target='_blank'><img src='";
		        		 str=str+list[i].head+"'height='120px',width='120px'></a><br><a href='' target='_blank'>";
		        		 str=str+list[i].sname+"</a></div></div>"
		        		 $("#SingerList").append(str);
		        	 }
		        }
		        
		        
		        var head=data.head;
		       for(var i=0;i<head.length;i++){
		    	   $(".singerpic").append("<a href='"+data.url+"?id="+head[i].sid+"'> <img src='"+head[i].head+"' width='90' height='90' ></img> </a>");
		       }
		       
		       var singer=data.singer;
		       /*
		        * <li><span>1</span><a href="/mlist/18083.shtml">TFBOYS</a></li>
		        */
		       for(var i=0;i<singer.length;i++){
		    	   $("#Top100").append("<li><span>'"+i+"'</span>  <a href='"+data.url+"?id="+singer[i].sid+"'>"+singer[i].sname+"</a></li>");
		       }
		       },
		    error:function(xhr,textStatus){
		    },
		   
	});
}