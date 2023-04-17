<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Image Details...</title>
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
.style4 {
	color: #FF0000;
	font-size: 14px;
}
.style5 {font-size: 24px}
.style6 {color: #FF00FF}
.style7 {font-weight: bold}
.style8 {color: #FFFF00}
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
           
       <h2 align="left" class="star style6"><span class="style6">View</span> Your <span class="style6">Post</span>...</h2>
       <p align="left" class="star style6">&nbsp;</p>
       <table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#00FF00"><td width="86" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="	margin-left:20px;"><strong>Post Image</strong></div></td>
			<td width="86" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="margin-left:20px;"><strong>PostName</strong></div></td>
			<td width="109" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="margin-left:20px;"><strong>Description</strong></div></td>
			>
			<td width="75" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="margin-left:20px;"><strong>Rank</strong></div></td>
			<td width="75" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="margin-left:20px;"><strong>Likes</strong></div></td>
			<td width="87" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="margin-left:20px;"><strong>Comments</strong></div></td>
			<td width="108" height="44" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;">
			<div align="left" class="style8 style14 style4 style3" style="margin-left:20px;"><strong>Shared Details</strong></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String user=(String)application.getAttribute("uname");
					
						
						
						int i=0;
						try 
						{
							String sql="select * from images where username='"+user+"' ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
							int count=0;
								i=rs.getInt(1);
								String s1=rs.getString(3);
								String s2=rs.getString(4);
								String s3=rs.getString(7);
					String decryptedDes= new String(Base64.decode(s2.getBytes()));
						
						
						
							String sql1="select * from likes where imgname='"+s1+"' ";
							Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(sql1);
					   		while ( rs1.next() )
					   		{
						  count++;
						}
						
						
					%>
			
			
		<tr>
			<td width="86">
			<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
			  <td  width="86" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
			   <td  width="109" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(decryptedDes);%></div></td>
			    <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s3);%></div></td>
			  <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(count);%></div></td>
			  <td  width="87" align="left" valign="middle" height="23"><a href="U_ImgDetailComm.jsp?iname=<%=s1%>" class="style2">View Comments</a>		  </td>
			   <td  width="108" align="left" valign="middle" height="23"><a href="U_ImgShare.jsp?iname=<%=s1%>" class="style2">View Share Details</a>		  </td>
</tr>
<%					
					}
						
						connection.close();
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
          <ul class="sb_menu style7">
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
