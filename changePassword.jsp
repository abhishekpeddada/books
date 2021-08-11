<!DOCTYPE html>
<html>
<head>
	<title>Change password</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>


<div class="container">
	<div class="row">
		<div style="width: 40%; margin: 25px auto;">
		<h3 style="text-align: center;">Change password</h3>
			<div class="form-group">
<script language="javascript">
function fncSubmit()
{

if(document.ChangePasswordForm.OldPassword.value == "")
{
alert('Please input old password');
document.ChangePasswordForm.OldPassword.focus();
return false;
} 

if(document.ChangePasswordForm.newpassword.value == "")
{
alert('Please input Password');
document.ChangePasswordForm.newpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.conpassword.value == "")
{
alert('Please input Confirm Password');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
{
alert('Confirm Password Not Match');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

document.ChangePasswordForm.submit();
}
</script>
<form name="ChangePasswordForm" method="post" action="process.jsp" OnSubmit="return fncSubmit();">
    <div class="form-group">
        <label>UserName:</label><input type="text" name="userName" class="form-control" autofocus placeholder="username" required>
    </div>
    <div class="form-group">
        <label>Old Password:</label><input type="password" name="OldPassword" class="form-control" autofocus placeholder="oldpassword" required>
    </div>
    <div class="form-group">
        <label>New Password:</label><input type="password" name="newpassword" class="form-control" autofocus placeholder="newpassword" required>
    </div>
    <div class="form-group">
        <label>Conform Password:</label><input type="password" name="conpassword" class="form-control" autofocus placeholder="newpassword" required>
    </div>
    <div class="form-group">
        <button type="submit" name="Submit" value="Save" class="btn btn-lg btn-success btn-block">Submit</button>
    </div>
</table>
</form>
</body>
</html>