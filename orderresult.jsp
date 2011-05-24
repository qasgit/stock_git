<html>
<body bgcolor="pink">
<%@ page import="stock.*"%>
<%@ page import="java.sql.*"%>
<%!
       int orderno = 0;
%>



<%!

String message="Item Unable To Add";
String query="";
String Manager_Name,WareHouse_Address,Country,Phone_num,Mobile_Num,Stock_Category,Item_Name,Quantity,Deliver_Mode,Payment_Mode;
int orderId=0;
%>
<%

int i=0;
ResultSet rs=null;

CJdbc obj=new CJdbc( );
orderId=obj.getNewOrderId();
System.out.println("orderId : "+orderId);

Manager_Name=request.getParameter("txtManagerName");
WareHouse_Address=request.getParameter("txtWareHouseAddress");
Country=request.getParameter("txtCountry");
Phone_num=request.getParameter("txtPhoneNumber");
Mobile_Num=request.getParameter("txtMobileNumber");
Stock_Category=request.getParameter("cbStockCategory");
Item_Name=request.getParameter("txtItemName");
Quantity =request.getParameter("txtQuantity");
Deliver_Mode=request.getParameter("cbDeliverMode");
Payment_Mode=request.getParameter("txtPaymentMode");



System.out.println("Manager_Name : "+Manager_Name);
System.out.println("Warehouse_Address : "+WareHouse_Address);
System.out.println("Country : "+Country);
System.out.println("Phone_num : "+Phone_num);
System.out.println("Mobile_Num : "+Mobile_Num);
System.out.println("Stock_Category : "+Stock_Category);
System.out.println("Item_Name : "+Item_Name);
System.out.println("Quantity : "+Quantity );
System.out.println("Deliver_Mode : "+Deliver_Mode);
System.out.println("Payment_Mode: "+Payment_Mode);
System.out.println("Bool : "+(Item_Name!=""));
//System.out.println("Bool : "+ItemType.equals("FoodItem"));
if (Item_Name!="")
{
	query="insert into tblOrderDetails( Managername ,WareHouse_Address ,Country ,Phone_Num ,Mobile_Num ,Stock_Category ,Stock_Name ,Quantity ,Deliver_Mode ,Payment_Mode) values('"+Manager_Name+"' ,'"+WareHouse_Address+"' ,'"+Country+"' ,"+Phone_num+" ,"+Mobile_Num+" ,'"+Stock_Category+"' ,'"+Item_Name+"' ,"+Quantity+" ,'"+Deliver_Mode+"' ,'"+Payment_Mode+"')";
	//PageToBeIncluded ="food.jsp";
	//System.out.println("PageToBeIncluded : "+PageToBeIncluded);
	System.out.println("query: "+query);
	i=obj.executeUpdate(query);
	obj.con.close();
	System.out.println("i : "+i);
	obj.con.close();

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
<b> <u> <font face="Times New Roman" size="3"> Order Result </font> </u> </b>
<br>
<br>
Your order no: <font face="Times New Roman" size="3" color="blue"> <%= orderId %> </font>
<br>
<p>
Your order details have sent to vendor/shopkeeper. It may takes one day or week or month to process your order details depend your order information.
</p>
<br>
<br>
<font face="Times New Roman" size="5" color="violet"> Thank You !! </font>
<br>
<br>
<a href="AdminMasterPage.jsp"> Go Back </a>
</body>
</html>





