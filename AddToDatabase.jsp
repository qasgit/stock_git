<html>
<head>

</head>
<%@ page import="stock.*"%>
<%@ page import="java.sql.*"%>
  

<%!
String PageToBeIncluded ="";
String message="Item Unable To Add";
String query="";
%>
<%

int i=0;
ResultSet rs=null;

CJdbc obj=new CJdbc( );
String ItemName="";
String CurrentStock="";
String ItemType="";

ItemName=request.getParameter("ItemName");
CurrentStock=request.getParameter("CurrentStock");
ItemType=request.getParameter("ItemType");

System.out.println("ItemType : "+ItemType);
System.out.println("Bool : "+ItemType.equals("FoodItem"));
if (ItemType.equals("FoodItem"))
{
	query="insert into tblFoodItems( Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
	PageToBeIncluded ="food.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}
else if(ItemType.equals("Beverages"))
{
	query="insert into tblBeverages( Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
	PageToBeIncluded ="beverages.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);

}
else if(ItemType.equals("Fruits"))
{
	query="insert into tblFruitItems( Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
	PageToBeIncluded ="fruit.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

else if(ItemType.equals("Vegetables"))
{
	query="insert into tblVegetableItems( Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
	PageToBeIncluded ="vegetable.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

else if(ItemType.equals("Grocery"))
{
	query="insert into tblGroceryItems( Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
	PageToBeIncluded ="grocery.jsp";
	System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

else if(ItemType.equals("Chocolates"))
{
	query="insert into tblChoclates( Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
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
message="Item Added Successfully";

%>
<b><%=message%></b>

<%
System.out.println("PageToBeIncluded : "+PageToBeIncluded);
}

%>
<jsp:include page="<%=PageToBeIncluded%>" />




</html>





