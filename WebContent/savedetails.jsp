<%@ page import="p1.userdao"%>
<jsp:useBean id="u" class="p2.userbean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=userdao.insert(u);
if(i>0){ %>
	<h2 style="text-align:center">Your Details Saved</h2>
	<jsp:include page="welcome1.jsp"></jsp:include>
<%}
else{
	%>
	<h2 style="text-align:center">Please use the same username while registration!</h2>
	<jsp:include page="welcome1.jsp"></jsp:include>
<%
}
%>