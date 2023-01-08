<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="view.css"> 
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%@page import="p1.userdao,p2.userbean,java.util.*" %>
<div class="banner">
        <div class="navbar">
        <img src="Images/logo-1.png" class="logo">
<ul>
            <li><a href="facts.jsp">Facts</a></li>
                <li><a href="contactus.jsp">CONTACT US</a></li>
                <li><a href="index.jsp">HOME</a></li>
            </ul>     
        </div>
         <a class="button" href="logout.jsp">
  	<img src="Images/logout.png">
  <div class="logout">LOGOUT</div>
</a>    
<%
String Name=request.getParameter("username");
List<userbean> list=userdao.getAllRecords(Name);
request.setAttribute("list",list);
%>
<h2>Your Details</h2>
<table style="align:center">
<tr><th>Username</th><th>Age</th><th>Blood Group</th>
<th>Sex</th><th>State</th><th>District<th>Address</th></th><th>Mobile</th></tr>

<% for(userbean x:list) { %>

<tr><td><%= x.getUsername() %></td><td><%= x.getAge() %></td><td>
<%= x.getBloodgroup() %></td><td><%= x.getSex() %></td><td><%= x.getState() %></td>
<td><%= x.getDistrict() %></td><td><%= x.getAddress() %></td><td><%= x.getMobile() %></td>
 <% } %>
</table>
        </div>
        <footer class="footer">
  	 <div class="container">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>KNOW US</h4>
  	 			<ul>
  	 				<li><a href="#">about us</a></li>
  	 				<li><a href="#">contact us</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Address</h4>
  	 			<ul>
  	 				<li><h5 style="color: aliceblue">Bhubaneswar,Odisha,India</h5></li>
  	 			</ul>
  	 		</div>
  	 		
  	 	</div>
  	 </div>
  </footer>
</body>
</html>