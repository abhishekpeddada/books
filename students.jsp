
<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Lib Mng | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://library-management.com/plugins/fontawesome-free/css/all.min.css">

    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="https://library-management.com/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <link href="https://library-management.com/css/easy-autocomplete.min.css" rel="stylesheet">
    <link href="https://library-management.com/css/backend.css" rel="stylesheet">

    <style>[wire\:loading], [wire\:loading\.delay], [wire\:loading\.inline-block], [wire\:loading\.inline], [wire\:loading\.block], [wire\:loading\.flex], [wire\:loading\.table], [wire\:loading\.grid] {display: none;}[wire\:offline] {display: none;}[wire\:dirty]:not(textarea):not(input):not(select) {display: none;}input:-webkit-autofill, select:-webkit-autofill, textarea:-webkit-autofill {animation-duration: 50000s;animation-name: livewireautofill;}@keyframes livewireautofill { from {} }</style>
        <style>
        .disp-none {
            display: none;
        }
    </style>
	        <script>  
var request=new XMLHttpRequest();  
function searchInfo(){  
var name=document.vinform.name.value;  
var url="memsearch.jsp?val="+name;  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;  
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
</script>
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
<!-- Navbar -->
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="https://library-management.com/dashboard" class="brand-link">
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="https://library-management.com/uploads/default.png"
                     class="img-thumbnail border-0 p-0"
                     alt="Admin">
            </div>
            <div class="info">
                <a href="#" class="d-block">Admin</a>
                                    <span class="badge badge-danger">Super Admin</span>
                                                                                                </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column nav-flat nav-child-indent text-sm" data-widget="treeview"
                role="menu"
                data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                     <li class="nav-item">
                        <a href="dashboard.jsp"
                           class="nav-link  active ">
                            <p>
                               dashboard
                            </p>
                        </a>
                    </li>
                <li class="nav-item">
                    <a href="add.html"
                       class="nav-link ">
                        <p>
                           Add books
                        </p>
                    </a>
                </li>

                                    <li class="nav-item">
                        <a href="issue.html"
                           class="nav-link ">
                            
                            <p>
                               Issue books
                            </p>
                        </a>
                    </li>
                
                
                    <li class="nav-item has-treeview ">
                        <a href="return.jsp" class="nav-link  ">
                           
                            <p>
                                Return books

                            </p>
                        </a>

                    </li>
 <li class="nav-item">
                                <a href="students.jsp"
                                   class="nav-link ">
                                  
                                    <p>Members</p>
                                </a>
                            </li>
               <li class="nav-item has-treeview ">
                        <a href="login.html"
                           class="nav-link ">
                           
                            <p>
                                Logout
                
                            </p>
                        </a></li>

        </nav>
        <!-- /.sidebar-menu -->

    </div>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="min-height: 311px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1> Dashboard </h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <section class="content">
                <div class="card">
        <div class="card-body">
                        <div class="row">
                            <font color="black"><b>Students</b></font>
                            </div>
                            <div class="row">
            
                    <!-- /.col -->

                    <!-- fix for small devices only -->
                    <div class="clearfix hidden-md-up"></div>
                    <!-- /.col -->
                    <div class="col-sm-6 col-md-3 col-6">
      
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                </div>
                                        <div class="row">
																								<span id="mylocation"></span> 
<span id="mylocation"></span> 
														                                 <form name="vinform" align=right>  
<input type="text" name="name" onkeyup="searchInfo()" class="container1__input" placeholder="search books taken">
</form>
                                        <table class="table table-hover">
                       
               &nbsp;&nbsp;&nbsp; <tr><td><b>student Id</b></td>
                     <td><b>Delete</b></td></tr>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = null;
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
                    Statement stmt = null;
                    stmt = conn.createStatement();
                    String query = "select uname from users";
                    ResultSet rs = null;
                    rs = stmt.executeQuery(query);
                    while(rs.next()){
                %>
  
                    <%
                String n = rs.getString("uname");  
                    
                    %>
					<tr>
                    <td><%=n %></td>  			
					<td><a href="deletemember.jsp?id=<%=rs.getString("uname") %>"><button type="button" class="delete">Delete</button></a></td>				 
                <%      
                    }
                %>
</tr>				
                </table>

                    <div class="col-md col-12">
                        <div id="visitorStats" style="height: 380px; width: 100%;">
                        </div>
                    </div>

                    <div class="col-md col-12">
                        <div id="popularBooks" style="height: 380px; width: 100%;">
                        </div>
                    </div>
                </div>
                                        <div class="row">
                    <div class="col-md col-12">
                        <div id="weeklyStats" style="height: 380px; width: 100%;">
                        </div>
                    </div>

                    <div class="col-md col-12">
                        <div id="monthlyStats" style="height: 380px; width: 100%;">
                        </div>
                    </div>
                </div>
                                                            </div>

    </div>
        </section>
    </div>
    <!-- /.content-wrapper -->



    <style>
        /* floating box style */
        .floating-form { /*contact form wrapper*/
            max-width: 300px;
            padding: 19px 27px 23px 22px;
            border: 1px solid #ddd;
            right: -250px;
            position: fixed; /*Form position fixed*/
            top: 10px;
            background-color: #343a40;
            color: white;
            z-index: 9999;
        }

        .contact-opener { /*opener button*/
            position: absolute;
            left: -60px;
            transform: rotate(-90deg); /* rotate button -90deg */
            top: 60px;
            padding: 9px;
            color: #fff;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.43);
            cursor: pointer;
            border-radius: 5px 5px 0px 0px;
            background-color: black;
        }
    </style>
</div>


<!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="https://library-management.com/js/jquery-1.12.4.js"></script>
<script src="https://library-management.com/js/jquery-ui.js"></script>
<link rel="stylesheet" href="https://library-management.com/css/jquery-ui.css">
<!-- Bootstrap 4 -->
<script src="https://library-management.com/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://library-management.com/plugins/sweetalert2/sweetalert2.min.css">
<script type="text/javascript" src="https://library-management.com/plugins/sweetalert2/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="https://library-management.com/css/jquery-confirm.min.css">
<script src="https://library-management.com/js/jquery-confirm.min.js"></script>
<script src="https://library-management.com/js/vue.js"></script>
<!-- AdminLTE App -->
<script src="https://library-management.com/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="https://library-management.com/js/demo.js"></script>
<script src="https://library-management.com/js/default.js"></script>
</body>
</html>
