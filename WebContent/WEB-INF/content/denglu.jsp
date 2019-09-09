<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>

<style type="text/css">
      
        #loginDiv{    /* 整个登录选框的大小位置 */
            border: 1px solid #646464;
            margin:100px auto;
            width: 360px;
            height: 420px;
        }

        #user{
			width: 300px;
            height: 30px;
			margin: 30px 0 0 auto;
        }
        #password{
            width: 300px;
            height: 30px;
			margin: 20px 0 0 auto;
        }
        
       #loginbutton{      /* 登录按钮 */
            margin-left: 90px;
            width: 200px;
            height: 50px;
            margin-top: 70px;
            background-color: aliceblue;
            color: burlywood;
            border:1px solid;
            border-radius:6px;
            font: normal 20px/44px "Microsoft Yahei";
        }
		#loginbutton:hover{      /* 登录按钮 */
		    margin-left: 90px;
		    width: 200px;
		    height: 50px;
		    margin-top: 70px;
		    background-color: lavender;
		    color: lightcoral;
		    border:2px solid;
		    border-radius:6px;
		    font: normal 24px/44px "Microsoft Yahei";
			cursor: pointer;
		}
		
		input {
				margin:5px 0 ;
				width:250px;
				height: 30px;
				background: #FFF;
				background: rgba(200, 200, 250, .5);
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
			border-radius: 6px;
			border: 1px solid rgba(255, 255, 255, .15);
			font-size: 15px;
			color: #000;
		} 
		
        
		#returnmain {  /* 返回首页按钮 */
			 margin-left: 250px;
			 width: 100px;
			 font-size: 20px;	
			}
		a {
			  color: #555B63;
			  text-decoration: none;  /* 取消超链接下面的下划线 */
		  }
		a:hover{
			color: #F10215;
		  }
    </style>

</head>
<body  background="img/蓝天.jpg">
<form name="login" action="backdenglu" method="post">
	<div id = "loginDiv">
		<font color="red">${requestScope.message }</font>
		
		<p style="line-height: 45px; text-align: center; font-size: 30px; color: #016FCB;">登录</p>
		
		<div id="user">
			<input type="text" placeholder="手机号或邮箱" id="zhanghao" name="zhanghao" style="height: 30px; width: 250px;">
		</div>
		
		<div id="password">
			<input type="password" placeholder="请输入密码" id="password" name="password" style="height: 30px; width: 250px;"/>
		</div>
		
		<input type="submit" id="loginbutton" value="登录" />
		
		<p  id="returnmain">
			<a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=mainView">返回首页</a><br><br>
		</p>
	</div>
	
</form>

</body>
</html>

 