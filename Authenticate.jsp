<%@ page import="stock.*"%>
<%@ page import="java.sql.*"%>
<%
	/*  Check whether the user trying to login is a valid user  */
	String username=request.getParameter("txtUserName");
	String password=request.getParameter("pwdPassword");
	if(username=="" || password=="")
	{
		request.setAttribute("message","Password or UserName cannot be blank ");
%>
<jsp:include page="LoginPage.jsp" />

<%	
	}
	/*  Connecting to database  */
	CJdbc objConnect=new CJdbc();
	session.setAttribute("Connection",objConnect.getconnection());
	String result=objConnect.authenticate(username,password);
	if(result.equals("Invalid"))
	{
		System.out.println("invalid user");
		/* If not a registered user   */
		request.setAttribute("message","Invalid User");
		%>
		<jsp:include page="LoginPage.jsp" />
		<%
	}
	else if(result.equals("admin"))
	{
				System.out.println("admin");
		/*  If user has the privilages of ADMINISTRATOR  */
		session.setAttribute("adminusername",username);
		/*  Forward him/her to the administrator master page  */
		response.sendRedirect("AdminMasterPage.jsp");
		String message="";
		request.setAttribute("message",message);	
	}

	else if(result.equals("Deactivated"))
	{
		System.out.println("Deactivated");
		/*  In case user has deactivated the account  */
		request.setAttribute("message","Your account has been deactivated");
		%>
		<jsp:include page="LoginPage.jsp" />
		<%
	}
	%>
