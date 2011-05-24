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
<br><div align="right">
<a href="Logout.jsp" >Logout</a>
</div>
<div align="left">
<a href="AdminMasterPage.jsp" >Home</a>
</div>
<br>
<br>
<b> <u> <font face="Times New Roman" size="3"> Order Form for Stock </font> </u> </b>
<br>
<br>
<form method="post" action="orderresult.jsp">
Manager Name: &nbsp; <input type="text" name="txtManagerName" size="30"> <br>
WareHouse Address: &nbsp; <input type="text" name="txtWareHouseAddress" size="50"> <br>
Country: &nbsp; <input type="text" name="txtCountry" size="10"> <br>
Phone no:  &nbsp; <input type="text" name="txtPhoneNumber" size="10"> <br>
Mobile no: &nbsp; <input type="text" name="txtMobileNumber" size="10"> <br>
Stock Category: &nbsp;
<select name="cbStockCategory">
<option> Food Items </option>
<option> Beverages </option>
<option> Fruits </option>
<option> Vegetables </option>
<option> Grocery </option>
</select>
<br>
Item name: &nbsp; <input type="text" name="txtItemName" size="20"> <br>
Quantity:  &nbsp; <input type="text" name="txtQuantity" size="10"> <br>
Deliver Mode: &nbsp;
<select name="cbDeliverMode">
<option> Road </option>
<option> Rail </option>
<option> Airways </option>
<option> Ship </option>
</select>
<br>
Payment Mode: &nbsp; <input type="text" name="txtPaymentMode" size="10"> <br>
<br>
<input type="submit" value="Submit"> 
<input type="reset" value="Reset">
</form>
<br>
<br>
<a href="AdminMasterPage.jsp"> Go Back </a>
</body>
</html>





