<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>like Post</title>
</head>
<%@ include file="connect.jsp" %>
<body>
<%
                            String image=request.getParameter("image");
							String user=(String)application.getAttribute("uname");
                            String query="select * from likes where imgname='"+image+"' and user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next())
					   		{
								Statement st32 = connection.createStatement();
					 			String query32 ="update images set rank=rank+1 where imgname='"+image+"' ";
					 			st32.executeUpdate (query32);
							%><h2><%out.print("You Have Already Liked ");%></h2>  <p align="center"><a href="U_FrdImgVid.jsp" class="style47">Back</a></p><%
							}
							else
							{
							PreparedStatement pst=connection.prepareStatement("insert into likes(user,imgname) values(?,?)");
							pst.setString(1,user);
							pst.setString(2,image);
							
							pst.executeUpdate();
								Statement st32 = connection.createStatement();
					 			String query32 ="update images set rank=rank+1 where imgname='"+image+"' ";
					 			st32.executeUpdate (query32);
							response.sendRedirect("U_FrdImgVid.jsp");
							}

%>
</body>
</html>
