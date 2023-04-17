<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main...</title>
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
.style6 {color: #FF00FF}
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
          <h2 class="style2 style5">&nbsp;</h2>
          <div class="post_content">
            <h2 class="style6"> <span class="style6">Wel</span>-<span class="style6">Come</span> <span class="style6">User</span> :: <span class="style6"><%=(String)application.getAttribute("uname")%> </span></h2>
            <p class="style6">&nbsp;</p>
            <p class="style6"><img src="images/User.jpg" width="590" height="245" /></p>
            <p class="style6">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
<ul><h2>USER MENU</h2>
           <div class="gadget">
                  <p><a href="U_Profile.jsp">View  Profile</a> </p>
                  <p><a href="U_FrdSearchReq.jsp">Search Friend and Friend Request </a></p>
				  <p><a href="U_AllFriends.jsp">View All Friends</a></p>
                  <p><a href="U_AddImage.jsp">Upload Post </a> </p>
				  
				  <p><a href="U_ImgDetail.jsp">View All My Posts </a> </p>
				  
				   <p><a href="U_FrdImgVid.jsp">View All My Friends Post </a> </p> 
				  
                  <p><a href="U_Login.jsp">Logout</a></p>
          </div>
        </ul>      
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
