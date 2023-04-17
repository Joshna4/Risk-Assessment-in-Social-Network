<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Share Post Intensionally...</title>
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
.style6 {color: #CC0000}
.style8 {color: #993300}
.style9 {color: #FFFFFF}
-->
</style>

<script language="javascript" type="text/javascript">
function valid()
{

var na1=document.s.com.value;
if(na1=="")

{
alert("Please Enter Comment");
document.s.com.focus();
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
           
       <h2 align="left" class="star style6"><span class="style8">View</span> <span class="style6">Friends</span> <span class="style6">Posts...</span></h2>
          <p class="star" align="center">&nbsp;</p>
			
			<p>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
				try 
						{		
				int i1=Integer.parseInt(request.getParameter("id")); 
						String s1="",s2="",s3="",s4="",s5="",s6="";
						int i=0;
						
						   	String query="select * from images where id='"+i1+"' "; 
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
					
   

   <form name="s" action="U_ShareIntenIns.jsp" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
 						<td   width="100" height="45" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style9 style1" style="margin-left:20px;">title </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input type="text" name="title" value="<%=s1%>" readonly="readonly" /></div></td>
					</tr>
					<tr>
                <td   width="150" height="45" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style9 style1" style="margin-left:20px;">Recommend To </div></td>
                <td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><select name="recommendto" style="width:175px;" >
                  <option>--select--</option>

<%


	int uid=0;
	String uuu=null;
	String uname1 = (String)application.getAttribute("uname");
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select username from user where username!='"+uname1+"'";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		//uid = rs1.getInt(1);
		String username = rs1.getString(1);
		
		
		Statement stmt2=connection.createStatement();
		String strQuery2 = "select requestfrom,requestto from req_res where ((requestfrom ='"+uname1+"' && requestto='"+username+"') ||(requestfrom ='"+username+"' && requestto='"+uname1+"'))and status ='Accepted' ";
		ResultSet rs2 = stmt2.executeQuery(strQuery2);
		while(rs2.next())
		{
		
			if(rs2.getString(1).equals(uname1))
			{
				uuu = rs2.getString(2);
			}
			else
			{
				uuu = rs2.getString(1);
			}
%>
                  <option> <%=uuu%></option>
<%
		}
	}
%>
                </select></td>
              </tr>

					<tr>
					  <td   width="100" height="45" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style9 style1" style="margin-left:20px;">Intension </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="com" rows="3" cols="23"></textarea></div></td>
					</tr>
					
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Add To Share" style="width:100px; height:35px; background-color:#999999; color:#003399;"/>
					<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#999999; color:#003399;"/></td></tr></div>
		      </table>


	 </form>
		  
		  
		  <%
  	}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		  
		        <div align="center">
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
