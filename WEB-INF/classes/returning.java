import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
public class returning extends HttpServlet
{
          public void doPost(HttpServletRequest req,HttpServletResponse res)
          {
           try
           {
            
           String st1 = req.getParameter("lin");
            String st2 = req.getParameter("lbn");
            String st3 = req.getParameter("ldoi");
            String st4 = req.getParameter("ldoe");
			 String st5 = req.getParameter("lbc");
			String st6 = req.getParameter("branch");
			System.out.println(st1+" "+st2+" "+st3+" "+st4+" "+st5+" "+st6);
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");
			System.out.println("connection sucessfull");
				 PreparedStatement pst = con.prepareStatement("Select bn,bc,nob from addbooks where bn=? and bc=?");
            pst.setString(1, st2);
			pst.setString(2, st5);
          
            ResultSet rs = pst.executeQuery();
		
            if (rs.next()) { 
			 PreparedStatement pst1 = con.prepareStatement(" Select uname from users where uname=?");
            pst1.setString(1, st1);
            ResultSet rst = pst1.executeQuery();
		
            if (rst.next()) {
				 PreparedStatement gst = con.prepareStatement(" Select nob from addbooks where nob>0 && bc = '"+st5+"'");
				 ResultSet ms = gst.executeQuery();
				  if (ms.next()) {
			Statement st= con.createStatement();
 int r =st.executeUpdate("delete from issue where lin='"+st1+"' and lbc='"+st5+"'");

if(r==0)
out.println("<html><body><h1>The data is not added</h1></body></html>");
else{
out.println("<html><body><h1>The data is deleted successfully</h1></body></html>");
Statement str=con.createStatement();   //creating the sql statement

int rg=str.executeUpdate("UPDATE addbooks SET nob=nob+1 where bc='"+st5+"' ");

if(rg==0)
out.println("<html><head></head><body ><h1>Data updation failure</h1></body></html>");  
else
out.println("<html><head></head><body ><h1>Data updation sucess</h1></body></html>");  
con.close();
con.close();
str.close();
			
con.close();
			st.close();
			pst.close();
				  }
				  }
				    else{
		  out.println("<html><head></head><body ><h1>NO BOOKS TO ADD</h1></body></html>");  

			}}
         else {
               out.println("<html><head></head><body ><h1>INVALID CREDENTIALS</h1></body></html>");  

            }
			
		   
			}
			else{
				res.sendRedirect("error.html");
            }
		 
		  }
		   catch(Exception e)
		   {
			e.printStackTrace();   
		   }
          }
			}