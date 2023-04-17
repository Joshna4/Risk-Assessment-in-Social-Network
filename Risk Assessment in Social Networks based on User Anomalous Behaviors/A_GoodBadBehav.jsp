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
.style6 {color: #FF00FF}
.style7 {
	color: #FFFFFF;
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
			<%@ include file="connect.jsp" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>
         	 <h2 align="center" class="style5 style6"><span class="style6">View</span> <span class="style6">all</span> <span class="style6">Posts</span>..</h2>
	           <table width="595" height="132" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#00FFFF">
					  <td  width="107" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7"> Post Image </div></td>
					  <td  width="105" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">Post Name</div></td>
  					
					  <td   width="139" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">Description</div></td>
					  <td  width="114" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">Date</div></td>
					  <td  width="114" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">Rank</div></td>
					  <td  width="114" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7">Comments Behaviors </div></td>
					</tr>
					
					<%
					
String s1,s2,s3,s4,s5,s6,s7,s8,s9 ;
int i=0;
try 
{
	String query="select * from images "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(3);
		s2=rs.getString(4);
		s3=rs.getString(5);
		s4=rs.getString(7);
		
		String decryptedDes= new String(Base64.decode(s2.getBytes()));
					
		%>
					
							<tr>
						
							  <td width="107" ><input  name="image" type="image" style="width:100px; height:100px;" src="images.jsp?id=<%=i%>&value=<%="image"%>"  /></td>
							  <td  width="105" valign="baseline" height="110" style="color:#000000;">
							    <div align="center">
							      <%out.println(s1);%>
					          </div></td>	
								<td  width="139" valign="baseline" height="110">
							  
						          <div align="center">
						            <%out.println(decryptedDes);%>
			                      </div></td>
								<td  width="114" valign="baseline"><div align="center">
                                  <%out.println(s3);%>
                                </div></td>
								<td  width="114" valign="baseline" height="110">
							      <div align="center">
							        <%out.println(s4);%>	
					          </div></td>
							  <td  width="114" valign="baseline" height="110">
							      <div align="center">
					          <a href="A_GoodBadComm.jsp?iname=<%=s1%>"> View Comments Behavior </a>					          </div></td>
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
		          <p><a href="A_Main.jsp" class="style14">Back</a></p>
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
