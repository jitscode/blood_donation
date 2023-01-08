<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String s1=null;
String s2=null;
%>
<%
String name=request.getParameter("username");
String pass=request.getParameter("password1");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","tiger");
PreparedStatement st=con.prepareStatement("select username,password1 from userbd where username=?");
st.setString(1,name);
ResultSet rs= st.executeQuery();
if(rs.next())
{
	s1=rs.getString(1);
	s2=rs.getString(2);
}
if(name.equalsIgnoreCase(s1) && pass.equalsIgnoreCase(s2))
{
	session.setAttribute("username",name);
	response.sendRedirect("welcome1.jsp");
}
else
{%>
	<h2>Input Correct Username/Password</h2>
	<jsp:include page="login.jsp
	"></jsp:include>
<% }
%>
</body>
</html>