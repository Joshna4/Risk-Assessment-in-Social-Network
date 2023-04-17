<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friends Images...</title>
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
.style4 {
	color: #FF0000;
	font-size: 14px;
}
.style5 {font-size: 24px}
.style6 {color: #0066CC}
.style7 {
	color: #FFFF00;
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
           
          <p class="star" align="center">&nbsp;</p>
			
			<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
              
			  
			  <h2> <span class="style6">Friends</span> <span class="style6">Posts....</span> </h2>
			  
              <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">Image Name</div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">View</div></td>
					</tr>
								

					<%String user=(String )application.getAttribute("uname");
						String image="",uploader="";
						int i=0;
						try 
						{
						    String sql="select * from images where username!='"+ user +"' ";
								Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(sql);
					   			while( rs.next() )
								{
								i=rs.getInt(1);
								uploader=rs.getString(2);
								image=rs.getString(3);
					
								
						   	String sql1="select * from req_res where (requestfrom='"+user+"'&&requestto='"+uploader+"')||(requestfrom='"+uploader+"'&&requestto='"+user+"')&& status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
					   			if( rs2.next() )
								{
								
					%>
					<tr bgcolor="#99CCCC">
						<td  width="120" height="40" align="center" valign="middle" style="color:#000000;"><span class="style4">&nbsp;&nbsp;
				        <%out.println(image);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="ImageDetail.jsp?id=<%=i%>">more info..&nbsp;</a></td>
						<%
						}
						
						
						%>
			</tr>
					<%
						}
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
		  
		 
		  
		        <div align="center">
		          <p>&nbsp;</p>
		          <p><a href="U_Main.jsp" class="style14">Back</a></p>
	            </div>

		
        <p>&nbsp;</p>
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
