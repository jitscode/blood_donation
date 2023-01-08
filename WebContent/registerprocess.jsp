<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String username=request.getParameter("username");
String email=request.getParameter("email");
String pass1=request.getParameter("password1");
String pass2=request.getParameter("password2");
if(pass1.equals(pass2))
{
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","tiger"); 
PreparedStatement st=con.prepareStatement("insert into userbd values(?,?,?,?,?)");
st.setString(1,username);
st.setString(2,name);
st.setString(3,email);
st.setString(4,pass1);
st.setString(5,pass2);
int i=st.executeUpdate();
if(i>0)
{ %>
	<h2>Registration Successful</h2>
	<jsp:include page="register.jsp"></jsp:include>
 <% }
else
{ %>
	<h2>Registration Error </h2>
	<jsp:include page="register.jsp
	"></jsp:include>
<% }
}
catch(Exception e){
	out.print(e);
}
}
else
{%>
	<h2>Password Unmatched</h2>
	<jsp:include page="register.jsp"></jsp:include>
<% }
%>
</body>
</html>