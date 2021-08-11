<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>College Library</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='//fonts.googleapis.com/css?family=Quattrocento+Sans' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<!--sample-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <!--====== Slick CSS ======-->
    <link rel="stylesheet" href="assets/css/slick.css">

    <!--====== Line Icons CSS ======-->
    <link rel="stylesheet" href="assets/css/LineIcons.css">
    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!--====== Default CSS ======-->
    <link rel="stylesheet" href="assets/css/default.css">

    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="assets/css/callout.css">
    <link rel="stylesheet" href="https://library-management.com/front/css/style.css">
    <script type="text/javascript" src="https://www.google.com/books/jsapi.js"></script>
    <script src="//kit.fontawesome.com/aba9065474.js" crossorigin="anonymous"></script>
	    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-91268321-2');
    </script>

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
<body>
<div class="btm_border">
<div class="h_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<h1><a href="index.html">College Library</a></h1>
		</div>
		<div class="social-icons">
			<ul>
			     <li><a class="facebook" href="#" target="_blank"> </a></li>
			     <li><a class="twitter" href="#" target="_blank"></a></li>
			     <li><a class="googleplus" href="#" target="_blank"></a></li>
			     <li><a class="pinterest" href="#" target="_blank"></a></li>
			     <li><a class="dribbble" href="#" target="_blank"></a></li>
			     <li><a class="vimeo" href="#" target="_blank"></a></li>
		   </ul>
		</div>	
		<div class="clear"></div>
	</div>
	<div class='h_btm'>
		<div class='cssmenu'>
			<ul>
			    <li class='active'><a href='index.jsp'><span>Home</span></a></li>
			    <li><a href='about.html'><span>About</span></a></li>
			    <li><a href='login.html'><span>Admin</span></a></li>
			    <li class='has-sub'><a href='userlogin.jsp'><span>Student</span></a></li>
			    <li class='last'><a href='contact.html'><span>Contact</span></a></li>
			 	<div class="clear"></div>
			 </ul>
	</div>

	<div class="clear"></div>
</div>
</div>
</div>
</div>
<!------ Slider_bg ------------>
<div class="slider_bg">
<div class="wrap">
	<!------ Slider------------>
		  <div class="slider">
	      	<div class="slider-wrapper theme-default">
	            <div id="slider" class="nivoSlider">
	                <img src="images/banner1.jpg" data-thumb="images/1.jpg" alt="" />
	                <img src="images/banner2.jpg" data-thumb="images/2.jpg" alt="" />
	                <img src="images/banner3.jpg" data-thumb="images/3.jpg" alt="" />
	            </div>
	        </div>
	      </div>
		<!------End Slider ------------>
		<div class="grids_1_of_3">
				<div class="grid_1_of_3 images_1_of_3">
					  <img src="images/icon1.jpg">
					  <h3>Lorem Ipsum is simply</h3>
					  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore pariatur.</p>
				</div>
				<div class="grid_1_of_3 images_1_of_3">
					  <img src="images/icon2.jpg">
					  <h3>Lorem Ipsum is simply</h3>
					  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore pariatur.</p>
				</div>
				<div class="grid_1_of_3 images_1_of_3">
					  <img src="images/icon3.jpg">
					  <h3>Lorem Ipsum is simply</h3>
					  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore pariatur.</p>
				</div>
				<div class="clear"></div>
			</div>
</div>
</div>
<!--main-->
<div class="main_bg">
<div class="main_btm">
	<div class="wrap">
		 <div class="main">
                            <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="section-title text-center pb-10">
                            <h3 class="title">Available Books</h3>
                                                    </div> <!-- section title -->
                    </div>
                </div> <!-- row -->
                
                            <div class="col-lg-9 col-md-9">
							  <div class="row">
                                    <div class="col-12">
                                        <input id="search_book" type="text" class="form-control search_txtbox"
                                               placeholder="Type here to search by { Title | Author | Publisher | Tag } &amp; Enter">
                                    </div>
                                </div>
                                <div class="row no-gutters grid mt-15">
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
										 <div
                                            class="col-lg-2 col-sm-3 col-4 mb-2 everyone">
                                            <div class="single-portfolio">
                                                <div class="portfolio-image">
                                                    <div class="dewey_holder">Shelf No
                                                        : --<%=q %></div>
                                                    <figure class="mb-0">
                                                        <a class="w-100"
                                                           href="<%=o %>">
                                                            <img style="padding: 5px;height: 162px;" src="./img/<%=n %>"
                                                                 alt="A Short History of Nearly Everything">
                                                        </a>
                                                        <figcaption class="fig_cap_holder "> <a>Available <%=p %></a>
															</figcaption>
                                                    </figure>
                                                </div>
                                            </div> <!-- single portfolio -->
                                            <div class="d-none title">
                                              <%=t %>
                                            </div>
                                        </div>
                                        <%      
                                    }
                                %>
                                </div> <!-- row -->
                            </div>
					<div class="slider">
	      	<div class="slider-wrapper theme-default">
	            <div id="slider" class="nivoSlider">
	                <img src="images/banner1.jpg" data-thumb="images/1.jpg" alt="" />
	                <img src="images/banner2.jpg" data-thumb="images/2.jpg" alt="" />
	                <img src="images/banner3.jpg" data-thumb="images/3.jpg" alt="" />
	            </div>
	        </div>
	      </div>
					<script type="text/javascript" src="js/jquery.lightbox.js"></script>
				    <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
				  	<script type="text/javascript">
				    $(function() {
				        $('.gallery a.gallery-img').lightBox();
				    });
				    </script>
					<div class="clear"> </div>
		</div>
	</div>
</div>
<!--footer-->
<div class="footer-bg">	
<div class="wrap">
<div class="footer">
  <div class="box1">
	<h4 class="btm">What We Do</h4>
	<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. ions from the 1914 below for those  by H. Rackham</p>
	<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those The standard chunk of Lorem Ipsum used since the 1500s is reproduced reproduced</p>
  </div>
   <div class="box1">
	<h4 class="btm">Categories</h4>
	<nav>
		<ul>
			<li><a href="#">The standard chunk of Lorem Ipsum used since </a></li>
			<li><a href="#">Duis a augue ac libero euismod viverra sitth</a></li>
			<li><a href="#">Duis a augue ac libero euismod viverra sit </a></li>
			<li><a href="#">The standard chunk of Lorem Ipsum used since </a></li>
			<li><a href="#">Duis a augue ac libero euismod viverra sit </a></li>
			<li><a href="#">The standard chunk of Lorem Ipsum used since </a></li>
			<li><a href="#">Duis a augue ac libero euismod viverra sit </a></li>
	    </ul>
	</nav>
	</div>
	<div class="box1">
		<h4 class="btm">Get in touch</h4>
		<div class="box1_address">
			<p>Bhimavaram,</p>
			<p>Andhra Pradesh,</p>
			<p>INDIA</p>
			<p>Phone:(00) 222 666 444</p>
			<p>Fax: (000) 000 00 00 0</p>
			<p>Email: <a href="mailto:info@gmail.com">xxxxxxxxx.com</a></p>
				   		<p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>

		</div>
	</div>
	<div class="clear"></div>			
</div>
</div>
</div>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
	<!--idont know-->
	<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://library-management.com/js/jquery-1.12.4.js"></script>
<script src="https://library-management.com/js/jquery-ui.js"></script>
<link rel="stylesheet" href="https://library-management.com/css/jquery-ui.css">
<script src="https://library-management.com/front/js/vendor/modernizr-3.7.1.min.js"></script>

<!--====== Bootstrap js ======-->
<script src="https://library-management.com/front/js/popper.min.js"></script>
<script src="https://library-management.com/front/js/bootstrap.min.js"></script>

<!--====== Slick js ======-->
<script src="https://library-management.com/front/js/slick.min.js"></script>

<!--====== Magnific Popup js ======-->
<script src="https://library-management.com/front/js/jquery.magnific-popup.min.js"></script>


<!--====== Isotope js ======-->
<script src="https://library-management.com/front/js/imagesloaded.pkgd.min.js"></script>
<script src="https://library-management.com/front/js/isotope.pkgd.min.js"></script>

<!--====== Scrolling Nav js ======-->
<script src="https://library-management.com/front/js/jquery.easing.min.js"></script>
<script src="https://library-management.com/front/js/scrolling-nav.js"></script>
<script src="/livewire/livewire.js?id=936e5d0fb0b76b631ba7" data-turbo-eval="false" data-turbolinks-eval="false"></script><script data-turbo-eval="false" data-turbolinks-eval="false">if (window.livewire) {console.warn('Livewire: It looks like Livewire\'s @livewireScripts JavaScript assets have already been loaded. Make sure you aren\'t loading them twice.')}window.livewire = new Livewire();window.Livewire = window.livewire;window.livewire_app_url = '';window.livewire_token = '2ULxOQVGhXKqtlXnia6x4EWXMSsHYMcMQJNHBaQt';/* Make sure Livewire loads first. */if (window.Alpine) {/* Defer showing the warning so it doesn't get buried under downstream errors. */document.addEventListener("DOMContentLoaded", function () {setTimeout(function() {console.warn("Livewire: It looks like AlpineJS has already been loaded. Make sure Livewire\'s scripts are loaded before Alpine.\n\n Reference docs for more info: http://laravel-livewire.com/docs/alpine-js")})});}/* Make Alpine wait until Livewire is finished rendering to do its thing. */window.deferLoadingAlpine = function (callback) {window.addEventListener('livewire:load', function () {callback();});};document.addEventListener("DOMContentLoaded", function () {window.livewire.start();});</script>
<script src="https://library-management.com/js/vue.js"></script>
<link rel="stylesheet" href="https://library-management.com/plugins/sweetalert2/sweetalert2.min.css">
<script type="text/javascript" src="https://library-management.com/plugins/sweetalert2/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="https://library-management.com/css/jquery-confirm.min.css">
<script src="https://library-management.com/js/jquery-confirm.min.js"></script>
<script src="https://library-management.com/js/default.js"></script>
<script src="https://library-management.com/front/js/main.js"></script>
<div wire:loading.delay.1000ms class="cust_overlay"
     >
    <div class="cv-spinner">
        <span class="spinner"></span>
    </div>
</div>
    <script>
        $(document).ready(function () {
            $(".bhoechie-tab-menu>div.list-group>a").click(function (e) {
                e.preventDefault();
                $(this).siblings('a.active').removeClass("active");
                $(this).addClass("active");
                var index = $(this).index();
                $(".bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                $(".bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
            });
            $("#home_bread").on("click", function (e) {
                e.preventDefault();
                window.livewire.emit('data_manager', {'sel_main_cat': '', "sel_sub_cat": ''});
            });
            $("#main_bread").on("click", function (e) {
                e.preventDefault();
                debugger;
                window.livewire.emit('data_manager', {"sel_sub_cat": ''});
            });
        });
    </script>
	<style>
    .cust_overlay {
        position: fixed;
        top: 0;
        z-index: 9999;
        width: 100%;
        height: 100%;
        left: 0;
        display: none;
        background: rgba(0, 0, 0, 0.6);
    }

    .cv-spinner {
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .spinner {
        width: 40px;
        height: 40px;
        border: 4px #ddd solid;
        border-top: 4px #2e93e6 solid;
        border-radius: 50% !important;
        animation: sp-anime 0.8s infinite linear;
    }
    @keyframes  sp-anime {
        100% {
            transform: rotate(360deg);
        }
    }
</style>
    <script>
        $(document).ready(function () {
            $(".bhoechie-tab-menu>div.list-group>a").click(function (e) {
                e.preventDefault();
                $(this).siblings('a.active').removeClass("active");
                $(this).addClass("active");
                var index = $(this).index();
                $(".bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                $(".bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
            });
            $("#home_bread").on("click", function (e) {
                e.preventDefault();
                window.livewire.emit('data_manager', {'sel_main_cat': '', "sel_sub_cat": ''});
            });
            $("#main_bread").on("click", function (e) {
                e.preventDefault();
                debugger;
                window.livewire.emit('data_manager', {"sel_sub_cat": ''});
            });
        });
    </script>
<style>
    .line {
        width: 100%;
        height: 1px;
        border-bottom: 1px dashed #ddd;
        margin: 15px 0;
    }
</style>
<div id="doc_start" class="container mt-5" style="border: 1px dashed;">
<style>
*,
*:before,
*:after {
    box-sizing: border-box;
}

.sect_cls {
    zoom: 1;
    position: relative;
    height: auto;
}

.sect_cls:after,
.sect_cls:before {
    content: "";
    display: table;
}

.sect_cls:after {
    clear: both;
}

.sect_cls h4 {
    background: rgba(0, 0, 0, 0.1);
    cursor: pointer;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-top: none;
    padding: 15px 20px;
}

.sect_cls h4:first-child {
    border-top: 1px solid rgba(0, 0, 0, 0.2);
}

@media  screen and (min-width: 600px) {
    .sect_cls h4 {
        position: relative;
        width: 33.333333333333336%;
        height: 20%;
        display: block;
        margin: 0;
        font-size: initial;
    }
}

.sect_cls ul {
    zoom: 1;
    position: relative;
    height: auto;
    min-height: 100%;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-left: none;
    display: none;
}

.sect_cls ul:after,
.sect_cls ul:before {
    content: "";
    display: table;
}

.sect_cls ul:after {
    clear: both;
}

.sect_cls ul li {
    list-style: circle;
}

.list-none {
    list-style: none !important;
}

.big {
    font-size: 18px;
    font-weight: bold;
}

@media  screen and (min-width: 600px) {
    .sect_cls ul {
        position: absolute;
        width: 66.66666666666667%;
        right: 0;
        top: 0;
        padding: 15px 30px;
    }
}

.sect_cls .active {
    cursor: default;
    border-bottom: 1px solid rgba(0, 0, 0, 0.2);
    border-right: none;
    margin: 0;
}

@media  screen and (min-width: 600px) {
    .sect_cls .active {
        background: rgba(0, 0, 0, 0);
        border-right: 1px solid rgba(0, 0, 0, 0);
    }
}
@media  screen and (max-width:480px){
    h4 {
        font-size: 15px;
    }
    .sect_cls .active+ul {    
    font-size: 13px;
    }
}
.sect_cls .active+ul {
    display: block;
}
.list-box{
    border: 1px solid lightgray;
    padding: 10px;
}
.ul-box{
    padding: 28px;
    border: 1px solid lightgray !important;
}
</style>
</body>
</html>