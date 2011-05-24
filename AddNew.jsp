<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
        <h1>Add New Item!</h1>
        <form name="AddToDatabase" action="AddToDatabase.jsp" method="POST">
        <br><div align="right">
        <a href="Logout.jsp" >Logout</a>
        </div>
        <div align="left">
        <a href="AdminMasterPage.jsp" >Home</a>
        </div>
     
        <br>
         <table border="1">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Current Stock</th>
                </tr>
            </thead>
            <tbody>
               
                <tr>
                    <td><b>ItemName :</b></td>
                    <td><input type="text" name="ItemName" value="" /></td>
                </tr>
                <tr>
                    <td><b>Current Stock :</b></td>
                    <td><input type="text" name="CurrentStock" value="" /></td>
                </tr>
		   	<tr>
                    <td><b>Item Type:</b></td>
                    <td><input type="text" name="ItemType" value="<%=request.getParameter("ItemType")%>" readonly /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="AddItem" name="btnAddItem" /></td>
                    <td><input type="submit" value="Cancel" name="btnCancel" /></td>
                </tr>
            </tbody>
        </table>
        </form>
 </Center>
    </body>
</html>
