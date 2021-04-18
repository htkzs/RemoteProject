<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
    function register(){
    	$(#tip).load(
    	        "MobileServlet",
    	        "mobile="+$mobile
    	        <!--将function（）直接省掉   load：将服务端的返回值直接加载到#tip所选的元素中-->
    	     )
    }
    
</script>

</body>
     <input type="text" id="mobile" name="mobile"/>
     <input type="button" value="注册" onclick="register()"/>
     <span id="tip"></span>

</html>