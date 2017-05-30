var Player ;
$(function() {  
  
    // 播放器  
     Player = {  
        // 歌曲路径  
        path : '',  
  
        // 歌曲数据  
        data : null,  
        name : null,
        img:null,
  
        // 当前播放歌曲的 索引  
        currentIndex : -1,  
  
        //  播放器元素jquery对象  
        $audio : $('#audio1'),  
  
        // 歌曲列表  
        $mList : $('#m-list'),  
  
        //正在播放的歌曲  
        $rmusic : $('#rmusic'),  
  
        // 初始化 数据  
        init : function() {  
        	initSong(singerid);
            // 数据一般来自服务器端,通过ajax 加载数据,这里是模拟  
            Player.data = songdata;  
            Player.name =songname;  
            Player.img=songImg;
            // 一般用模板引擎,把数据 与 模板 转换为 视图,来显示,这里是模拟  
            var mhtml = '';  
            var len = Player.data.length;  
            for (var i = 0; i < len; i++) {  
             //   mhtml += '<li><a index="' + i + '">' + Player.name[i] + '</a></li>';  
            }  
           // Player.$mList.html(mhtml);  
		//		$("#audio1").src= Player.name[0] ;
        },  
  
        // 就绪  
        ready : function() {  
            // 控制  
  
            Player.audio = Player.$audio.get(0);  
  
            $('#ctrl-area').on('click', 'button', function() {  
               $("#rmusic").html(Player.name[Player.currentIndex]);  
            });  
  
            // 播放  
            $('#btn-play').click(function() {  
                Player.audio.play();  
                if (Player.currentIndex == -1) {  
                    $('#btn-next').click();  
                    $('#btn-order').click();
                   // $('#btn-play').hide();
                }  
            });  
  
            // 暂停  
            $('#btn-pause').click(function() {  
                Player.audio.pause();  
            });  
  
            // 下一曲  
            $('#btn-next').click(function() {  
            	$('#btn-play').hide();
                if (Player.currentIndex == -1) {  
                    Player.currentIndex = 0;  
                } else if (Player.currentIndex == (Player.data.length - 1)) {  
                    Player.currentIndex = 0;  
                } else {  
                    Player.currentIndex++;  
                }  
                console.log("Player.currentIndex : " + Player.currentIndex);  
                Player.audio.src = Player.path + Player.data[Player.currentIndex];  
                $(".img-head").attr('src',Player.img[Player.currentIndex]);
                $(".music-top").attr('src',Player.img[Player.currentIndex]);
                Player.audio.play();  
            });  
            // 上一曲  
            $('#btn-pre').click(function() {  
            	$('#btn-play').hide();
                if (Player.currentIndex == -1) {  
                    Player.currentIndex = 0;  
                } else if (Player.currentIndex == 0) {  
                    Player.currentIndex = (Player.data.length - 1);  
                } else {  
                    Player.currentIndex--;  
                }  
                Player.audio.src = Player.path + Player.data[Player.currentIndex];  
                $(".music-top").attr('src',Player.img[Player.currentIndex]);
                $(".img-head").attr('src',Player.img[Player.currentIndex]);
                Player.audio.play();  
            });  
  
            // 单曲循环  
            $('#btn-loop').click(function() {  
                console.log("Player.currentIndex :", Player.currentIndex);  
                Player.audio.onended = function() {  
                    Player.audio.load();  
                    Player.audio.play();  
                };  
            });  
  
            // 顺序播放  
            $('#btn-order').click(function() {  
                console.log("Player.currentIndex :", Player.currentIndex);  
                Player.audio.onended = function() {  
                    $('#btn-next').click();  
                };  
            });  
            
            
  
            // 随机播放  
            $('#btn-random').click(function() {  
                Player.audio.onended = function() {  
                    var i = parseInt((Player.data.length - 1) * Math.random());  
                    playByMe(i);  
                };  
            });  
  
            // 播放指定歌曲  
            function playByMe(i) {  
                console.log("index:", i);  
                Player.audio.src = Player.path + Player.data[i];  
                Player.audio.play();  
                Player.currentIndex = i;  
                Player.$rmusic.html(Player.data[Player.currentIndex]);  
            }  
  
            // 歌曲被点击  
            $('#a-list').click(function() {  
            	alert(0);
                playByMe($(this).attr('index'));  
            });  
          
            $('#play-a').click(function() {alert(1)});
        }  
    };  
    Player.init();  
    Player.ready();  
 
});  
function playAllmusic(){
    Player.audio.play();  
    if (Player.currentIndex == -1) {  
        $('#btn-next').click();  
        $('#btn-order').click();
       // $('#btn-play').hide();
    }
}

function playmusic(i){
	Player.audio.src = Player.path + Player.data[i];  
	Player.audio.play();  
	Player.currentIndex = i;  
	Player.$rmusic.html(Player.data[Player.currentIndex]);  
    $(".img-head").attr('src',Player.img[Player.currentIndex]);
    $(".music-top").attr('src',Player.img[Player.currentIndex]);
    $("#rmusic").html(Player.name[Player.currentIndex]);  
    $('#btn-order').click();
}