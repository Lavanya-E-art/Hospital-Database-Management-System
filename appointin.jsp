<%-- 
    Document   : appointin
    Created on : 9 Nov, 2019, 8:54:24 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
background-image: url("i5.jpg");
margin:0;
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
h1{
    padding-top: 50px;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <%  try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
   Statement st=con.createStatement();
   
          String s1=request.getParameter("p1");
          String s2=request.getParameter("p2");
          String s3=request.getParameter("p3");
          String s4=request.getParameter("p4");
          PreparedStatement ps=con.prepareStatement("insert into appointment values(?,?,?,?)");
          ps.setString(1,s1);
          ps.setString(2,s2);
          ps.setString(3,s3);
          ps.setString(4,s4);
          ps.execute();
          %>
          <h1><center><font size="20"><font color="white">APPOINTMENT IS SET</font></font></center></h1>
          <%
        }
        catch(Exception e)
        {
            out.println("INSERTION UNSUCCESSFULL");
        }
  %>
          <form action="appoint.jsp" method="post">
  <center><button class="btn success">VIEW APPOINTMENT DETAILS</button></center>
          </form>
    </body>
</html>
