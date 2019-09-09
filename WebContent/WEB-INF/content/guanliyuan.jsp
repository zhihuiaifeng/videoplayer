<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统管理员界面</title>
<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
　　<script src="http://vjs.zencdn.net/c/video.js"></script>
</head>
<body>
${sessionScope.vuser.name }的管理员中心<br><br>
<form action="tuichu"><input type="submit" value="退出登录"></form><br>
<a href="mainView">返回首页</a>
<br>
<table border="1">
	<tr>
		<th>视频标题</th><th>简介</th><th>作者</th><th>上传时间</th><th>视频</th><th>审核</th>
	</tr>
	<c:forEach items="${requestScope.video_list }" begin="0" end="9" var="video">
		<tr>
			<td>${video.biaoti }</td>
			<td>${video.jianjie }</td>
			<td>${video.author }</td>
			<td>${video.date }</td>
		   
		    <td> <video  class="video-js vjs-default-skin" controls  preload="auto" width="200" height="140" poster="${video.imgurl}" data-setup="{}">
　　　　                            <source src="${video.url }" type="video/mp4">
            </video></td>
			
			<td><a href="http://localhost:8080/videoplayer/updatevideo?updateId=${video.id}">通过</a><br><br>
				<a href="http://localhost:8080/videoplayer/deletevideo?deleteId=${video.id}">不通过</a>
			</td>
			
		</tr>
	</c:forEach>
</table>
</body>
</html>