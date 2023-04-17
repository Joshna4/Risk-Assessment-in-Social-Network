<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {
	font-family: "Times New Roman", Times, serif;
	font-size: 24px;
}
.style5 {font-size: 24px}
.style6 {color: #FF00FF}
.style7 {color: #FFFFFF}
.style8 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.username.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.username.focus();
return false;
}
else
{

}
var na4=document.s.password.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.password.focus();
return false;
}


}
</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html"><span class="style5">Risk Assessment in Social Networks based on User Anomalous Behaviors</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>user</span></a></li>
          <li><a href="U_Register.jsp"><span>register</span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="post_content">
             <h2 align="center"> <span class="style6">Welcome</span> <span class="style6">to</span> <span class="style6">User</span> <span class="style6">Login</span>....</h2>
             <p align="center"><img src="images/Login.jpg" width="158" height="158" /></p>
             <form name="s" action="Authentication.jsp?value=<%="userlogin"%>" method="post" onSubmit="return valid()"  ons target="_top">
		 <table width="379" align="center" bgcolor="#FF0000">
                  <tr>
                    <td width="162" height="35" bgcolor="#FF0000"><span class="style7">User Name (required)</span></td>
                    <td width="205"><input id="name" name="username" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38" bgcolor="#FF0000"><span class="style7">Password (required)</span></td>
                    <td><input type="password" id="password" name="password" class="text" /></td>
                  </tr>
				 
          <tr><td></td>
          <td>
                 <input name="imageField" type="submit"  class="style8" id="imageField" value="Login" />
                <input name="Reset" type="reset" class="style8" value="Reset" /></td>
			   </tr>
             
              </p>
                <p>&nbsp;</p>
			  </table>
         <p>&nbsp;</p>
         <p align="center" class="style8">Are You a New User ? <a href="U_Register.jsp">Register</a> </p>
		     </form>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="index.html">Home</a></strong></li>
            <li><strong><a href="A_Login.jsp">Admin</a></strong></li>
            <li><strong><a href="U_Login.jsp">User</a></strong></li>
            <li><strong><a href="U_Register.jsp">Register</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
