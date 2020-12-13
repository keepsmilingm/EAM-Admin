<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <title>HTML5 GetUserMedia Demo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <style>
    	body {
    		text-align: center;
    		margin: 0;
    	}
    	.hide {
    		display: none;
    	}
    	.toast {
    		position: fixed;
    		bottom: 150px;
    		left: 50%;
    		background: rgba(35,35,35,0.8);
    		color: #fff;
    		padding: 5px 15px;
    		transform: translate(-50%, 50%);
    		border-radius: 5px;
    	}
    	video {
    		width: 100vw;
    	}
    </style>
</head>
<body>
<video autoplay="autoplay"></video>
<canvas id="canvas1" height="320px" class="hide"></canvas>
<img class="hide" src="" alt="" id="img" />
<div></div>
<span class="toast hide" id="toast">
	
</span>
<button id="scan">扫一扫</button>
<script src="http://www.jq22.com/demo/jQueryQrcode201709202327/analyticCode.js" type="text/javascript" charset="utf-8"></script>
<script src="http://www.jq22.com/demo/jQueryQrcode201709202327/llqrcode.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var video = document.querySelector('video');
    var audio, audioType;

    var canvas1 = document.getElementById('canvas1');
    var context1 = canvas1.getContext('2d');
    var stream;
    
    // 兼容不同浏览器内核
    // 老的浏览器可能根本没有实现 mediaDevices，所以我们可以先设置一个空的对象
	if (navigator.mediaDevices === undefined) {
	  navigator.mediaDevices = {};
	}
	
	// 一些浏览器部分支持 mediaDevices。我们不能直接给对象设置 getUserMedia 
	// 因为这样可能会覆盖已有的属性。这里我们只会在没有getUserMedia属性的时候添加它。
	if (navigator.mediaDevices.getUserMedia === undefined) {
	  navigator.mediaDevices.getUserMedia = function(constraints) {
	
	    // 首先，如果有getUserMedia的话，就获得它
	    var getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
	
	    // 一些浏览器根本没实现它 - 那么就返回一个error到promise的reject来保持一个统一的接口
	    if (!getUserMedia) {
	      	return Promise.reject(new Error('getUserMedia is not implemented in this browser'));
	    }
	
	    // 否则，为老的navigator.getUserMedia方法包裹一个Promise
	    return new Promise(function(resolve, reject) {
	      	getUserMedia.call(navigator, constraints, resolve, reject);
	    });
	  }
	}

    window.URL = window.URL || window.webkitURL || window.mozURL || window.msURL;

	var exArray = [];
    navigator.mediaDevices.enumerateDevices()
    .then(function(sourceInfos) {
        for (var i = 0; i != sourceInfos.length; ++i) {
            var sourceInfo = sourceInfos[i];
            //这里会遍历audio,video，所以要加以区分
            if (sourceInfo.kind === 'video') {
                exArray.push(sourceInfo.deviceId);
            }
        }
    })
	.catch(function(err) {
	  	alert(err.name + ": " + err.message);
	});

    function getMedia() {
        if (navigator.mediaDevices.getUserMedia) {
            navigator.mediaDevices.getUserMedia({
            	audio: false,
            	video: {
        			facingMode: { exact: "environment" }
        		}
            }).then(function(stream) {
			  	successFunc(stream)
			})
			.catch(function(err) {
			  	errorFunc(err)
			});
        }
        else {
            alert('Native device media streaming (getUserMedia) not supported in this browser.');
        }
    }
    // 初始就加载摄像头，不加定时会出现显示的前置摄像头（大概因为打开摄像头也要时间）
    /*setTimeout(function() {
		getMedia();
    }, 500);*/
	
    function successFunc(stream) {
        //alert('Succeed to get media!');
        if (video.mozSrcObject !== undefined) {
            //Firefox中，video.mozSrcObject最初为null，而不是未定义的，我们可以靠这个来检测Firefox的支持
            video.mozSrcObject = stream;
        }
        else {
            video.src = window.URL && window.URL.createObjectURL(stream) || stream;
        }
    }
    function errorFunc(e) {
        alert('Error！'+e);
    }

	var getImgTiming = null;
    // 将视频帧绘制到Canvas对象上,Canvas每60ms切换帧，形成肉眼视频效果
    function drawVideoAtCanvas(video,context) {
        window.setInterval(function () {
            context.drawImage(video, 0, 0,240,320);
        }, 3000);
        // 定时进行图片转换成二维码
        getImgTiming = window.setInterval(function () {
            getImg();
        }, 1000);
    }

    // vedio播放时触发，绘制vedio帧图像到canvas
	video.addEventListener('play', function () {
	    drawVideoAtCanvas(video, context1);
	}, false);
    
    // 转化图片
    function getImg() {
    	var dataURL = canvas1.toDataURL("image/png");
    	// 加载文件
    	document.getElementById('img').src = dataURL;
    	getUrl(document.getElementById('img'), 'img-url');
    }

    // 获取二维码地址
    function getUrl(e,param){
        analyticCode.getUrl(param,e,function(text,imgSrc){
        	// 判断是否解析成功
        	if (text == 'error decoding QR Code') {
        		document.getElementById('toast').innerHTML = '请对准二维码';
        		document.getElementById('toast').classList.remove('hide');
        	} else {
        		document.getElementById('toast').innerHTML = '识别成功';
        		document.getElementById('toast').classList.remove('hide');
        		// 如果成功，请求接口、取消定时解析图片
        		setTimeout(function () {
        			document.getElementById('toast').classList.add('hide');
        			clearInterval(getImgTiming);
        		}, 3000);
	            e.nextElementSibling.innerHTML = text;
	            e.previousElementSibling.src = imgSrc;
        	}
        });
    }
    
    // 点击扫一扫
    document.getElementById('scan').onclick = function() {
    	getMedia();
    };
</script>
</body>
