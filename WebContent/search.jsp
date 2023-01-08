<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search By BG</title>
<link rel="stylesheet" href="welcome1.css"> 
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="banner">
        <div class="navbar">
        <img src="Images/logo-1.png" class="logo">
            <ul>
            <li><a href="facts.jsp">Facts</a></li>
                <li><a href="contactus.jsp">CONTACT US</a></li>
                <li><a href="index.jsp">HOME</a></li>
            </ul>
            <%
 String id=(String)session.getAttribute("username");%>
<h2 style="color:white">Welcome <%out.print(id);%></h2>
        </div>
        <a class="button" href="logout.jsp">
  	<img src="Images/logout.png">
  <div class="logout">LOGOUT</div>
</a>
        <div class="save">
            <form action="viewbg.jsp" method="post">
<input type="text" name="bloodgroup" placeholder="search blood group in CAPITAL LETTERS">
<input  type="submit" value="Find Donor">
</form>
        </div>
        
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