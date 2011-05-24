<html>
<body bgcolor="pink">
<%!
        String Username;
%>
<%
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires",0L);
response.setHeader("Pragma","No-cache");
%>
<%
System.out.println("session: "+session);
Username =(String)session.getValue("adminusername");
if(Username==null)

{
%>
<jsp:forward page ="LoginPage.jsp"/>

<%
}
%>

<center>
<font face="Times New Roman" size="4"> <b> <u> Online Stock </b> </u> </font>
</center>
<br>
<div align="right">
<a href="Logout.jsp" >Logout</a>
</div>
<br>
<br>
<b> <u> <font face="Times New Roman" size="3"> Category of Stock -: </font> </u> </b>
<br>
<br>
<a href="food.jsp"> Food Items </a> <br>
<a href="beverages.jsp"> Beverages </a> <br>
<a href="fruit.jsp"> Fruits </a> <br>
<a href="vegetable.jsp"> Vegetables </a> <br>
<a href="grocery.jsp"> Grocery </a> <br>
<a href="chocolates.jsp"> Chocolates </a> <br>
<br>
<br>
<a href="orderstock.jsp"> Click here to order stock </a>

<br>
<br>
</body>
</html>





