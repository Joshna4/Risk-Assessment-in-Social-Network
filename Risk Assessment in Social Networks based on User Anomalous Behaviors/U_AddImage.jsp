<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Image Upload...</title>
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
.style5 {font-size: 24px}
-->
</style>

<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.title.value;
if(na3=="")

{
alert("Please Enter Image title");
document.s.title.focus();
return false;
}

var na4=document.s.des.value;
if(na4=="")

{
alert("Please Enter Description");
document.s.des.focus();
return false;
}

var na5=document.s.img.value;
if(na5=="")

{
alert("Please Select a Image");
document.s.img.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-size: 16px;
}
.style6 {color: #FF00FF}
.style8 {color: #993333}
.style9 {color: #FFFF00}
.style11 {color: #FFFF00; font-weight: bold; }
.style14 {font-weight: bold}
-->
</style>

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
           
           	     <h2 class="style5 style6">Add Posts.... </h2>
	             <form name="s" action="U_AddImageIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 

					  <p class="style1">(<span class="style8">*  Required</span>)</p>
					  <table width="420" align="center">
					    
                        
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style11">Post Title </span><span class="style9 style5"><strong>*</strong></span></td>
                          <td><input id="use" name="title" class="text" style="width:175px;" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style11">Description</span><span class="style9 style5"><strong>*</strong></span></td>
                          <td><textarea name="des" rows="3" cols="23"></textarea></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style11">Select Image</span><span class="style9 style5"><strong>*</strong></span></td>
                          <td><input type="file" id="img" name="img" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="124" rowspan="3" bgcolor="#FF0000">
                          <p>&nbsp;</p></td>
                        <td align="left" valign="middle"><p>
                              <input name="submit" type="submit" value="ADD POST" />
                            </p>                          </td>
                        </tr>
        </table>
		<div class="style11">
        <div align="center"><a href="U_Main.jsp" class="style14">Back</a></div>
      </div>
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
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
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
