<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>视频播放页面</title>
	
	<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
　　<script src="http://vjs.zencdn.net/c/video.js"></script>
	
	<script src="js/jquery.min.js" type="text/javascript" ></script> 
<style type="text/css">
	#onefold-video {
		background-color: #C0DEED ;
		height:500px;
		width:538px;
		margin: 10px auto;
		-moz-border-radius:10px;
		-webkit-border-radius:10px;
	}
	
	a {
		color: #333333;
	}
	a:hover {
		color: #F10215;
		
	}
	
	body{
		background-color: #C0DEED ;  /*头部下面的蓝色 */
		margin:0;
		padding:0;
	}
	
	#header{
		height:180px; 
		background: #8EC1DA url(img/bg-clouds.png) repeat-y scroll left top;
		text-align:center;
		margin-top:-55px;
	}
	
	#header h1{
		padding-top:70px;
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:white;
		font-size:45px;
	}
	
	#content{
		
	}

</style>
</head>
<body> 
	
	<div id="contenter">
		<div id="header">
		    <h1>${requestScope.play_video.biaoti }</h1>
			
		</div><!-- #header -->
		
		<div id="onefold-video">
			
			<video  id=video1 class="video-js vjs-default-skin" controls  preload="auto" width="536" height="270" poster="${requestScope.play_video.imgurl}" data-setup="{}">
		　	　　 <source src="${requestScope.play_video.url }" type="video/mp4" >
			</video>
			
			视频作者：${requestScope.play_video.author }<br><br>
			视频简介：${requestScope.play_video.jianjie }<br><br>
			上传日期：${requestScope.play_video.date }<br><br>
			播放量：${requestScope.play_video.bofang }<br><br>
			
			<a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=mainView">返回首页</a>
				<br><br>
			<a href="http://localhost:8080/videoplayer/downloadvideo?downloadurl=${requestScope.play_video.url}">下载视频</a>
		
		</div>
	</div>
	
	<script type="text/javascript" charset="utf-8">
			var scrollSpeed = 1; 		// Speed in milliseconds
			var step = 1; 				// How many pixels to move per step
			var current = 0;			// The current pixel row
			var imageWidth = 2247;		// Background image width
			var headerWidth = 1280;		// How wide the header is.
			
			//The pixel row where to start a new loop
			var restartPosition = -(imageWidth - headerWidth);
			
			function scrollBg(){
				//Go to next pixel row.
				current -= step;
				
				//If at the end of the image, then go to the top.
				if (current == restartPosition){
					current = 0;
				}
				
				//Set the CSS of the header.
				$('#header').css("background-position",current+"px 0");
			}
			
			//Calls the scrolling function repeatedly
			var init = setInterval("scrollBg()", scrollSpeed);
	</script>
</body>
</html>