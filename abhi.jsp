<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- Bootstrap DataTable CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
<!-- jQuery js-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<!-- Bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- jQuery Datatable js -->
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<!-- Bootstrap Datatable js -->    
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
</head>
<table id="example_table" class="table">
<thead>
<tr>
	<th>image</th>
	<th>Name</th>
</tr>
</thead>
<tbody>
  <%
                                    String lin= request.getParameter("userName");
                                    String branch= request.getParameter("branch");
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = null;
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
                                        Statement stmt = null;
                                        stmt = conn.createStatement();
                                        String query = "select * from addbooks";
                                        ResultSet rs = null;
                                        rs = stmt.executeQuery(query);
                                        while(rs.next()){
                                    %>
                                    <%
                                    String n = rs.getString("image");  
                                    String o = rs.getString("url");
                                    String p = rs.getString("nob");
                                    String q = rs.getString("rn");
                                    String r = rs.getString("bn");
                                    String s = rs.getString("bc");
									String t = rs.getString("tags");
                                       %>
<tr>
	<td> <a  href="<%=o %>">   <img style="padding: 5px;height: 162px;" src="./img/<%=n %>"  alt="A Short History of Nearly Everything">  </a></td>
		<td><%=r %></td>
</tr>
 <%      
                                    }
                                %>
</tbody>
</table>
<script>
      $(document).ready( function () {
          $('#example_table').DataTable();
      } );
    </script>
					</html>