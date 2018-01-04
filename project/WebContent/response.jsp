<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    response.setContentType("text/html;charset=utf-8"); //设置响应的MINI类型
    
    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
    //out.flush();
    
    PrintWriter outer =response.getWriter();//获取输出流对象
    outer.println("大家好，我是response对象生成的输出流outer对象");
    //response.sendRedirect("reg.jsp");
    //请求重新定向
    //response.sendRedirect("request.jsp");
    //请求转发
    request.getRequestDispatcher("request.jsp").forward(request, response);
%>