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
			//����������������ʽ��������ظ��ͻ��˵Ļص���������
			
			//���õ�����$.getJSON()��ʽ�򷵻�JSON��ʽ���͵�Msg  {\"msg\":\"�û����ڣ���½�ɹ�!\"}
			//out.write("{\"msg\":\"�û����ڣ���½�ɹ�!\"}")
			out.write("�û����ڣ���½�ɹ�");
		}else{
			out.write("�û������ڣ���¼ʧ�ܣ�");
			//out.write("{\"msg\":\"��½ʧ��!\"}");
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
