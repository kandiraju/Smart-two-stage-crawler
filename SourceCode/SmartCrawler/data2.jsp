<%@ page  import="java.sql.*"  import="java.io.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="dheader.jsp"%>

<%
String file=request.getParameter("id");

File f=new File("crawlerdata/"+file);
BufferedReader br=new BufferedReader(new FileReader(f));
%>	
<h2>

<table cellspacing=5 >

<tr><td><td><h3><font size="" color="#d7d7d7"><b>URL's
<% int i=0;
String line=br.readLine();
while(line!=null)
	{
		%>
		<tr><td><td><h5><font size="" color="#1ac871"><b><%=line%>
<%
			line=br.readLine();
	}

												

											   br.close();
                                               %>

											 
</table>

<center>


</font>
