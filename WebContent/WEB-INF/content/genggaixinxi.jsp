<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#update-gereninfo {
		margin-top:30px;
		margin-left:400px;
		width: 680px;
		height: 250px;		
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
		 width: 480px;
		 height: 80px;
		 border-radius: 0px;
		 border: 1px solid #000000;
		 font-size: 18px;
		 color: #000;
	 }
	 
	 #header h1{
		padding-top:30px;
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:black;
		font-size:45px;
		text-align: center;
		
	}
	#header h6{
		padding-top:30px;
		font-family: "Myriad Pro", Helvetica, Arial, sans-serif;
		color:red;
		font-size:10px;
		text-align: center;
		
	}
	#queren {
		margin-top: 20px;
		margin-left:200px;
		width: 55px;
		height: 25px;
		border-radius: 0px;
		border: 1px solid #000000;
		font-size: 18px;
		color: #000;
		cursor:pointer;
	}
</style>
</head>
<body  background="img/蓝天.jpg">

<div id="header">
		<h1>修改个人信息</h1>      
		<h6>不填为不修改，本页面为私人页面，请注意安全</h6>
	</div>
	
<div id="update-gereninfo">
			<form name="update-info" action="genggai" method="post" >
				昵&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 称：<input type="text" id="rename" name="rename" value="${sessionScope.vuser.name} " /><br />
				密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 码：<input type="text" id="repassword" name="repassword" value="${sessionScope.vuser.password} "  /><br />
				备 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 注：<input type="text" id="rebeizhu" name="rebeizhu" value="${sessionScope.vuser.beizhu} "/><br />
				<input type="submit" id="queren" value="确认" />
			</form>
	</div>
</body>
</html>