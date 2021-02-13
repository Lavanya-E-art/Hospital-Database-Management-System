<%-- 
    Document   : sdel
    Created on : 9 Nov, 2019, 7:11:27 PM
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
background-image: url("i4_1.jpg");
background-color: white;
background-repeat: no-repeat;
background-size:100%;
}
           .btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}
.success {
  border-color: #4CAF50;
  color: green;
}

.success:hover {
  background-color: #4CAF50;
  color: white;
}
        </style>
    </head>
    <body>
        <%
String sid=request.getParameter("p1");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lavanya", "12345");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM staff WHERE sid="+sid);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<h1><center><font size="20"><font color="white">STAFF DATA DELETED SUCCESSFULLY</font></font></center></h1>
<form action="staff.jsp" method="post">
    <center><button class="btn success">VIEW STAFF DETAILS</button></center>
</form>
    </body>
</html>
