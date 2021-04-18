<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
  
/*       function register(){ */
	<!--$(function(){
		 var mobile=$("#mobile").val();
		$("#but").click(function(){
			
			alert("dianle")
			  $.ajax({
		    	  url:"/MobileAJAXServlet",
		    	  data:{"mobile":mobile},
		    	  success:function(result){
		    		  alert("chenggong")
		    	  }
		    	  
		    	  
		    	  
		    	  
		      })
			
		})
		
		
	    
		
		
		
		
		
	})
    --> 
      function register(){
    	  var $mobile=$("#mobile").val();
    	  $.ajax({
    	    	url:"MobileServlet",
        	    data:"mobile="+$mobile, 		  
        	  success:function(result,testStatus){
        		  if(result=="true"){
        			  alert("已存在，注册失败！");
        		  }else{
        			  alert("注册成功！");
        		  }
        	  }, 
           error:function(xhr,errorMessage,e){
        	  alert("系统异常！");
              }
    	  });  
      }
      /*服务器处理结果将保存在result中  testStatus 服务器状态*/
       /*注意这里逗号不能忘记*/
     
</script>
<body>
<form>
  <input type="text" id="mobile" name="mobile" />
  <input type="button" value="注册" onclick="register()"/>
</form>
</body>
</html>