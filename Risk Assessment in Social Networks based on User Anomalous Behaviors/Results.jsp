
			
         	 <h2 align="center" class="style5">Image <%=request.getParameter("iname")%> shared details</h2>
	          <%@ include file="connect.jsp"%>

<%
try
{
int count=0;
String iname=request.getParameter("iname");
ResultSet rs=connection.createStatement().executeQuery("SELECT username,count FROM ishare where imgname='"+iname+"' ");
%>
<title>search Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>

<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	count++;
	 s1=rs.getString(1);
	int  s2=rs.getInt(2);
	
	
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=s2%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'pie');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(500, 400);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
  </script>
</div>
</body>
</html>
<%

if(count==0)
	{
	 %><h2><%out.print("No One Have Shared This Image");%></h2><%
	}

}
catch(Exception e)
{
e.printStackTrace();
}
%>

<p align="center" ><a href="A_ImgShareRatio.jsp">Back</a> </p>
	  <h2>&nbsp;</h2>
	  			
