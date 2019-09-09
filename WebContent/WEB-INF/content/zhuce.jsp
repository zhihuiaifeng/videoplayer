<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>

 <style type="text/css">

        #house{     /* 外边框 */		
            border:1px solid #646464;;
			margin: 100px auto;
			width: 480px;
			height: 500px;
        }
        #register{   /* 账号密码位置 */
            width: 400px;
            margin-left: 5rem;  
        }
		
      
		#registerbutton{      /* 注册按钮 */
		    margin-left: 60px;
		    width: 200px;
		    height: 50px;
		    margin-top: 30px;
		    background-color: aliceblue;
		    color: burlywood;
		    border:1px solid;
		    border-radius:6px;
		    font: normal 20px/44px "Microsoft Yahei";
		    
		}
		#registerbutton:hover{      /* 注册按钮 */
		    margin-top: 30px;
		    color: black;
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

  <script type="text/javascript">
      
   	  function panduan()
	  {
   		 var zhanghao = document.getElementById("zhanghao").value;
   		 var name = document.getElementById("name").value;
   	   	 var pwd = document.getElementById("password").value;
         var pwd1 = document.getElementById("lkjh").value;
        
        if(!zhanghao){
       	 alert("账号为空");
        }else{
       	 if(!name){
           	 alert("请写上大名");
            }else{
           	 if(!pwd){
               	 alert("密码不能为空");
                } else{
               	 if(pwd == pwd1){
               		document.getElementById("register").submit();
                    }else{
                   	 alert("两次输入的密码不一致！");
                    }
                }
            }
        }
        
       	 }
   	 
    </script>
		
</head>
<body  background="img/蓝天.jpg">
	
		<div id="house">

            <form action="backzhuce" method="post" id="register"  name="zhuceform">
				<font color="red">${requestScope.message }</font>
				<font color="red">${requestScope.result }</font>
				<p style="line-height: 45px; text-align:center; font-size: 30px; color: #016FCB;">注册</p>
                <table>
                    <tr>
                        <td><p>账 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp号</p></td>
                        <td><input placeholder="请输入您的邮箱或手机号" type="text" id="zhanghao" name="zhanghao" style="height: 30px; width: 220px;"> </td>
                    </tr>
                     <tr>
                        <td><p>昵 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp称</p></td>
                        <td><input placeholder="请输入您的昵称" type="text" id="name" name="name" style="height: 30px; width: 220px;"> </td>
                    </tr>
                    <tr>
                        <td><p>登录密码</p></td>
                        <td><input type="password" placeholder="请输入您的密码" id="password" name="password" style="height: 30px; width: 220px;"></td>
                    </tr>
                      <tr>
                         <td><p>确认密码</p></td>
                        <td><input type="password" placeholder="确认输入密码" id="lkjh" name="lkjh" style="height: 30px; width: 220px;" onchange="panduan"></td>
                    </tr> 
 					
                </table>
                 <input type="button" id="registerbutton" value="注册"  onclick="panduan()" />
				<p id="returnmain">
					<a href="http://localhost:8080/videoplayer/tiaozhuan?yemian=mainView">返回首页</a>
				</p>
            </form>
        </div>

</body>
</html>