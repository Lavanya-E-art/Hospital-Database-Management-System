<%-- 
    Document   : patb
    Created on : 9 Nov, 2019, 1:06:26 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
body{
background-image: url("i5.jpg");
margin:0;
background-repeat: no-repeat;
background-size:100%;
}
</style>
    </head>
    <center><B><font color="purple"><font size="20"><u>PATIENT BILL DETAILS</u></font></font></B></center>
    <body>
        <%
String pid=request.getParameter("p1");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lavanya", "12345");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from bill where pid="+pid);
%>
<table cellpadding="15" border="1">
         <tr padding:20px>
         
                <th>BILL NO</th>
                <th>PATIENT NAME</th>
                <th>DOCTOR NAME</th>
                <th>BILL DATE/TIME</th>
                <th>BILL AMOUNT</th>
                <th>PATIENT ID</th>
              
               
            </tr>
         <%
   while(rs.next())
   {
     %>   
    <tr>
                <td><%= rs.getInt(1) %>
                <td><%=rs.getString(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getString(4)%>
                <td><%=rs.getString(5)%>
                <td><%=rs.getInt(6)%> </td> 
                
            </tr>
            
           
        
<%}}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
