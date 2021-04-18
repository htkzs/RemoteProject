<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>

function register(){
    var $mobile=$("#mobile").val();
      $.getJSON(
         "MobileServlet",
         {"mobile",$mobile}
         function(result){
   		  if(result.msg=="true"){
   			  alert("已存在，注册失败！");
   		  }else{
   			  alert("注册成功！");
   		  }
   	  }
     )
    }




</script>


</body>
</html>