$().ready(function(){
});

function modifyPassword(){
	var pass = $(".pass").val();
	var pass1 = $(".pass1").val();
	var yanzhengma = $(".yanzheng2").val();
	if(pass==""){
		alert("密码不能为空");
		return;
	}
	if(pass1==""){
		alert("确认密码不能为空");
		return;
	}
	if(yanzhengma==""){
		alert("验证码不能为空");
		return;
	}
	if(pass!=pass1){
		alert("密码和确认密码不一致");
		return;
	}
	
	$.ajax({
		  url:'modifyPassword.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		    	password:pass,
		    	yanzhengma:yanzhengma
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		   
		    success:function(data,textStatus,jqXHR){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		alert(data.error);
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		$(".yanzhengma").val("");
		    		$(".pass").val("");
		    	 $(".pass1").val("");
		    		alert(data.success);
		    		return;
		    	}
		    	
		      },
		    error:function(xhr,textStatus){
		    },
		   
	});
	
}

function modifyUser(){
	var input1 = $(".input1").val();
	var uname = $(".uname").val();
	var city = $(".city").val();
	var yanzhengma = $(".yanzhengma").val();
	var sex = $('input[name="sex"]:checked').val();
	debugger;
	console.log(sex);
	if(uname==""){
		alert("用户名不能为空");
		return;
	}
	
	if(!yanzhengma){
		alert("验证码不能为空");
		return;
	}
	
	
	$.ajax({
		  url:'modifyUser.do',
		    type:'POST', //GET
		    async:true,    //��false,�Ƿ��첽
		    data:{
		    	input1:input1,
		    	city:city,
		    	yanzhengma:yanzhengma,
		    	sex:sex,
		       uname:uname
		    },
		    timeout:5000,    //��ʱʱ��
		    dataType:'json',    //���ص���ݸ�ʽ��json/xml/html/script/jsonp/text
		   
		    success:function(data,textStatus,jqXHR){
		    	debugger;
		    	data=JSON.parse(data);
		    	if(data.stats=='error'){
		    		alert(data.error);
		    		return;
		    	}
		    	if(data.stats=='success'){
		    		$(".yanzhengma").val("");
		    		alert(data.success);
		    		return;
		    	}
		    	
		      },
		    error:function(xhr,textStatus){
		    },
		   
	});
}