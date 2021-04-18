<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaScriptAJAX</title>
</head>
<script>
   function register(){
	   //通过javaScript方式获取要传递给服务端的值
	   var mobile=document.getElementById("mobile").value;
	   //通过AJAX方式将值传递给服务端区别以前的请求转发，重定向以及 action=""的传值方式
	   //此处定义全局变量，让他在整个方法中都有效。
	   xmlHttpRequest=new XMLHttpRequest();
	   //声明一个回调函数。
	    xmlHttpRequest.onreadystatechange=callBack;
	    xmlHttpRequest.open("post","MobileAJAXServlet",true);
	    xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	    xmlHttpRequest.send("mobile="+mobile);
	    //callBack主要用于接收服务端处理后的返回结果。
	    function callBack(){
	    	if(xmlHttpRequest.readyState==4&&xmlHttpRequest.status==200){
	    		//接收服务端已输出流形式返回的结果值。
	    		 alert("111");
	    		var data=xmlHttpRequest.responseText;
	    		if(data=="true"){
	    			alert("此号码已存在，请更换！");
	    		}else{
	    			alert("注册成功！");
	    		}
	    	}
	    } 
   }
</script>
<body>
     <input type="text" id="mobile" name="mobile"/>
     <input type="button" value="注册" onclick="register()"/>
</body>
</html>