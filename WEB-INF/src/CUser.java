/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package stock;
import java.sql.*;

/**
 *
 * @author her
 */
public class CUser {
    private String userName="";
    private String password="";
    private String result="";
    public void setUserName(String userName)
    {
        this.userName=userName;
    }
    public void setPassword(String password)
    {
        this.password=password;
    }
    public String getUserName()
    {
        return userName;
    }
    public String getPassword()
    {
        return password;
    }
}

/*class Test{

	public static void main(String args[])
	{
		CUser  a=new CUser ();
			a.setUserName("admin");
			a.setPassword("admin");
			System.out.println(a.authenticate());
	}
}*/
