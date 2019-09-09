<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人管理界面</title>

<style type="text/css">
	body{
		background-color: #F4F3F3 ;  /*头部下面的蓝色 */
		margin:0;
		padding:0;
	}
	
	#header{
		height:180px; 
		background: #8EC1DA url(img/bg-clouds.png) repeat-y scroll left top;
		margin-top:-55px;
	}
	
	#header h1{
		padding-top:60px;
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:white;
		font-size:35px;
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
	
	#info {
		float:left;
		margin-left:50px;
	}
	
	#daohang {
		margin-top: 15px;
		margin-left: 350px;
		background: #FFF;     /* 导航栏背景颜色 */
		height: 55px;
		width: 900px;
		line-height: 50px;       /* 可导致导航栏中的字距离导航栏上部的距离 */
		border-bottom: 1px solid #dddddd;  /* 导航栏下面的黑线 */
		font-size: 18px;
		color: #989295;           /* 导航栏内的字体颜色 */
		-moz-border-radius:10px;  /* 四外圈更圆滑 */
		-webkit-border-radius:10px;
	}
	/* 让导航栏左侧字体横向排列 */
	#daohang li {
		float: left;
		margin-left: 60px;    /* 导航栏字体之间的左右距离 */
		
	}
	ul{
		list-style: none;  /*去掉<li>字体前面的系统自带那个点*/
	}
	 input {
		width:85px;
		height: 30px;
		background: #FFF;
		border-radius: 6px;
		border: 1px solid rgba(255, 255, 255, .15);
		font-size: 18px;
		color: #000;
		} 
	 input:hover{
			cursor: pointer;
			color: #F10215;
			} 
	a {
		color: #000;
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
	
	#update-gereninfo {
		margin-top:30px;
		width: 1510px;
		height: 250px;
		background-color: pink;
		
	}
	#rename,#rezhanghao,#repassword,#repwd_1 {
		margin-top: 5px;
		width: 224px;
		height: 25px;
		border-radius: 0px;
		border: 1px solid #000000;
		font-size: 18px;
		color: #000;
	}
	 #rebeizhu {
		 margin-top: 5px;
		 width: 450px;
		 height: 60px;
		 border-radius: 0px;
		 border: 1px solid #000000;
		 font-size: 18px;
		 color: #000;
	 }
	 
	 
	#reset-button,#queren {
		margin-top: 10px;
		width: 55px;
		height: 25px;
		border-radius: 0px;
		border: 1px solid #000000;
		font-size: 18px;
		color: #000;
	}
	
	#geren-video-list {
		background-color:#FFF;
		width: 1140px;
		margin: 20px auto;  /* 上下50px 左右居中 */
	}
	
	#video_title,#jianjie,#upload_time,#bofangliang,#shenhe,#delete {
		font-size: 16px;
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		margin: 2px 0;
	}
	
	#video_title,#jianjie {
		width:240px;
		height:24px;
		white-space: nowrap;   /*禁止文件自动换行 */
		overflow:hidden;
		text-overflow:ellipsis;  /* 溢出部分显示省略号 */
	}
	#video_title,#jianjie:hover {
		overflow: visible;/* 鼠标放上去显示剩余部分*/
		text-overflow: inherit;
	}
	#upload_time,#bofangliang,#shenhe {
		font-size: 12px;
	}
	
</style>

</head>
<body>
	
	<div id="header">
		<h1>您的管理中心</h1>      <%-- ${sessionScope.vuser.name } --%>
		<div id="info">
		昵称：${sessionScope.vuser.name }<br>
		备注：${sessionScope.vuser.beizhu }
		</div>
	</div>
	
	<div id="daohang">
		<ul>
			<li><a href="geren?gerenid=${sessionScope.vuser.id }">个人中心</a></li>
			<li><a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=genggaixinxi">修改信息</a></li>
			<li><a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=upLoad">上传新视频</a></li>
			<li><a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=mainView">返回首页</a></li>
			<li><form action="tuichu"><input type="submit" value="退出登录"></form></li>
		</ul>
	</div>


	<div id="geren-video-list">
		<table width="1190px" border="0" align="center">
		<tr style="height:360px;">
		  <c:forEach items="${requestScope.video_list}" var="video" varStatus="status" >
		        	
		        	<td style='width:0px'>
		        		<div id = "videoid">
		        			<a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=${video.id}">
		        			<img alt="" src="${video.imgurl}" width="240px" height="160px">
		        			</a>
		        		</div>
		        		<div id="video_title">
		        			${video.biaoti}
		        		</div>
		        		<div id="jianjie">
		        			${video.jianjie }
		        		</div>
		        		<div id="upload_time">
		        			上传时间 : ${video.date }
		        		</div>
		        		<div id="bofangliang">
		        			播放量 : ${video.bofang }
		        		</div>
						<div id="shenhe">
							审核：${video.shenhe }
						</div>
						<div id="delete">
							<a href="http://localhost:8080/videoplayer/deletevideo?deleteId=${video.id}">删除该视频</a>
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