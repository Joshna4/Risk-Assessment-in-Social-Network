
<%@ include file="connect.jsp" %>


<%
			
			try
			{
				
			String user=(String)application.getAttribute("user");
	String iname=request.getParameter("iname"); 			  
	String s12="",s22="",s32="",s42="",s52="",s62="" ;
	int i=0,count=0,count1=0;	
   			  String neg="Negative";
			
			String sql30="select imgname from images where imgname='"+iname+"' ";
			Statement st30=connection.createStatement();
			  ResultSet rs30=st30.executeQuery(sql30);
			if ( rs30.next() )
			   {
			 String  s11=rs30.getString(1);
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Bad Behavoir Comments of : <%=s11%></h2></td>
			      </tr>
				  <tr>
					<td width="174" bgcolor="#FFFF00" ><div align="left" class="style4 style6 style8">
						<div align="center">Uploader </div>
					</div></td>
					<td width="174" bgcolor="#FFFF00" ><div align="left" class="style4 style6 style8">
						<div align="center">Commented User </div>
					</div></td>

					<td width="146" bgcolor="#FFFF00" ><div align="left" class="style4 style6 style8">
						<div align="center">Comment</div>
					</div></td>
					<td width="128" bgcolor="#FFFF00"><div align="left" class="style4 style8 style6">
						<div align="center">Date</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query0="select * from icomment where imgname='"+s11+"' "; 
				   Statement st0=connection.createStatement();
				   ResultSet rs0=st0.executeQuery(query0);
				while ( rs0.next() )
			   {
				String	s10=rs0.getString(1);
				String	s20=rs0.getString(5);
				String	s30=rs0.getString(4).toLowerCase();
				String	s40=rs0.getString(6);
				String	s50=rs0.getString(3);

			   
			       String sql10="select * from filter where categorie='"+neg+"' ";
					Statement st10=connection.createStatement();
			  		ResultSet rs10=st10.executeQuery(sql10);
					while ( rs10.next() )
			   			{
			   			 String	t10=rs10.getString(1);
			             String t20=rs10.getString(2).toLowerCase();
			   			 	
							  if ((s30.contains(t20)))
									{
								     
									 %>
							  <tr>
							    <td width="174" height="0"  style="color:#000000;"><div align="center"><a href="A_UserProfile.jsp?value=<%=s50%>&type=<%="goodbad"%>"><%=s50%></a></div></td>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="A_UserProfile.jsp?value=<%=s20%>&type=<%="goodbad"%>"><%=s20%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s30%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s40%></div></td>
							  </tr>
							  
							
							  <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	       <p>&nbsp;</p>
				<%
			
				
				}
	
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>