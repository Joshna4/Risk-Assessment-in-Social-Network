<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All user Behaviours</title>
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
.style6 {font-size: 18px}
.style8 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>user</span></a></li>
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
          <div class="img"></div>
          <div class="post_content">
            <p align="justify">&nbsp;</p>
			
			<%
			
			 String iname=request.getParameter("iname"); 
			
			%>
			
			<h2 align="center" class="style6"><span class="style16 style32">Behavior of :: <%=iname%> Post</span> </h2>	
			
			
		  <h2 align="center" class="style6"><span class="style16 style32 style8">View All Positive Spam Behaviors</span> </h2>	
		  <iframe width="600" height="300" src="A_Good_Behavior.jsp?iname=<%=iname%>"></iframe>
		  <h2 align="center" class="style6">&nbsp;</h2>
		  
		   <h2 align="center" class="style6"><span class="style16 style32 style8">View All Negative Spam Behaviors</span> </h2>	
		   <iframe width="600" height="300" src="A_Bad_Behavior.jsp?iname=<%=iname%>"></iframe>
		   <h2 align="center" class="style6">&nbsp;</h2>
		   
		   <h2 align="center" class="style6"><span class="style16 style32 style8">View All Cyberbulling Attacks Behaviors </span></h2>
		   <iframe width="600" height="300" src="A_Cyberbulling_Behavior.jsp?iname=<%=iname%>"></iframe>
		   <h2 align="center" class="style6">&nbsp;</h2>
		   
		   <h2 align="center" class="style6"><span class="style16 style32 style8">View All Socware Attacks Behaviors</span> </h2>
		   <iframe width="600" height="300" src="A_Socware_Behavior.jsp?iname=<%=iname%>"></iframe>
			<h2 align="center" class="style6">&nbsp;</h2>
			
		   <h2 align="center" class="style6"><span class="style16 style32 style8">View All Clickjacking attacks Behaviors</span> </h2>
		   <iframe width="600" height="300" src="A_Clickjacking_attacks.jsp?iname=<%=iname%>"></iframe>
			<h2 align="center" class="style6">&nbsp;</h2>
			
			
			<h2 align="center" class="style6"><span class="style16 style32 style8">View All Creepers attacks Behaviors(Continuos Spamming Words)</span> </h2>
		   <iframe width="600" height="300" src="A_Creepers_attacks.jsp?iname=<%=iname%>"></iframe>
			<h2 align="center" class="style6">&nbsp;</h2>
			
			
			
			
	       <p>&nbsp;</p>
				<p>&nbsp;</p>
	  
	  
	  
	  			<div align="center">
		          <p>&nbsp;</p>
		          <p><a href="A_GoodBadBehav.jsp" class="style14">Back</a></p>
	            </div>

          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">LogOut</a></li>
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
