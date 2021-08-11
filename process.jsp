<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String user = request.getParameter("userName");
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String password = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/library";
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from users where uname = '"+ user + "'");
if (rs.next()) { 
password = rs.getString("pass");
} 
if(Newpass.equals(conpass))
{
if (password.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update users set pass='"+ Newpass + "' where uname='"+ user + "'");
out.println("Password changed successfully");
st.close();
con.close();
} else {
out.println("invalid details");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>