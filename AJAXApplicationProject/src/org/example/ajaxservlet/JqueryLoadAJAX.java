package org.example.ajaxservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JqueryLoadAJAX
 */
public class JqueryLoadAJAX extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JqueryLoadAJAX() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String mobile= request.getParameter("mobile");
		PrintWriter out = response.getWriter();
		if("17371167564".equals(mobile)){
			//服务端已输出流的形式将结果返回给客户端的回调函数处理。
			
			//若用到的是$.getJSON()方式则返回JSON格式类型的Msg  {\"msg\":\"用户存在，登陆成功!\"}
			//out.write("{\"msg\":\"用户存在，登陆成功!\"}")
			out.write("用户存在，登陆成功");
		}else{
			out.write("用户不存在，登录失败！");
			//out.write("{\"msg\":\"登陆失败!\"}");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
