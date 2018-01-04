<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out内置对象</title>
</head>
<body>
<h1>out内置对象</h1>
<%
out.println("<h2>关雎</h2>");
out.println("关关雎鸠，在河之洲。窈窕淑女，君子好逑。<br>");
out.println("参差荇菜，左右流之。窈窕淑女，寤寐求之。<br>");
out.println("求之不得，寤寐思服。悠哉悠哉，辗转反侧。<br>");
out.flush();

//out.clear();       //会抛出异常
//out.clearBuffer(); //不会抛出异常
out.println("参差荇菜，左右采之。窈窕淑女，琴瑟友之。<br>");
out.println("参差荇菜，左右芼之。窈窕淑女，钟鼓乐之。<br>");
%>
缓冲区大小：<%= out.getBufferSize() %>byte<br>
缓冲区剩余大小：<%= out.getRemaining() %>byte<br>
是否自动清除缓冲区：<%= out.isAutoFlush() %><br>
</body>
</html>