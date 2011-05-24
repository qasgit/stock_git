package stock;
import java.sql.*;
public class CJdbc
{
	public static Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
// funnction 1
//to create connections
//Hello Java

	public CJdbc( ) 
	{
		try
	 	{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_stock","root","");
			stmt = con.createStatement();
		}
		catch(ClassNotFoundException e)
			{
				e.printStackTrace();
			}
		catch(SQLException e)
			{
				e.printStackTrace();
			}
	}
	public static Connection getconnection()
	{
		return(con);
	}


// function 2
//to execute queries


	public ResultSet executeQuery( String sql)
	{
		try
		{
			rs = stmt.executeQuery(sql);
			
		}
		catch(SQLException e)
			{
				e.printStackTrace();
			}
		return rs;
	}

// function 3
//to execute updates


	public int executeUpdate( String sql)
	{
		int i=0;
		try
		{
			i = stmt.executeUpdate(sql);
			
		}
		catch(SQLException e)
			{
				e.printStackTrace();
			}
		return i;
	}

	public String authenticate(String userName, String password )
	{
		String result="Invalid";
		String type="";
		int status;
		String query ="select Status,User_Type from tblLoginMaster where Username='"+userName+"' and Password='"+password+"'";
		System.out.println("query : "+ query);
        	try {

                	rs=stmt.executeQuery(query);
                	int i=0;

                	if(rs.next())
                	{
                   	 	status=rs.getInt(1);
				System.out.println("status : "+ status);
				if(status==1)
				{
					result=rs.getString(2);
					System.out.println("result : "+ result);
					return result;
				}
				else
				{
					return "Deactivated";
				}
                     	}
                    	else
                    	{
                     		return result;
                    	}
                    }

          		catch(Exception e)
                	{
                        	System.err.println("Exception: " + e.getMessage());
                	}
                	finally
                	{
                    		try {
                        		if(CJdbc.con != null)
                        		CJdbc.con.close();
                        	    } catch(SQLException e)
                            	   {}
                    
	                }

	               return result;
	}
	public int getNewOrderId()
	{	
		String query ="select Order_Id from tblOrderDetails  order by Order_Id";
		int orderId=0;
		try {

                			rs=stmt.executeQuery(query);
                			int i=0;
			
                			if(rs.next())
                			{
                   	 		orderId=rs.getInt(1);
				System.out.println("orderId : "+ orderId);
				orderId=orderId + 1;
				return orderId;
                     		}
                    		else
                    		{
                     			return orderId;
                    		}
                    	     }

          			catch(Exception e)
                			{
                        			System.err.println("Exception: " + e.getMessage());
                			}
		return orderId;
	}


}



class Test{

	public static void main(String args[]) throws Exception
	{
		//CJdbc  a=new CJdbc ();
			
		//System.out.println(a.authenticate("admin","admin"));
		CJdbc obj=new CJdbc( );
String ItemName="OrangeBiscuit";
String CurrentStock="20";
String ItemType="FoodItem";
int i=0;
String query="insert into tblFoodItems(Itemname ,CurrentStock) values('"+ItemName+"' ,"+CurrentStock+")";
System.out.println("query: "+query);
i=obj.executeUpdate(query);
obj.con.close();
System.out.println("i : "+i);
obj.con.close();

	}
}
