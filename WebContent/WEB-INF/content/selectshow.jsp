<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索展示页面</title>

<style type="text/css">
	body{
		background: #F4F3F3;
	}
	
	#header{
			background: #FFF;
			display:block;
			height:80px; 
			width: 1110x;
			text-align:center;
			margin-top:-8px;
		}
	#key {   /* 搜索框 */
		margin:20px 0 ;
		width:250px;
		height: 30px;
		
		background: #F7F7F7 ;  /* rgba(200, 200, 250, .5) */
		border-radius: 6px;
		border: 1px solid #000;   /* rgba(255, 255, 255, .15) */
		font-size: 14px;
		color: #000;
	}
	#key:hover {   /* 鼠标放上去后搜索框 */
		margin:20px 0 ;
		width:250px;
		height: 30px;
		background: #FFF;
		border-radius: 6px;
		border: 1px solid #000;   /* rgba(255, 255, 255, .15) */
		font-size: 14px;
		color: #000;
	}
	#search_button{      /* 查询按钮 */
		    width: 70px;
		    height: 34px;
		    background-color: #EEEEEE;
		    color: #000;
		    border:1px solid #000000;
		    /* border-radius:8px;    能够让长方形的四个角变得圆滑 */
			font-size: 17px;
		}
		#search_button:hover{      /* 查询按钮 */
			    cursor: pointer;
			    width: 70px;
			    height: 34px;
			    background-color: #FFFFFF;
			    color: #F10215;
			    border:1px solid;
			    border-radius:8px;
				font-size: 19px;
			}
		.return-mainview {    /* 返回主界面的按钮 */
			margin-left: 80px;
		}
		
		a {
			font-size: 20px;
			text-decoration: none;  /* 取消超链接下面的下划线 */
			color: #000000;
		}
		a:hover {
			color: #F10215;
		}
		
		
		.search-mulu{    /* 搜索框下面的导航栏 */
			border: ;
			background: #FFF;     /* 导航栏背景颜色 */
			height: 60px;
			width: 1340px;
			margin: 20px auto;
			/* line-height: 40px;   可导致导航栏中的字距离导航栏上部的距离 */
			font-size: 18px;
			color: #000;           /* 导航栏内的字体颜色 */
		}
		
		.fl {
			float: left;
		}
		
		ul {
			list-style: none;
		}
		.search-mulu li {
			float: left; 
			margin-left: 60px;    /* 导航栏字体之间的左右距离 */
		}
			
			
		.show-videos {    /* 整个下面展示视频的大区域 */
			width: 1140px;
			background-color: #FFF;
			margin: 50px auto;  /* 上下50px 左右居中 */
		}
		
		#video_title,#jianjie {
				width:240px;
				height:28px;
				white-space: nowrap;   /*禁止文件自动换行 */
				overflow:hidden;
				text-overflow:ellipsis;  /* 溢出部分显示省略号 */
			}
		#video_title,#jianjie:hover {
				
			/* overflow: visible; 鼠标放上去显示剩余部分*/
			text-overflow: inherit;
			}
		#upload_time,#bofangliang {
			font-size: 12px;
		}
</style>
</head>

<body>
	
	<div id="header">
		<form action="sousuo" method="post">
		    <table border="0" align="center">
		    	<tr>
		    		<td >	
						<input type="text" id="key" name="key" style="width: 200px; height: 30px;">	
					</td>
		    		<td >	
						<input type="submit" id="search_button"  value="查询">
					</td>
		    		<td>
						<div class="return-mainview">
						<a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=mainView">返回首页</a>
						</div>
		    		</td>
		    	</tr>
		    </table>
		 </form>
	</div>

 
 
 <div class="search-mulu">
	 <ul class="fl">
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=0">全部视频</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=1">广告</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=2">宣传片</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=3">MV</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=4">剧情记录</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=5">特殊摄影</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=6">动画</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=7">创意混剪</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=8">影视</a></li>
		<li><a href="http://localhost:8080/videoplayer/sousuo?classnumber=9">Vlog</a></li>
	</ul>
 </div>
 
 <div class="show-videos">
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
 	        			${video.biaoti }
 	        		</div>
 	        		
 	        		<div id="jianjie">
 	        			${video.jianjie }
 	        		</div>
					<div id="video_aythor">
						<a href="geren?gerenid=${video.authorId }">制作者：${video.author}</a>
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
