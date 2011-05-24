<%@ page import="stock.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

 <script type ="text/javascript" >
    function TextboxEmptyValidation()
    {
    var userName=document.getElementById("txtUserName").value;

    var password=document.getElementById("pwdPassword").value;


    if (userName=="")
   {
    alert("Username cannot be Empty");
    }
    

   if (password=="")
    {
    alert("Password cannot be Empty");
    }


   }

</script>

    </head>
    <body bgcolor="#00FFFF" onload="history.go(1);">

<center>
        <h1>Login Page</h1>
       <%! String buildNum="";%>
       <%
           RetrieveBuildNumber obj=new RetrieveBuildNumber();
           buildNum=obj.getBuildNumber();
           System.out.println("buildNum :"+buildNum);
          //request.setAttribute("buildNum",buildNum);

         %>
        <h6>Build: <%=buildNum%></h6>
	<br/><br/><br/><br/>
	<%
	if((String)request.getAttribute("message")==null)
		request.setAttribute("message","");
	%>
    <font color="red">	<h5><%=(String)request.getAttribute("message")%></h5></font>
        <form name="AfterLogin" action="Authenticate.jsp" method="POST">
      <table border="1" width="0" cellspacing="0">
            <tbody>
                <tr>
                    <td>UserName : </td>
                    <td><input type="text" id="txtUserName" name="txtUserName" value="" /></td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td><input type="password" id="pwdPassword" name="pwdPassword" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login" name="btnLogin" /></td>
                    <td><input type="reset" value="Cancel" name="btnCancel" /></td>
                </tr>
            </tbody>
        </table>
         </form>
</center>

    </body>
</html>
