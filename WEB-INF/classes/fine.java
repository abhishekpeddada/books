import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
public class fine extends HttpServlet
{
          public void doPost(HttpServletRequest req,HttpServletResponse res)
          {
           try
           {
            String str1 = req.getParameter("fin");
            String str2 = req.getParameter("amount");
			System.out.println(str1+" "+str2);
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");
			System.out.println("connection sucessfull");
			Statement st= con.createStatement();
int r=st.executeUpdate("INSERT INTO fine values("+str1+","+str2+") on duplicate key update amount= amount+200;");
if(r==0)
out.println("insertion failure");
else
out.println("added successfully");
con.close();
st.close();
           }
		   catch(Exception e)
		   {
			   
		   }
          }
			}