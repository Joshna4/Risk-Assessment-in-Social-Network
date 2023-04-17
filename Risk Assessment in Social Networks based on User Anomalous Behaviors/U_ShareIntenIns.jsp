<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<%@ include file="connect.jsp" %>
 <%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%> 
    
<body>
<%
try {
    
            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			
			
String user=(String)application.getAttribute("uname");
String image=request.getParameter("title");
String name=request.getParameter("recommendto");
String comment=request.getParameter("com");


                Statement stmt1=connection.createStatement();
				String strQuery1 = "select * from imgrecommendtofriend where recommendfrom ='"+user+"' && recommendto ='"+name+"' && title='"+image+"' ";
				ResultSet rs1 = stmt1.executeQuery(strQuery1);
				if(rs1.next())
				{
						
						out.println("Already Recommended this post");
						%><br/><br/><a href="U_FrdImgVid.jsp">Back</a><%
		
				}
				else
				{


PreparedStatement pst=connection.prepareStatement("insert into imgrecommendtofriend(recommendfrom,recommendto,title,intension,date) values(?,?,?,?,?)");
            
			pst.setString(1,user);
            pst.setString(2,name);
            pst.setString(3,image);
			pst.setString(4,comment);
            pst.setString(5,dt);

			
			 int x=pst.executeUpdate();
			
		
					if(x>0)
			{
					
					 Statement st32 = connection.createStatement();
					 String query32 ="update images set rank=rank+1 where imgname='"+image+"' ";
					 st32.executeUpdate (query32);
					 
			    Statement stmt=connection.createStatement();
				String strQuery = "select * from ishare where username='"+user+"' and imgname='"+image+"' ";
				ResultSet rs = stmt.executeQuery(strQuery);
				if(rs.next())
				{
					 Statement st2 = connection.createStatement();
					 String query2 ="update ishare set count=count+1 where imgname='"+image+"' ";
					 st2.executeUpdate (query2);
					
		
				}
				else
				{
				int count=1;
			PreparedStatement ps=connection.prepareStatement("insert into ishare(imgname,username,count) values(?,?,?)");
            
			ps.setString(1,image);
            ps.setString(2,user);
			ps.setInt(3,count);
			
			 ps.executeUpdate();
					 
					 
					}   
					   

                          %> <b> Shared Successfull.						</b>
		                        <p align="center"><a href="U_FrdImgVid.jsp" class="style47">Back</a></p>
                          <%
			
								
								
			}
			else
			{
						%> 
  </h2>
  <div align="center"><br />
						    <b>Shared Not Successfull, Please try agian!!.						</b>
          </div>
        </div>
						  <p align="center"><a href="U_FrdImgVid.jsp" class="style47">Back</a></p>
						<div align="center">
						  <%
			}
			
		} }
		catch (Exception e) {
		e.printStackTrace();
		}	
			
			

%>
</body>
</html>
