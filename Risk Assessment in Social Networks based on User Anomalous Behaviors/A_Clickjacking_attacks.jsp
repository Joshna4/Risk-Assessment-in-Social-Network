<%@ include file="connect.jsp" %>

	           <%
	String user=(String)application.getAttribute("user");
	String iname=request.getParameter("iname"); 			  
	String s12="",s22="",s32="",s42="",s52="",s62="", pos="Clickjacking attacks" ;
	int i=0,count=0,count1=0;
	try
	{
	   			String query="select imgname from images where imgname='"+iname+"' "; 
			    Statement st=connection.createStatement();
			    ResultSet rs=st.executeQuery(query);
				if( rs.next() )
			   {
					s12=rs.getString(1);
			   
			
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Socware attacks Comments of : <%=s12%></h2></td>
			      </tr>
				  <tr>
				    <td width="174" bgcolor="#FFFF00" ><div align="left" class="style4 style6">
						<div align="center">Uploader </div>
					</div></td>
					<td width="174" bgcolor="#FFFF00" ><div align="left" class="style4 style6">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" bgcolor="#FFFF00" ><div align="left" class="style4 style6">
						<div align="center">Comment</div>
					</div></td>
					<td width="128" bgcolor="#FFFF00"><div align="left" class="style4 style6">
						<div align="center">Date</div>
					</div></td>
				  </tr>
				 
				  <%
			 String sql3="select * from icomment where imgname='"+s12+"' ";
			 Statement st3=connection.createStatement();
			 ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
				String s1=rs3.getString(1);
				String s2=rs3.getString(5);
				String s3=rs3.getString(4).toLowerCase();
				String s4=rs3.getString(6);
				String s5=rs3.getString(3);
                       
				  
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{
								     
									 %>
							  <tr>
							    <td width="174" height="0"  style="color:#000000;"><div align="center"><a href="A_UserProfile.jsp?value=<%=s5%>&type=<%="goodbad"%>"><%=s5%></a></div></td>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="A_UserProfile.jsp?value=<%=s2%>&type=<%="goodbad"%>"><%=s2%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s3%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s4%></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			        }

					 }
			   }
			
			}
			
			}
			
			catch(Exception ex)
			{
			 out.print(ex);
			}
			
			        %></table> 