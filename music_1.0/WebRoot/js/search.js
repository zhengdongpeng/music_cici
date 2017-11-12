function toSearch(){
	debugger;
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
		    	debugger;
		        data=JSON.parse(data);
		        if(type=="song"){
		        	$(".listtable").html("");
		        	var list = data.list;
		        	 for(var i=0;i<list.length;i++){
		        		 debugger;
		        		 ////SearthText=SearthText.replace('关键字','<font color=red>关键字</font>')
		        		 var song = list[i].sname;
		        		 song=song.replace(val,'<font color=#FF00FF>'+val+'</font>');
		        		 var 
				    	 str="<tr><td  ><a href='playMusic.do?id="+list[i].sid+"target='_blank'>"
				    			   +song+"</a> </td><td >"+list[i].songerName+"</td>"
				    			   +"<td  >";
				    	   if(list[i].zjName){
				    		  str=str+"<a href='playMusic.do?id="+list[i].zjid+"'target='_blank'>"
				    				  +list[i].zjName+"</a>" ;
				    	   }
				    	   str=str+"</td><td  ><a class='listen' href='playMusic.do?id="+list[i].sid+
				    			   "' ><img  src='images/college.png'/></a></td></tr>";
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
		        
		       },
		    error:function(xhr,textStatus){
		    },
		   
	});
}