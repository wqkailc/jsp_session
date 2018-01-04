<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>九九乘法表</title>
</head>
<body>
	<%! 
	    //返回九九乘法表对应的HTML代码，通过表达式来调用，在页面上显示 
	    String MultiTable(){
		String s="";
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){
				s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
			}
			s+="<br>";//追加换行标签
		}
		return s;
	}
	
	void MultiTable1(JspWriter out) throws Exception{
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){
				out.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
			}
			out.println("<br>"); //追加换行标签
		}
	}
	
	%>
	<h1>九九乘法表</h1>
    <hr>
	<%= MultiTable() %>
	<br>
    <% MultiTable1(out);%>
    <br>
    
</body>
</html>