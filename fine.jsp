<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <table class="table table-hover" border="5px" >
        <div class="inn-title">
 <h4>Fine</h4>
</div>
<thead>
<tr>
<th width="50%"><b>Id</b></th>
<th width="50%"><b>amount</b></th>
</tr>
</thead>
<tbody>

<%
String bin = (String) session.getAttribute("userid");
Class.forName("com.mysql.jdbc.Driver");
Connection con = null;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
Statement stmtt = null;
stmtt = con.createStatement();
String queryy = "select * from fine where fin='"+bin+"'";
ResultSet rss = null;
rss= stmtt.executeQuery(queryy);
while(rss.next()){
%>
<tr>
<%
String a = rss.getString("fin");  
String b = rss.getString("amount");

%>
<td><%=a %></td>
<td><%=b %></td>
</tr>               

<%      
}
%>

</tbody>
</table>