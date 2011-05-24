<%
response.sendRedirect(response.encodeRedirectURL("index.jsp"));
session.setAttribute("adminusername",null);
session.invalidate();
//System.out.println("sesssion valid in logout page :"+session.getAttribute("adminusername"));
//out.println("sesssion valid in logout page :"+session.getAttribute("adminusername"));
%>

