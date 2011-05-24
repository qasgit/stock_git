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
<br><div align="right">
<a href="Logout.jsp" >Logout</a>
</div>
<div align="left">
<a href="AdminMasterPage.jsp" >Home</a>
</div>
<br>
<br>
<br>
<%
      String username  = request.getParameter("user");
      String password  = request.getParameter("pass");
      if(username.equals("admin") && password.equals("admin"))
      {
%>
<%
out.print("Congrulations, Successfully logged!!");
out.print("<a href='category.jsp'> Click here to move further.. </a>");

          }
%>
<%
        else
        {
%>
Sorry, Invalid Username or Password!!
<a href="index.jsp"> Click here to try again.. </a>
<%
   }
%>
</body>
</html>





