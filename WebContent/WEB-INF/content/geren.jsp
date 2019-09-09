<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人页面</title>

<style type="text/css">
	
	#video-show {
		background-color:#C0DEED;
		width: 1140px;
		margin: 50px auto;  /* 上下50px 左右居中 */
		/* -moz-border-radius:10px;
		-webkit-border-radius:10px; */
	}
	a {
		color: #FFF;
	}
	a:hover {
		color: #F10215;
		
	}
	#video_aythor a {
		color: slateblue;
	}
	#video_aythor a:hover{
		color: #F10215;
	}
	body{
		background-color: #F6F6F6 ;  /*头部下面的蓝色 */
		margin:0;
		padding:0;
	}
	
	#header{
		height:180px; 
		background: #8EC1DA url(img/bg-clouds.png) repeat-y scroll left top;
		/* text-align:center; */
		margin-top:-55px;
	}
	
	#header h1{
		padding-top:60px;
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:white;
		font-size:45px;
		text-align: center;
		
	}
	#header h3{
		padding-top:0px;
		margin-left: 40px;
	}
	h2 {
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:black;
		font-size:30px;
		text-align: center;
	}
	#gereninfo {
		margin-top: 20px;
		margin-left: 30px;
		height: 100px;
		width: 1460px;
		background-color: #FFFF;
	}
	#gereninfo .gerenname {
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:black;
		font-size:20px;
	} 
	
	#gereninfo .gerenjianjie {
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:black;
		font-size:20px;
	}
	.before-videos {    /* 整个下面展示视频的大区域 */
		width: 1140px;
		height: auto;
		background-color: #FFFFFF;
		margin: 20px auto;  /* 上下50px 左右居中 */
	}
	#video_title{
	margin-top:10px;
	}
	#video_title,#jianjie {
		
		width:250px;
		height:25px;
		white-space: nowrap;   /*禁止文件自动换行 */
		overflow:hidden;
		text-overflow:ellipsis;  /* 溢出部分显示省略号 */
	}
	#video_title,#jianjie:hover {
		
		 /*overflow: visible; 鼠标放上去显示剩余部分*/
		text-overflow: inherit;
	}
	#upload_time,#bofangliang {
		font-size: 12px;
	}
	
</style>

</head>
<body>
	
	<div id="header">
		<h1>作者的个人页面</h1>  
		<h3><a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=mainView">返回首页</a></h3>
	</div>
	
	<div id="gereninfo">
		<div class="gerenname">
			作者：${requestScope.usergeren.name}
		</div>
		<div class="gerenjianjie">
			作者简介：${requestScope.usergeren.beizhu }
		</div>
	</div>

	<h2>目前${requestScope.usergeren.name}的所有内容</h2>
	
	 <div class="before-videos">
		<table width="1140px" border="0" align="center">
		<tr style="height:360px;">
		  <c:forEach items="${requestScope.video_list}" var="video" varStatus="status" >
		        	
		        	<td style='width:0px'>
		        		<div id = "videoid">
		        			<a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=${video.id}">
		        			<img alt="" src="${video.imgurl}" width="280px" height="170px">
		        			</a>
		        		</div>
		        		<div id="video_title">
		        			${video.biaoti}
		        		</div>
		        		
		        		<div id="jianjie">
		        			${video.jianjie }
		        		</div>
						<div id="video_aythor">
							<a href="geren?gerenid=${video.authorId}">作者：${requestScope.usergeren.name}</a>     <%-- ${video.author} --%>
						</div>
		        		<div id="upload_time">
		        			上传时间 : ${video.date }
		        		</div>
		        		<div id="bofangliang">
		        			播放量 : ${video.bofang }
		        		</div>
		        	</td>
	
	      	   <c:if test="${status.count%4==0 }">
	                   </tr>
	                   <tr style="height:360px;">
	      	   </c:if>
			
			</c:forEach>
			</tr>
		</table>
	</div>
	
</body>
</html>