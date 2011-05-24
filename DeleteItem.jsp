<html>
<head>
<script language="JavaScript">

</script>
</head>

<%@ page import="stock.*"%>
<%@ page import="java.sql.*"%>

<%!
String PageToBeIncluded ="";
String message="Item Unable To Delete";
String query="";
%>
<%

int i=0;
ResultSet rs=null;

CJdbc obj=new CJdbc( );
String ItemName="";
String ItemType="";

ItemName=request.getParameter("ItemName");
ItemType=request.getParameter("ItemType");

System.out.println("ItemType : "+ItemType);
System.out.println("Bool : "+ItemType.equals("FoodItem"));
if (ItemName=="")
{

%>
<jsp:forward page="AdminMasterPage.jsp" />
<%
}
if (ItemType.equals("FoodItem"))
{
	query="delete from tblFoodItems where ItemName='"+ItemName+"'";
	PageToBeIncluded ="food.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}
else if(ItemType.equals("Beverages"))
{
	query="delete from tblBeverages where ItemName='"+ItemName+"'";
	PageToBeIncluded ="beverages.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);

}
else if(ItemType.equals("Fruits"))
{
	query="delete from tblFruitItems where Itemname='"+ItemName+"'";
	PageToBeIncluded ="fruit.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

else if(ItemType.equals("Vegetables"))
{
	query="delete from tblVegetableItems where Itemname='"+ItemName+"'";
	PageToBeIncluded ="vegetable.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

else if(ItemType.equals("Grocery"))
{
	query="delete from tblGroceryItems where Itemname='"+ItemName+"'";
	PageToBeIncluded ="grocery.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

else if(ItemType.equals("Chocolates"))
{
	query="delete from tblChoclates where Itemname='"+ItemName+"'";
	PageToBeIncluded ="chocolates.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}	


System.out.println("query: "+query);
if (query!="")
{
i=obj.executeUpdate(query);
obj.con.close();
System.out.println("i : "+i);
obj.con.close();
}
if(i>0)
{
message="Item Deleted Successfully";

%>
<b><%=message%></b>

<%
System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

%>
<jsp:include page="<%=PageToBeIncluded%>" />




</html>







