<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传页面</title>
	<style type="text/css">
		
		#house {
			border:1px solid #646464;;
			margin-top: 100px;  /* 距离上部距离 */
			margin-left: 450px; 
			width: 500px;
			height: 450px;
		}
		h3{
			line-height: 45px;
			text-align: center;
			font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
			color:black;
			font-size:30px;
			}
			 input {
				margin:5px 0 ;
				width:250px;
				height: 30px;
				background: #FFF;
				border-radius: 6px;
				border: 1px solid rgba(255, 255, 255, .15);
				font-size: 14px;
				color: #000;
			} 
							
		input:hover{
			cursor: pointer;
			width:250px;
			height: 30px;
			background: #FFF;
			background: rgba(255, 255, 255, .3);
			border-radius: 6px;
			border: 1px solid rgba(255, 255, 255, .15);
			font-size: 15px;
			color: #000;
		} 
		.return {
			font-size: 24px;
			margin-left: 400px;
		}
		a {
			color: #000000;
			text-decoration: none;
		}
		a:hover {
			color: #F10215;
			font-size: 26px;
		}
	</style>
</head>
<body background="img/蓝天.jpg">

	<div id="house">
		<h3 align="center">欢迎上传视频</h3>
		<form id="upLoadVideo" name="upLoadVideo" action="upLoadVideo" enctype="multipart/form-data" method="post">
		  <table align="center">
			<tr>
			  <td>视频标题<input type="text" id="biaoti" name="biaoti" /></td>
			</tr>
			<tr>
				<td>视频简介<input type="text" id="jianjie" name="jianjie" ></td>
			</tr>
			<tr>
			  <td><input type="file" id="file" name="file"></td>
			</tr>
		  <tr><td><input type="submit" name="upload" id="upload" value="上传"/></td></tr>
		  </table>
		</form>
		
		 <div class="return">
			<a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=guanli">返回</a>
		</div>
		
	</div>
		
		
		
	
	
</body>
</html>
