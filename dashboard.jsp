<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/css/all.min.css">

    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="assets/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <link href="assets/css/easy-autocomplete.min.css" rel="stylesheet">
    <link href="assets/css/backend.css" rel="stylesheet">

    <style>
        .all_issued {
            background-color: red;
            color: white;
        }

        .search_txtbox {
            font-size: 17px !important;
            border: 2px solid #e85454 !important;
            padding: 5px !important;
            height: 68px !important;
            box-shadow: 0px 2px 19px 0px rgb(21 18 18 / 18%);
        }

        .border-radius-0 {
            border-radius: 0 !important;
        }

        .dewey_holder {
            right: 0;
            text-align: right;
            bottom: -24px;
            background-color: black;
            color: white;
        }

        .book_wrapper {
            box-shadow: 0px 19px 50px 0px rgb(21 18 18 / 25%);
            padding-bottom: 3%;
        }
        .column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
    </style>

    <style>

        
        .carousel-item {
            background-color: #000000;
        }

        .back-to-top, .team-content::before, .portfolio-menu ul li::before {
            background-color: #e85454;
        }

        .single-features .features-title-icon .features-icon i {
            color: #e85454;
        }

        .pricing-style, .team-style-eleven {
            background: linear-gradient(#262626 0%, #e85454 100%);
        }

        .btn {
            outline: 0 !important;
        }

        .light-rounded-buttons .light-rounded-two, .navbar-area.sticky .navbar .navbar-btn li a.solid,
        .btn_preview, .btn_open_link, .btn_subscribe, .btn_preview:hover, .btn_open_link:hover, .btn_subscribe:hover {
            background-color: #e85454;
            border-color: #e85454;
        }

        .form-input .input-items.default input:focus, .form-input .input-items.default textarea:focus {
            border-color: #e85454




        }

        .logo_img {
        width:140px;

        }

    </style>
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
                       class="nav-link  ">
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
        
                            <font color="black"><b>welcome admin</b></font>

                                <div class="container">
                        
                                                    <div class="row justify-content-center">
                                            <div class="col-lg-12 col-md-12">
                                                <div class="section-title text-center pb-10">
                                                    <h3 class="title">Available Books</h3>
                                                                            </div> <!-- section title -->
                                            </div>
                                        </div> <!-- row -->
                                        <div class="row book_wrapper" id="basic_mode">
                                                    <div class="col-lg-9 col-md-9">
                                                        <div class="row no-gutters grid mt-15">
					<table border='1' WIDTH='100%'>
						<tr>
						<td colspan="7"><a href="add.html">Add New Book</a></td>
						</tr>
						<tr>
<TD style="color:darkgreen" WIDTH='50%'><b><u>Book Name</u></b></TD>
<TD style="color:darkgreen" WIDTH='20%'><b><u>Rack No</u></b></TD>
<TD style="color:darkgreen" WIDTH='20%'><b><u>IMAGE</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>ISBN</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>NO OF BOOKS</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>DELETE</u></b></TD>				
							
						</tr>
						   <%
                                                            String lin= request.getParameter("userName");
                                                            String branch= request.getParameter("branch");
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                Connection conn = null;
                                                                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
                                                                Statement stmt = null;
                                                                stmt = conn.createStatement();
                                                                String query = "select * from addbooks order by rn";
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
                                                               %>
                                                                   
						<tr>
										<td>  <%=r %>
										<td><%=q %>
										<td><a class="w-100" href="<%=o %>">  <img style="padding: 5px;height: 162px;" src="./img/<%=n %>" alt="Basic Electronics Engineering">  </a>
										<td><%=s %></td>
										<td><%=p %></td>
										<td><a href="delete.jsp?id=<%=rs.getString("bc") %>"><button type="button" class="delete">Delete</button></a></td>
								 <%      
								 }
                                                        %>

					</TABLE>
                                                        </div> <!-- row -->
                                                    </div>
                                                </div> <!-- row -->
                                                                                </div> <!-- container -->
                        
                           
                        
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
</body>
</html>
