<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="google.*" import="java.io.*" import="java.util.Vector"%>

  <%

%>


<br><br><br><br><br>
<%
String 	key=request.getParameter("search");

					File f=null;
					FileReader fr=null;
					BufferedReader br=null;
										String s=null;
Vector v=new Vector();
v=Search.main(key);
	
%>
<br>
<h1> <font size="" color="yellow">Search Results</font></h2>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
Statement st = con1.createStatement();
Statement st2 = con1.createStatement();
ResultSet rs=st.executeQuery("select * from temp");
ResultSet rs2=null;
String fileid="";
		%>
		
		<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>
		<table cellspacing="10">
<%		while(rs.next())
			{
						%>
			
			<tr><td><a href="http://<%=rs.getString(1)%>" target="_blank"><font size="+1" color="#57c2e6"><%=rs.getString(1)%></a></font>&nbsp;
						<tr><td><font size="+1" color=""><%=rs.getString(2)%></font>&nbsp;


			<%
				System.out.println("select * from metadata where url='"+rs.getString(1)+"' ");
			 rs2=st2.executeQuery("select * from metadata where url='"+rs.getString(1)+"' ");

			 if(rs2.next())
			{					
				 				%>

								<TABLE><TR><TD >
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<TD>
								<fieldset>
  <legend>--- <font size="" color="#4380f1">Crawled Data</font></legend>
								<table cellspacing=5><%
					fileid=rs2.getString(3);
						f=new File("crawlerdata/"+fileid+".txt");
					fr=new FileReader(f);
						br=new BufferedReader(fr);
							s	=br.readLine();

						while(s !=null)
						{
						%>
			
						<tr><td>
							
						<a href="<%=s%>" target="_blank"><font size="-1" color="#d3effa" ><%=s%></a></font>
						<%			s=br.readLine();

						}%>

		</table>									</fieldset>	</table>

				<%			 }

				%>

				


						<tr><td>&nbsp;


		<%		


		}


%>
</table></table>

