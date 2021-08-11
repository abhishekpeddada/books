import java.sql.*;
import jakarta.servlet.*;

public class deletemember extends GenericServlet
{
                     Connection con;

          public void init(ServletConfig sc)
          {
           try
           {
            super.init(sc);
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");
           }
           catch(Exception e){e.printStackTrace();}
          }

          public void service(ServletRequest req,ServletResponse res)
          {
           try
           {
            Statement st = con.createStatement();
            String st1 = req.getParameter("userName");
            int j =st.executeUpdate("delete from student1 where userName='"+st1+"'");
            ServletOutputStream sos = res.getOutputStream();
            if(j>0)
             sos.println("<html><body bgcolor = pink><h1>Member is deleted</h1></body></html>");
            else
             sos.println("<html><body bgcolor = pink><h1>Member is not deleted</h1></body></html>");
           }
           catch(Exception ex){ex.printStackTrace();}
          }
}
             


