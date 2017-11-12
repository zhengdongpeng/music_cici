(function ($) {
    $.fn.jqm = function (o) {
        var p = {
            overlay: 50,
            overlayClass: 'jqmOverlay',
            closeClass: 'jqmClose',
            trigger: '.jqModal',
            ajax: F,
            ajaxText: '',
            target: F,
            modal: F,
            toTop: F,
            onShow: F,
            onHide: F,
            onLoad: F
        };
        return this.each(function () {
            if (this._jqm) return H[this._jqm].c = $.extend({}, H[this._jqm].c, o);
            s++;
            this._jqm = s;
            H[s] = {
                c: $.extend(p, $.jqm.params, o),
                a: F,
                w: $(this).addClass('jqmID' + s),
                s: s
            };
            if (p.trigger) $(this).jqmAddTrigger(p.trigger);
        });
    };

    $.fn.jqmAddClose = function (e) {
        return hs(this, e, 'jqmHide');
    };
    $.fn.jqmAddTrigger = function (e) {
        return hs(this, e, 'jqmShow');
    };
    $.fn.jqmShow = function (t) {
        return this.each(function () {
            t = t || window.event;
            $.jqm.open(this._jqm, t);
        });
    };
    $.fn.jqmHide = function (t) {
        return this.each(function () {
            t = t || window.event;
            $.jqm.close(this._jqm, t)
        });
    };

    $.jqm = {
        hash: {},
        open: function (s, t) {
            var h = H[s],
                c = h.c,
                cc = '.' + c.closeClass,
                z = (parseInt(h.w.css('z-index'))),
                z = (z > 0) ? z : 3000,
                o = $('<div></div>').css({
                    height: '100%',
                    width: '100%',
                    position: 'fixed',
                    left: 0,
                    top: 0,
                    'z-index': z - 1,
                    opacity: c.overlay / 100
                });
            if (h.a) return F;
            h.t = t;
            h.a = true;
            h.w.css('z-index', z);
            if (c.modal) {
                if (!A[0]) L('bind');
                A.push(s);
            } else if (c.overlay > 0) h.w.jqmAddClose(o);
            else o = F;

            h.o = (o) ? o.addClass(c.overlayClass).prependTo('body') : F;
            if (ie6) {
                $('html,body').css({
                    height: '100%',
                    width: '100%'
                });
                if (o) {
                    o = o.css({
                        position: 'absolute'
                    })[0];
                    for (var y in {
                        Top: 1,
                        Left: 1
                    }) o.style.setExpression(y.toLowerCase(), "(_=(document.documentElement.scroll" + y + " || document.body.scroll" + y + "))+'px'");
                }
            }

            if (c.ajax) {
                var r = c.target || h.w,
                    u = c.ajax,
                    r = (typeof r == 'string') ? $(r, h.w) : $(r),
                    u = (u.substr(0, 1) == '@') ? $(t).attr(u.substring(1)) : u;
                r.html(c.ajaxText).load(u, function () {
                    if (c.onLoad) c.onLoad.call(this, h);
                    if (cc) h.w.jqmAddClose($(cc, h.w));
                    e(h);
                });
            } else if (cc) h.w.jqmAddClose($(cc, h.w));

            if (c.toTop && h.o) h.w.before('<span id="jqmP' + h.w[0]._jqm + '"></span>').insertAfter(h.o);
            (c.onShow) ? c.onShow(h) : h.w.show();
            e(h);
            return F;
        },
        close: function (s) {
            var h = H[s];
            if (!h.a) return F;
            h.a = F;
            if (A[0]) {
                A.pop();
                if (!A[0]) L('unbind');
            }
            if (h.c.toTop && h.o) $('#jqmP' + h.w[0]._jqm).after(h.w).remove();
            if (h.c.onHide) h.c.onHide(h);
            else {
                h.w.hide();
                if (h.o) h.o.remove();
            }
            return F;
        },
        params: {}
    };
    var s = 0,
        H = $.jqm.hash,
        A = [],
        ie6 = $.browser.msie && ($.browser.version == "6.0"),
        F = false,
        i = $('<iframe src="javascript:false;document.write(\'\');" class="jqm"></iframe>').css({
            opacity: 0
        }),
        e = function (h) {
            if (ie6) if (h.o) h.o.html('<p style="width:100%;height:100%"/>').prepend(i);
            else if (!$('iframe.jqm', h.w)[0]) h.w.prepend(i);
            f(h);
        },
        f = function (h) {
            try {
                $(':input:visible', h.w)[0].focus();
            } catch (_) {}
        },
        L = function (t) {
            $()[t]("keypress", m)[t]("keydown", m)[t]("mousedown", m);
        },
        m = function (e) {
            var h = H[A[A.length - 1]],
                r = (!$(e.target).parents('.jqmID' + h.s)[0]);
            if (r) f(h);
            return !r;
        },
        hs = function (w, t, c) {
            return w.each(function () {
                var s = this._jqm;
                $(t).each(function () {
                    if (!this[c]) {
                        this[c] = [];
                        $(this).click(function () {
                            for (var i in {
                                jqmShow: 1,
                                jqmHide: 1
                            }) for (var s in this[i]) if (H[this[i][s]]) H[this[i][s]].w[i](this);
                            return F;
                        });
                    }
                    this[c].push(s);
                });
            });
        };
})(jQuery);

thisdomain="my.yue365.com"

function SetCookie(name, value) //����������һ����cookie�����ӣ�һ����ֵ 
{
    var Days = 30; //�� cookie �������� 30 �� 
    var exp = new Date(); //new Date("December 31, 9998"); 
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}

function getCookie(name) //ȡcookies����    
{
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]);
    return null;

}

function delCookie(name) //ɾ��cookie 
{
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}



//ajax������

function showAjaxDialog(url, target, ajaxText) {


//    showAjaxDialogActive(url);
//    return;
	showAjaxDialog2(url,target,ajaxText);
	
///*	return;
//	alert(222);


}


function showAjaxDialogActive(url,title, target, ajaxText) {

    var showTitle = title || "��������"
    setDialogTitle(showTitle);
    if (!target) target = "div.dialogContent";
    if (!ajaxText) ajaxText = '<div class="dialogContent"><p class="loading">��Ϊ���ڴ�������, ���Ժ�...</p></div><a href="javascript:;" title="" onclick="closedialog();" class="Closeit">�ر�</a>';
    // var t = $('#dialogPopup div.jqmdMSG');
    $('#dialogPopup').jqm({
        ajax: url,
        //   Extract ajax URL from the 'href' attribute of triggering element 
        target: target,
        modal: true,
        //   FORCE FOCUS */
        ajaxText: ajaxText,
        // onHide: function(h) { 
        //      t.html('Please Wait...');  // Clear Content HTML on Hide.
        //      h.o.remove(); // remove overlay
        //      h.w.fadeOut(888); // hide window
        //    },
        overlay: 30
    })
    $('#dialogPopup').jqmShow();


}



function showAjaxDialogLoad(url, target, ajaxText) {
    if (!target) target = "div.dialogContent";
    if (!ajaxText) ajaxText = '<div class="dialogContent"><p class="loading">��Ϊ���ڴ�������, ���Ժ�...</p></div><a href="javascript:;" title="" onclick="closedialog();" class="Closeit">�ر�</a>';
    $('#dialogPopup').jqm({
        target: target,
        modal: true,
        overlay: 30
    })
    $('#dialogPopup').jqmShow();
	$(target).load(url); 

}


//tid ������Id ,sid ��ʾ���id

function createDialog(tid, sid) {
    if (!sid) sid = "dialogPopup";
    var target = "div.dialogMain";
    $('#' + sid).jqm({
        trigger: '#' + tid,
        modal: true,
        toTop: true,
        target: target,
        overlay: 30
        //    onShow: myjqmOnShow,
        //    onLoad: myjqmOnLoad
    }).jqDrag('#' + sid).jqmShow();
}


//��ʾ��Id

function closedialog(id) {
    id = id || "dialogPopup";
    $('#' + id).jqmHide();
}

//��ʱ�ر�ָ��ĵ�����

function closedialogTime(cont, time, id) {
    time = time || 1000;
    id = id || "dialogPopup";
    $('div.dialogContent').html("<span class=\"showtip\">" + cont + "</span>");
    setTimeout("closedialog()", time);
}


function checklogin() {
    // alert($('#username').val().length==0);
    //  return false;
    var username = $('#username').val();
    var password = $('#password').val();
    if (username.length == 0) {
        $('#usernamemsg').html('<font color="red">�������û���</font>');
        return false;
    } else {
        $('#usernamemsg').html('');
    }

    if (password.length == 0) {
        $('#pwdmsg').html('<font color="red">����������</font>');
        return false;
    } else {
        $('#pwdmsg').html('');
    }
    var remenber = $('#Remember').val();
	if(document.domain==thisdomain)
	{
       login(username, password, remenber);
	}else
	{
		loginjsonp(username, password, remenber);
	}
    return false;

}



//��½
function login(username, password, remember) {
    $.ajax({
        type: "POST",
        url: "/ajax/UserAjax.ashx?type=checklogin",
        data: "username=" + username + "&password=" + password + "&remember=" + remember,
        success: function (msg) {
            if (msg == "��½�ɹ�") {
                $('#userInfo').html(username);
                $('div.dialogContent').html("<span class=\"showtip\">" + username + "��½�ɹ�</span>");
                setTimeout("closedialog()", 1000);
            } else {
                $('div.dialogContent').html("<span class=\"showtip\">" + msg + "</span>");
                setTimeout("restLogin()", 1000);
            }
        }
    });

}


//new
//�����½
function loginjsonp(username,password,remember){

 $.ajax({
    url: "http://my.yue365.com/ajax/UserAjax.ashx?type=checklogin",
    type: 'GET',  //������GET
   // async: false,
   // data:{uid: uid, opt: opt, flag: flag, fid: fid,  gid: 0, rtype: 3},
    data:"username=" + username + "&password=" + password + "&remember=" + remember ,
    dataType: 'jsonp',  //����
    jsonp: 'jsonpcallback', //jsonp�ص�����������
    success: function(result) {
		  if(result.state==1)
			{
			    $('#login').html(username + "<br/> <a href=\"http://my.yue365.com/user/userindex.aspx\">��Ա����</a> <a href=\"http://my.yue365.com/Favorites/MusicBox.aspx\">���ֺ�</a><br/><a href=\"http://my.yue365.com/user/RegInfo.aspx\">�޸��ǳ�</a> <a href=\"javascript:logout();\">ע��</a>");
               $('div.dialogContent').html("<span class=\"showtip\">" + result.username + "��½�ɹ�</span>");
			   setTimeout("closedialog()", 1000);
			   	
			}else
			{
				$('div.dialogContent').html("<span class=\"showtip\">" + result.errmsg + "</span>");
                setTimeout("restLogin()", 1000);
			}
            //alert(result.errmsg); //�ص����
        }
    });
	
}


//new 
function logout(){
	$.ajax({
    url: "http://my.yue365.com/ajax/UserAjax.ashx?type=logout",
    type: 'GET',  //������GET
    dataType: 'jsonp',  //����
    jsonp: 'jsonpcallback', //jsonp�ص�����������
    success: function(result) {
		  $('#login').html("<a href=\"javascript:loginhtml();\">��¼</a>&nbsp;|&nbsp;<a href=\"javascript:reghtml();\">ע��</a>");
           
        }
    });

}



//���µ�½

function restLogin() {
    closedialog();
    loginhtml();
}

//����ע��

function restReg() {
    closedialog();
    reghtml();
}

//��ȡ��½html

function loginhtml() {
    //var url = "/ajaxtemplet/login.html";
   // setDialogTitle("��½");
    //showAjaxDialogLoad(url);
	//$("#feeds").load("feeds.html"); 

}

//��ȡע��html

function reghtml() {
   // var url = "/ajaxtemplet/reg.html?v=729";
    //setDialogTitle("ע��");
    //showAjaxDialogLoad(url);
}

//���õ��������

function setDialogTitle(str) {
    $('#dialogTitle').html(str);

}

//�Զ���½����

function loadlogin(id) {
    id = id || "userInfo";
    $.ajax({
        type: "GET",
        url: "/ajax/UserAjax.ashx?type=loadlogin",
        success: function (msg) {
            if (msg != "nologin") {
                $('#' + id).html(username);
            }
        }
    });

}


//new
//���ע��
function checkReg() {

    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    var username = $('#email').val();
    if (!myreg.test(username)) {
        $('#regnamemsg').html('<font color="red">Email��ʽ����ȷ��</font>');
        return;
    }

    var nickname_reg = $("#nickname").val();
    if (nickname_reg.length < 1 || nickname_reg.length > 12) {
        $('#nicknamemsg').html('<font color="red">�ǳ���ʹ��1-12���ַ�</font>');
        return;
    }
    else {
        $('#nicknamemsg').html('');
    }
    
    if ($('#password1').val().length < 6 || $('#password1').val().length > 16) {
        $('#pwd1').html('<font color="red">������ʹ��6-16���ַ�</font>');
        return;
    } else {
        $('#pwd1').html('');
    }

    if ($('#password2').val() != $('#password1').val()) {
        $('#pwd2').html('<font color="red">�����������벻һ��</font>');
    } else {
        $('#pwd2').html('');
    }
    
    $.ajax({
        type: "GET",
        url: "http://my.yue365.com/ajax/UserAjax.ashx?type=reguser",
        data: "username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent($('#password1').val()) + "&nickname=" + encodeURIComponent(nickname_reg),
        dataType: 'jsonp',  //����
        jsonp: 'jsonpcallback', //jsonp�ص�����������
        success: function (data) {
            if (data.state == "1") {
                $('div.dialogContent').html("<span class=\"showtip\">" + username + "ע��ɹ�</span>");
                setTimeout("window.location.reload();", 1000);
            } else {
                $('div.dialogContent').html("<span class=\"showtip\">" + data.errmsg + ",������ע��!</span>");
                setTimeout("restReg()", 1000);
            }
        }
    });


}

//new
function checkEmail(){
	//var ret=false;
	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    var username = $('#email').val();
    if (!myreg.test(username)) {
        $('#regnamemsg').html('<font color="red">Email��ʽ����ȷ��</font>');
        return;
    } else {
	
     $.ajax({
            url: 'http://my.yue365.com/ajax/UserAjax.ashx?type=checkUserEmail&email=' + username,
            type: 'GET',
            dataType: 'jsonp',
            timeout: 5000,
			jsonp: 'jsonpcallback', //jsonp�ص�����������
            error: function () {
                $('#regnamemsg').html('<font color="red">��֤Email��������������Email</font>');
            },
            success: function (data) {
                if (data.state == 1) {
                    $('#regnamemsg').html('<font color="red">��Email��ַ�ѱ�ʹ�ã�������������ߣ���ֱ�ӵ�½ �� <a href=\"http://my.yue365.com/user/GetPassword.aspx\">�һ�����</a></font>');
                } else if (data.state == 2) {
                    $('#regnamemsg').html('<font color="red">Email��ʽ����ȷ��</font>');
                } else {
                    $('#regnamemsg').html('���ʼ�����ʹ��');
				    
                }
            }
        });
	}
	
      //  return ret;
}



function onDigTab(i) {
    var tlis = $('.dialogTabTitle').find("li");
    var conts = $('.logincont');
    tlis.removeClass("hover");
    conts.removeClass("active");
    tlis.eq(i).addClass("hover");
    conts.eq(i).addClass("active");
    $('#dialogTitle').html(tlis.eq(i).html());
    //  conts[i].addClass("active");

}


//zhoukan �������Ĺ���js

function AlbumAdd(AlbumID) {
    //var url = "/ajax/Favorites.ashx?type=Albumadd&AlbumID=" + AlbumID;
    //showAjaxDialog(url);
}

function SingerAdd(SingerID) {
    //var url = "/ajax/Favorites.ashx?type=Singeradd&SingerID=" + SingerID;
    //showAjaxDialog(url);
}

var songid = 0;

function addsongtoclass() {
    var tli = document.getElementById("sclasslist").getElementsByTagName("input");
    var songclassid = "";
    for (var i = 0; i < tli.length; i++) {
        if (tli[i].checked == true) {
            songclassid = tli[i].value;
        }
    }

    if (songclassid == "") {
        alert("��ѡ��Ҫ�ղصĸ���Ŀ¼");
        return;
    }
    
    //var url = "/ajax/Favorites.ashx?type=songadd&songclassid=" + songclassid + "&musicid=" + songid;
    //closedialog();
    //showAjaxDialog(url);
}

function getsongclass(sid) {
    //songid = sid;
    //var url = "/ajax/Favorites.ashx?type=getsongclasslist";
    //showAjaxDialog(url);
	
	
}

function songclassadd(yesORno, songclassid) {

    //  encodeURI();
    var Classname = document.getElementById("dialogSongClassName").value;
    var Classcont = document.getElementById("dialogSongClassCont").value;
    if (Classname == undefined || Classname == "") {
        alert("���������Ŀ¼����");
        return;
    }
   // var url = "/ajax/Favorites.ashx?type=songclassadd&isEdit=" + yesORno + "&updateid=" + songclassid + "&classname=" + encodeURIComponent(Classname) + "&cont=" + encodeURIComponent(Classcont);
   //var url = "/ajax/Favorites.ashx?type=songclassadd&isEdit=" + yesORno + "&updateid=" + songclassid + "&classname=" + Classname + "&cont=" + Classcont;
   // closedialog();
   // showAjaxDialog(url);

}
//��Ӹ�����
function checkSongClassAdd(yesORno, songclassid) {
    var songclassname = document.getElementById("dialogSongClassName").value;
    var songclasscont = document.getElementById("dialogSongClassCont").value;
    var ret = true;
    if (songclassname.length > 0) {
        if (songclassname.length > 50) {
            document.getElementById("gedan").innerHTML = "����ĸ���Ŀ¼̫����";
            ret = false;
        }
    } else {
        document.getElementById("gedan").innerHTML = "����Ŀ¼���Ʋ���Ϊ��";
        ret = false;
    }
    if (songclasscont.length > 200) {
        document.getElementById("jieshao").innerHTML = "����ĸ���Ŀ¼����̫����";
        ret = false;
    }


    if (ret) {
        songclassadd(yesORno, songclassid);
        
    }


    return ret;

}

function setTab(m, n) {
    var tli = document.getElementById("menu" + m).getElementsByTagName("li");
    var mli = document.getElementById("main" + m).getElementsByTagName("ul");
    for (i = 0; i < tli.length; i++) {
        tli[i].className = i == n ? "mover" : "mout";
        mli[i].style.display = i == n ? "block" : "none";
    }
}

function setTabFavorites(m, n) {
    var tli = document.getElementById("menuFavorites" + m).getElementsByTagName("li");
    var mli = document.getElementById("mainFavorites" + m).getElementsByTagName("ul");
    for (i = 0; i < tli.length; i++) {
        tli[i].className = i == n ? "mover" : "mout";
        mli[i].style.display = i == n ? "block" : "none";
    }
}


function CheckAll(id) {

    var form = document.getElementById(id).getElementsByTagName("input");
    for (var i = 0; i < form.length; i++) {
        //		if (e.name != 'chkall')
        form[i].checked = true; // form.chkall.checked;
    }
}

function CheckOthers(id) {
    var form = document.getElementById(id).getElementsByTagName("input");
    for (var i = 0; i < form.length; i++) {
        var e = form[i];
        //		if (e.name != 'chkall')
        if (e.checked == false) {
            e.checked = true; // form.chkall.checked;
        } else {
            e.checked = false;
        }
    }
}

function onSearch() {
    //var type = $('input[@name=type][@checked]').val();
	var type = $("[name='type']:checked").get(0).value;  
	if(type==""||type==undefined)
	{
	    type=$('#type').val();
	}
    if ($('#KeyWords').val().length > 0 && type!="") {
        if(type=="geci")
		{
			window.location.href = 'http://www.yue365.com/geci/sogeci.shtml?keys=' + encodeURIComponent($('#KeyWords').val());
		}
		else
		{
			window.location.href = 'http://my.yue365.com/search/index.shtml?KeyWords=' + encodeURIComponent($('#KeyWords').val()) + "&type=" + type;
		}
    }
    return false;

}



function showAjaxDialog2(url, target, ajaxText) {
    if (!target) target = "div.dialogContent";
    if (!ajaxText) ajaxText = '<div class="dialogContent"><p class="loading">��Ϊ���ڴ�������, ���Ժ�...</p></div><a href="javascript:;" title="" onclick="closedialog();" class="Closeit">�ر�</a>';
    // var t = $('#dialogPopup div.jqmdMSG');
    $('#dialogPopup').jqm({
        target: target,
        modal: true,

        overlay: 30
    })
    $('#dialogPopup').jqmShow();
	$('div.dialogContent').html(ajaxText);
	 $.ajax({
            url: "http://my.yue365.com"+url,
            type: 'GET',
            dataType: 'jsonp',
            timeout: 5000,
			jsonp: 'jsonpcallback', //jsonp�ص�����������
            error: function () {
                $('div.dialogContent').html('�����������');
            },
            success: function (data) {
               $('div.dialogContent').html(data.msg);
			   if(data.js)
			   {
				   eval(data.js);
				}
			   
            }
        });
	

}

//function test()
//{   setDialogTitle("����");
//    var url="http://my.yue365.com/ajax/UsersAjax.ashx?type=checkUserEmail&email=01@163.com";
//	showAjaxDialog2(url);
//}

//������Ӹ���
function VolumeAdd(id) {
    var tli = document.getElementById(id).getElementsByTagName("input");
    var titleid;
    var abc;
    var b = 0;
    var favoritesid = "";
    
    for (var i = 0; i < tli.length; i++) {
        abc = tli[i].title;
        titleid = abc.split(",");
        if (tli[i].checked == true) {
            b += 1;
            if (b == 1) {
                favoritesid += titleid[0];
            } else {
                favoritesid += "," + titleid[0];
            }
        }
    }
    if (b == 0) {
        alert("���ȹ�ѡҪ�ղصĸ������ٵ���ղذ�ť!");
        return;
    } else if (b > 50) {
        alert("��һ�����ֻ���ղ�50�׸���");
        return;
    }
	
    if (favoritesid != "") {
//            var url = "/ajax/Favorites.ashx?type=getsongclasslist&songidlist=" + favoritesid;
        //            showAjaxDialog(url);
       // getsongclass(favoritesid);
    }

}

//������Ӹ���
function VolumeAddN(NowForm) {
    var tli = NowForm.getElementsByTagName("input");
    var titleid;
    var abc;
    var b = 0;
    var favoritesid = "";
    for (var i = 0; i < tli.length; i++) {
        abc = tli[i].title;
        titleid = abc.split(",");
        if (tli[i].checked == true) {
            b += 1;
            if (b == 1) {
                favoritesid += titleid[0];
            } else {
                favoritesid += "," + titleid[0];
            }
        }
    }
    if (b == 0) {
        alert("���ȹ�ѡҪ�ղصĸ������ٵ���ղذ�ť!");
        return;
    } else if (b > 50) {
        alert("��һ�����ֻ���ղ�50�׸���");
        return;
    }
	
    if (favoritesid != "") {
        //getsongclass(favoritesid);
    }

}



function volumefavorites(musicidlist) {
//    var tli = document.getElementById("sclasslist").getElementsByTagName("input");
//    var songclassid = "";
//    for (var i = 0; i < tli.length; i++) {
//        if (tli[i].checked == true) {
//            songclassid = tli[i].value;
//        }
//    }
//    var url = "/ajax/Favorites.ashx?type=volumeSongAdd&songclassid=" + songclassid + "&musicid=" + musicidlist;
//    closedialog();
    //    showAjaxDialog(url);

    getsongclass(musicidlist);
}

function changejia(id) {
    var vdl = document.getElementById("left_hotlist").getElementsByTagName("dl");
    var vul = document.getElementById("left_hotlist").getElementsByTagName("ul");
    for (i = 0; i < vdl.length; i++) {
        if (i == id) {

            if (vdl[i].className == "jia") {
                vdl[i].className = "jian";
                vul[i + 1].className = "uljian";
            }
            else {
                vdl[i].className = "jia";
                vul[i + 1].className = "uljia";
            }
            //vdl[i].onClick="changejian(i)";
        }
    }

}

//function check(id, objid) {
//    var tput = document.getElementById(id).getElementsByTagName("input");

//    if (tput[0].checked) {
//        var tli = document.getElementById(objid).getElementsByTagName("li");
//        for (i = 0; i < tli.length; i++) {
//            var objinput = tli[i].getElementsByTagName("input");
//            objinput[0].checked = true;
//        }
//    }
//    else {
//        var tli = document.getElementById(objid).getElementsByTagName("li");
//        for (i = 0; i < tli.length; i++) {
//            var objinput = tli[i].getElementsByTagName("input");
//            objinput[0].checked = false;
//        }
//    }

//}

function CheckAllBox(id, objid) {
    var o = document.getElementById(id);
    var tli = document.getElementById(objid).getElementsByTagName("input");
    for (i = 0; i < tli.length; i++) {
        tli[i].checked = o.checked;
    }

}

function kong(bkid) {
    var counta = 0;
    var kinput = document.getElementById(bkid).getElementsByTagName("input");

    for (i = 0; i < kinput.length; i++) {
        if (kinput[i].checked) {
            counta++;
        }
    }
    if (counta == 0) {
        alert("���ȹ�ѡ��Ҫ���ŵĸ������ٵ��������Ŧ");
        return false;
    }
}

function kongN(NowForm) {
    var counta = 0;
    var kinput =NowForm.getElementsByTagName("input");

    for (i = 0; i < kinput.length; i++) {
        if (kinput[i].checked) {
            counta++;
        }
    }
    if (counta == 0) {
        alert("���ȹ�ѡ��Ҫ���ŵĸ������ٵ��������Ŧ");
        return false;
    }

}



function VotoHaoTinghtml(id,tit) 
{
	var temp = '';
	temp+='<div id=\"dialogPopup2\" class=\"dialogPopup\" style=\"z-index: 101; display: block;\"><div class=\"dialogMain\"><h3 id=\"dialogTitle2\">Ϊ��'+tit+'������ͶƱ</h3><div class=\"dialogContent\"><div class=\"active\" style=\"text-align:left; border:none;\">';
	temp+='<div id=\"showMsg\">��ϲ�����׸�������Ϊ��(�ɶ�ѡ)</div>';
	temp+='<div class=\"haotingVoto\"><li style=\"_margin-top: 5px;\">';
	
	temp+='<input type=\"checkbox\"  value=\"1\" name=\"Song\" id=\"Song\">';
	//temp+='��������';
	temp+='<label for=\"Song\" style=\"cursor:hand;\">��������</label>';
	
	temp+='<input type=\"checkbox\"  value=\"1\" name=\"Singer\" id=\"Singer\">';
	//temp+='ϲ���������';
	temp+='<label for=\"Singer\" style=\"cursor:hand;\">ϲ���������</label>';
	
	temp+='<input type=\"checkbox\"  value=\"1\" name=\"Haoting\" id=\"Haoting\">';
	//temp+=' ����ֱ������</div>';
	temp+='<label for=\"Haoting\" style=\"cursor:hand;\">����ֱ������</label>';
	
	temp+='</li></div>';
	temp+='<div class=\"fnt\"><span  class=\"fnt-sub\" onclick=\"return PostVotoHaoting();\">ȷ ��</span></div>';
	temp+='<input name=\"musicid\" id=\"musicid\" type=\"hidden\" value=\"'+id+'\" />';
	temp+='</div></div><span onclick=\"closeDiv2();\" class=\"closeDiv\">�ر�</span></div></div>';

   
	$("body").prepend('<div id=\"bgdiv\" class=\"jqmOverlay\"></div>');
	$('body').append(temp);
	$("#dialogPopup2").show();
	
}

function closeDiv2() 
{
	$("#bgdiv").remove();
	$("#dialogPopup2").remove();
}


function PostVotoHaoting()
{
	var song=0;
	var singer=0;
	var haoting=0;
	if($("#Song").attr("checked"))
	{
	   	song=1;
	}   
    if($("#Singer").attr("checked"))
	{
	   	singer=1;
	}	
	if($("#Haoting").attr("checked"))
	{
	   	haoting=1;
	}	
	if(song!=1&&singer!=1&&haoting!=1)
	{
		$("#bgdiv").remove();
		$("body").prepend('<div id=\"bgdiv\" class=\"jqmOverlay\"></div>');
		$('#showMsg').html("������¼�����ѡ����ϲ�����׸��ԭ��(�ɶ�ѡ)");
		return;
	}    
	var musicid=$("#musicid").val();
	
   
    $.ajax({
    url: "http://my.yue365.com/ajax/UserAjax.ashx?type=haoting",
    type: 'GET',  //������GET
    data:"musicid=" + musicid + "&song=" + song + "&singer=" + singer+"&shenqu="+haoting ,
    dataType: 'jsonp',  //����
    jsonp: 'jsonpcallback', //jsonp�ص�����������
    success: function(result) {
		  if(result.state==1)
			{
				$("#bgdiv").remove();
				$("body").prepend('<div id=\"bgdiv\" class=\"jqmOverlay\"></div>');
				$('div.dialogContent').html("<span class=\"showtip\">ͶƱ�ɹ���лл��Ĳ��롣</span>");
				setTimeout("closeDiv2()", 1000);
			   	
			}else
			{
				$("#bgdiv").remove();
				$("body").prepend('<div id=\"bgdiv\" class=\"jqmOverlay\"></div>');
				$('div.dialogContent').html("<span class=\"showtip\">���׸����������Ѿ�Ͷ��Ʊ</span>");
				setTimeout("closeDiv2()", 1000);
			}
            //alert(result.errmsg); //�ص����
        }
    });
		
   return;
	
}

function Wa(wrurl)
{
	if(wrurl!="")
	{
		wrurl=wrurl.replace("b#","music.baidu.com");
		if(wrurl.indexOf("http://")==-1)
		{
			wrurl="http://"+wrurl;
		}
		if(wrurl.indexOf("music.baidu")!=-1)
		{
			wrurl=wrurl+"?f=yue365";
		}
		document.write("<a href=\""+wrurl+"\" target=\"_blank\">��ת����</a>");
	}
}


//---------2012-08-21-bk --------------------
function ShowMore() 
{
	$("#stit").hide();
	$("#ltit").show();
}
function HideMore() 
{
	$("#ltit").hide();
	$("#stit").show();
}

//---------2014-07-10---------------------
function ShowFiveBd()
{
	var nav=document.getElementById("xgtag").getElementsByTagName("li");
	for(var g=0;g<5;g++)
	{
		nav[g].className="show";
	}
}
function ShowAllBd()
{
	var nav=document.getElementById("xgtag").getElementsByTagName("li");
	for(var g=0;g<nav.length;g++)
	{
		$(nav[g]).css('display',"block");
	}
	$('#morebd').remove();
}