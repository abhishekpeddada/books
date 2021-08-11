<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>LogIn Page</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>


<div class="container">
	<div class="row">
		<div style="width: 40%; margin: 25px auto;">
		<h3 style="text-align: center;">Login Page</h3>
		<form method="POST" action="login.jsp">
			<div class="form-group">
				<label>UserName:</label><input type="text"  class="form-control" autofocus placeholder="username" name="uname" value="" required />
			</div>
			<div class="form-group">
				<label>Password:</label><input type="password" class="form-control" autofocus placeholder="Password" name="pass" value="" required />
			</div>

      <label>Enter Captcha:</label>
      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="text" class="form-control" readonly id="capt" required>
        </div>
        <div class="form-group col-md-6">
          <input type="text" class="form-control" id="textinput">
        </div>
      </div>
      <h6>Captcha not visible  <i class="w3-large w3-spin fa fa-refresh" onclick="cap()"></i></h6>
	<div class="form-group">
				<button onclick="validcap()" class="btn btn-lg btn-success btn-block">Submit</button>
			</div>
      <p><a href="reg.jsp">register here</a></a></p>
		</form>
	</div>
</div>
</div>
<script type="text/javascript">
  function cap(){
    var alpha = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V'
                 ,'W','X','Y','Z','1','2','3','4','5','6','7','8','9','0','a','b','c','d','e','f','g','h','i',
                 'j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z', '!','@','#','$','%','^','&','*','+'];
                 var a = alpha[Math.floor(Math.random()*71)];
                 var b = alpha[Math.floor(Math.random()*71)];
                 var c = alpha[Math.floor(Math.random()*71)];
                 var d = alpha[Math.floor(Math.random()*71)];
                 var e = alpha[Math.floor(Math.random()*71)];
                 var f = alpha[Math.floor(Math.random()*71)];

                 var final = a+b+c+d+e+f;
                 document.getElementById("capt").value=final;
               }
               function validcap(){
                var stg1 = document.getElementById('capt').value;
                var stg2 = document.getElementById('textinput').value;
                if(stg1==stg2){
                window.location.href = "http://localhost:8080/library/member.jsp";
                  return true;
                }else{
                  document.write("Please enter a valid captcha");
                  return false;
                }
               }
</script>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>