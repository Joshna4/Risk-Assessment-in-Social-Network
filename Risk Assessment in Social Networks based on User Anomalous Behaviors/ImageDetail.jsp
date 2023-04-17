<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>UserPost Details...</title>
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
.style6 {color: #FFFF00}
.style7 {color: #FFFFFF}
.style9 {color: #000000}
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
           
       <h2 class="star" align="left"><span>View Friends Posts .... </span></h2>
          <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
				try 
						{		
	String user=(String )application.getAttribute("uname");
				int i1=Integer.parseInt(request.getParameter("id")); 
						String s1="",s2="",s3="",s4="",s5="",s6="";
						int i=0;
						
						   	String query="select * from images where id='"+i1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(2);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(7);
								
								String decryptedDes= new String(Base64.decode(s3.getBytes()));
								
					%>
					<tr>
					<td width="230" rowspan="9" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					
					<tr>
					  <td  width="127" height="48" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style9" style="margin-left:20px;"><strong>Post Name</strong></div></td>
					  <td  width="182" valign="middle" height="48" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="127" height="45" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style9" style="margin-left:20px;"><strong>Uploader</strong></div></td>
					  <td  width="182" valign="middle" height="45" style="color:#000000;"><div align="left" class="style11" style="margin-left:20px;"> <a href="U_UserProfile.jsp?value=<%=s2%>&type=<%="imagedata"%>"><%=s2%></a></div></td>
					</tr>
					
					<tr>
					  <td  width="127" height="40" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style9" style="margin-left:20px;"><strong>Description</strong></div></td>
					  <td  width="182" valign="middle" height="40"><div align="left" class="style11" style="margin-left:20px;"><%out.println(decryptedDes);%></div></td>
					</tr>
					
					<tr>
<td  width="127" height="38" align="left" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style9" style="margin-left:20px;"><strong>Date</strong></div> </td>                    	
<td  width="182" align="left" valign="middle" height="38"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					
					<tr>
					  <td height="38" align="left" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style9" style="margin-left:20px;">Rank</div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style11" style="margin-left:20px;">
                        <%out.println(s5);%>
                      </div></td>
			  </tr>
			  
		
					 
				<%}%>
				
					
					

					
				</table>
<table align="center">
<tr>
<td><a href="U_ilike.jsp?image=<%=s1%>"> LIKE </a></td>  <td><a href="U_ImageComment.jsp?id=<%=i%>"> COMMENT </a></td>  <td><a href="U_ShareInten.jsp?id=<%=i%>"> SHARE </a></td>
</tr>
</table><%
		  	
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		        <div align="center">
		          <p>&nbsp;</p>
		          <p><a href="U_FrdImgVid.jsp" class="style14">Back</a></p>
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
            <li><a href="U_Login.jsp">User</a></li>
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
