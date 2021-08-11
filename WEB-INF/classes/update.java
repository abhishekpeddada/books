import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "updateImage", urlPatterns = {"/updateImage"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class update extends HttpServlet {

    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result = 0;
        Part part = request.getPart("image");
        String str1 = request.getParameter("userid");
        if (part != null) {
            try {
                 Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");
                PreparedStatement ps = con.prepareStatement("update data(image,userid) values(?,?) where userid='"+str1+"'");
                InputStream is = part.getInputStream();
                ps.setBlob(1, is);
                ps.setString(2, str1);
                result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("view.jsp");
                } else {
                    response.sendRedirect("index.jsp?message=Some+Error+Occurred");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

}