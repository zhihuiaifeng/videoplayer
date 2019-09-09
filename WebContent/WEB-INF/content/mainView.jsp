<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>新片场-专业影视创作人社区</title>
		<meta name="description" content="新片场是一个专注于服务新媒体影视的创作人社区,汇集国内影视圈导演,制片人,编剧,演员,影评人,影视机构及众多影视爱好者。在这里,可你可以找到合适的创作人。在这里，用作品打动世界！" />
		<meta name="keywords" content="微电影,好看的微电影,微电影排行榜,微电影平台,微电影网,vimeo"/>
		<!-- 引入网址前面的图标 -->
		<link rel="shortcut icon" href="favicon.ico"/>   
		
		 <!-- 引入初始化css文件 -->
		 <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
		 
		 <!-- 头部和底部结构基本相同 我们做基本的公共样式 -->
		 <link rel="stylesheet" href="css/base.css" />
		 
		 <!-- 轮播图样式 -->
		 <link rel="stylesheet" type="text/css" href="css/banner.css"/>
		 
		 <!-- 引入Jquery文件  封装了我们常用的DOM操作方法-->
		 <script type="text/javascript" src="js/jquery.js"></script> 	
		 
		 
	</head>
	<body>
		
		<!-- 快速导航栏部分 start-->
		<div class="shortcut">
			<ul class="fl">
					<li><a href="#">首页</a></li>
					<li><a href="#">发现</a><i></i></li>
					<li><a href="#">素材</a><i></i></li>
					<li><a href="#">活动</a></li>
					<li><a href="#">APP</a></li>
					<li><a href="#">更多</a><i></i></li>
					<li><img src="img/new%20ear青年电影节.png" width="80px" height="28px" align="center"></li>
			</ul>		
			<ul class="fr right-part">
				<li>
					<div id="form-sousuo" style="display: inline;">
						<form action="sousuo" method="post">
							<input type="text" id="key" name="key" placeholder="输入视频类型或作者">
							<button><i></i></button>  <!-- 按钮的意思 双标签 等价于<input type="button" value=""> -->
						</form>
					</div>
				</li>

				<li>
					<div id="dengludiv"  >
						<a href="http://localhost:8080/videoplayer/guanlicontrol">管理中心</a>
					</div>
				</li>
				
				<li><a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=denglu">登录</a></li>
				<li><a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=zhuce">注册</a></li>
			</ul>
			
		</div>
		<!-- 快速导航栏部分 end-->
		
		<!-- 轮播图start -->
		<div class="banner">    <!-- 轮播图区域 -->
			<div class="img-wrap">   <!-- 轮播图图片 -->
				<ul>
					<li class="item">
						<img src="img/4.1热气球背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
						 <div id = "videoid">
 	        				<a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1023496918">
 	        					<img alt="" src="img/1560096625366.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        			</div>
					</li>
					<li class="item">
						<img src="img/5.1专题策划背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
						<div id = "videoid">
 	        				 <a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1023664340">
 	        					<img alt="" src="img/1560096792788.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        				</div>
					</li>
					 <li class="item">
						<img src="img/2.1礼花背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
						<div id = "videoid">
 	        				 <a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1086223475">
 	        					<img alt="" src="img/1560159351923.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        				</div>
					</li>
					
					<li class="item">
						<img src="img/5.1专题策划背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
						<div id = "videoid">
 	        				 <a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1054604572">
 	        					<img alt="" src="img/1560127733020.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        				</div>
					</li>
					
					
					<li class="item">
						<img src="img/7.1周榜单背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
						<div id = "videoid">
 	        				 <a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1053909240">
 	        					<img alt="" src="img/1560127037688.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        				</div>
					</li>
					<li class="item">
						<img src="img/5.1专题策划背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
						<div id = "videoid">
 	        				 <a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1054350359">
 	        					<img alt="" src="img/1560127478807.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        				</div>
					</li>
		
					<li class="item">
						<img src="img/9.2熊背景.jpg" style="position:absolute; z-index:-1; " width="1519" height="400" alt="">
					  		<div id = "videoid">
 	        				 <a href="http://localhost:8080/videoplayer/videoplaycontrol?playvideoid=1024108351">
 	        					<img alt="" src="img/1560097236799.jpg"  style="position:absolute; z-index:0; left: 190px;" width="1140" height="400">
 	        				</a>
 	        				</div>
					</li>
				</ul>
			</div>
			<div class="lr-tab">    <!-- 左右箭头 -->
				<div class="left btn"></div>
				<div class="right btn"></div>
			</div>
			<div class="tab-circle">   <!-- 下方的小圆圈 -->
				<ul>
					<li class="btn"></li>
					<li class="btn"></li>
					<li class="btn"></li>
					<li class="btn"></li>
					<li class="btn"></li>
					<li class="btn"></li>
					<li class="btn"></li>
				</ul>
			</div>
			<!-- 轮播图移动js代码 -->
			<script type="text/javascript">  
							var index=0;
							
							// 点击小按钮效果
							$(".tab-circle .btn").click(function(){
								index=$(this).index();  //获取点击该元素下标
								$(this).addClass("active").siblings().removeClass("active");
								$(".item").eq(index).fadeIn().siblings().fadeOut();
							});//点击事件点击到小按钮
							
							//点击切换的效果
							//右边
							$(".lr-tab .right").click(function(){
								index++;
								if(index>8){
									index=0;
								}
								$(".item").eq(index).fadeIn().siblings().fadeOut();
								$("").addClass("active").siblings().removeClass("active");
							});
							//左边
							$(".lr-tab .left").click(function(){
								index--;
								if(index<0){
									index=8;
								}
								$(".item").eq(index).fadeIn().siblings().fadeOut();
								$("").addClass("active").siblings().removeClass("active");
							});
							//定时器  自动切换
							var time = setInterval(function(){
								index++;
									if(index>8){
										index=0;
									}
									$(".item").eq(index).fadeIn().siblings().fadeOut();
									$("").addClass("active").siblings().removeClass("active");
								},4000);
						 </script>
						
		</div>
		<!-- 轮播图end -->
		
		
		<!-- 中心视频区start -->
		<div class="w">
			
			
			<div class="title-wrap">
				<div class="fenlei_left">最新视频</div>
				
				<div class="fenlei_right"><a href="http://localhost:8080/videoplayer/showvideo?showkey=date">更多</a></div>
			</div>
			
			<div  class="container">
			    
				<div class="video_container">
					
				<table width="1050px" border="0" align="center" >
				<tr style="height:320px;">
					<c:forEach items="${sessionScope.video_list_1}" var="video"  begin="0" end="7" varStatus="status">
						
							<td style='width:30px'>
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
									<a href="geren?gerenid=${video.authorId }">作者：${video.author}</a>
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
			</div>
			
			 <div class="title-wrap">
				<div class="fenlei_left">编辑精选</div>
				
				<div class="fenlei_right"><a href="http://localhost:8080/videoplayer/showvideo?showkey=date">更多</a></div>
			</div>
			
			
			<div  class="container">
			    
				<div class="video_container">
					
				<table width="1050px" border="0" align="center" >
				<tr style="height:320px;">
					<c:forEach items="${sessionScope.video_list_2}" var="video"  begin="0" end="7" varStatus="status">
						
							<td style='width:30px'>
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
									<a href="geren?gerenid=${video.authorId }">作者：${video.author}</a>
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
			</div>
			
			
		</div>
				
		
		<!-- 底部start -->
        <div class="footer">
        	<div class="w">
				<div class="botom-explain fl">
					<div class="logo">
						<img src="img/logo.jpeg" height="70px" width="150px" align="center">
						<span>用作品打动世界！</span>
					</div>
					<p class="website-description">新片场是国内专业的影视创作人社区，汇聚众多优秀创作人，提供作品展示、项目交流、拍摄制作机会等影视行业服务。在这里，你可以找到合适的创作人。在这里，用作品打动世界！</p>
				</div>
        		
				<div class="bottom-help fr">
						<dl>
						<dt>关于</dt>
						<dd><a href="#">关于我们</a></dd>
						<dd><a href="#">使用帮助</a></dd>
						<dd><a href="#">加入我们</a></dd>
						<dd><a href="#">用户协议</a></dd>
						<dd><a href="#">企业店铺</a></dd>
					</dl>
					<dl>
						<dt>活动</dt>
						<dd><a href="#">NEW EAR青年电影季</a></dd>
						<dd><a href="#">创作吧少年</a></dd>
						<dd><a href="#">新片场高校巡展</a></dd>
						<dd><a href="#">更多活动/a></dd>
					</dl>
					<dl>
						<dt>新片场集团</dt>
						<dd><a href="#">新片场社区</a></dd>
						<dd><a href="#">新片场影业</a></dd>
						<dd><a href="#">新片场短视频</a></dd>
						<dd><a href="#">新片场营销</a></dd>
					</dl>
				</div>
        	</div>
        </div> 		
		<!-- 底部end -->
		
	</body>
</html>
